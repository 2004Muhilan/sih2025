# model/new_model/predict_assembly_functions.py
"""
Split assembly file into individual functions and predict each one
Handles multiple functions in a single .s file
"""

import re
import sys
from pathlib import Path
import torch
import torch.nn.functional as F
import numpy as np
import pickle
import json
from collections import defaultdict

sys.path.append('../../dataset_generator/new_dataset_generator/scripts_features')
from extract_features import AssemblyFeatureExtractor
from hybrid_model import HybridCryptoClassifier

CLASS_NAMES = [
    'AES', 'BASE64', 'DES', 'ECC', 'HMAC', 'MD5', 
    'NON_CRYPTO', 'PRNG', 'RC4', 'RSA', 'SHA1', 'SHA256', 'XOR_CIPHER'
]

class EnhancedFunctionSplitter:
    """Split assembly files with multiple syntax support"""
    
    @staticmethod
    def split_assembly_file(asm_path):
        """
        Split assembly file into individual functions
        Supports multiple assembly syntax styles
        
        Returns:
            List of dicts with function name and assembly code
        """
        with open(asm_path, 'r', errors='ignore') as f:
            content = f.read()
        
        # Try different splitting strategies
        functions = []
        
        # Strategy 0: objdump-style (address <function_name>:)
        functions = EnhancedFunctionSplitter._split_objdump_style(content)
        
        if functions:
            return functions
        
        # Strategy 1: GCC-style with directives (most reliable)
        functions = EnhancedFunctionSplitter._split_gcc_style(content)
        
        if functions:
            return functions
        
        # Strategy 2: Simple label-based splitting
        functions = EnhancedFunctionSplitter._split_label_style(content)
        
        if functions:
            return functions
        
        # Strategy 3: Comment-based sections (fallback)
        functions = EnhancedFunctionSplitter._split_comment_style(content)
        
        return functions
    
    @staticmethod
    def _split_objdump_style(content):
        """
        Split objdump-style disassembly
        Format: 00000000 <function_name>:
        """
        functions = []
        lines = content.split('\n')
        current_function = None
        current_lines = []
        
        # Pattern for objdump function headers: address <name>:
        func_pattern = re.compile(r'^([0-9a-f]+)\s+<(.+?)>:\s*$')
        
        for line in lines:
            stripped = line.strip()
            
            # Check for function header
            match = func_pattern.match(stripped)
            if match:
                # Save previous function
                if current_function and current_lines:
                    functions.append({
                        'name': current_function,
                        'code': '\n'.join(current_lines),
                        'line_count': len(current_lines)
                    })
                
                # Start new function
                current_function = match.group(2)
                current_lines = [line]
            elif current_function:
                # Add line to current function
                current_lines.append(line)
        
        # Save last function
        if current_function and current_lines:
            functions.append({
                'name': current_function,
                'code': '\n'.join(current_lines),
                'line_count': len(current_lines)
            })
        
        return functions
    
    @staticmethod
    def _split_gcc_style(content):
        """Split GCC-style assembly with .global/.type/.size directives"""
        functions = []
        current_function = None
        current_lines = []
        in_function = False
        
        lines = content.split('\n')
        i = 0
        
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()
            
            # Detect function start via .global/.globl
            if '.global' in stripped or '.globl' in stripped:
                func_match = re.search(r'\.(global|globl)\s+(\w+)', stripped)
                if func_match:
                    # Save previous function
                    if current_function and current_lines:
                        functions.append({
                            'name': current_function,
                            'code': '\n'.join(current_lines),
                            'line_count': len(current_lines)
                        })
                    
                    current_function = func_match.group(2)
                    current_lines = [line]
                    in_function = True
                    i += 1
                    continue
            
            # Detect function label (function_name:)
            func_label_match = re.match(r'^(\w+):$', stripped)
            if func_label_match and not stripped.startswith('.'):
                func_name = func_label_match.group(1)
                
                # Check if this is a NEW function (not the current one's label)
                if func_name != current_function and current_function is not None:
                    # This is a new function without .global - save previous and start new
                    if current_lines:
                        functions.append({
                            'name': current_function,
                            'code': '\n'.join(current_lines),
                            'line_count': len(current_lines)
                        })
                    
                    current_function = func_name
                    current_lines = [line]
                    in_function = True
                    i += 1
                    continue
                elif func_name == current_function:
                    # This is the label for the current .global function
                    current_lines.append(line)
                    i += 1
                    continue
                else:
                    # No current function, check if this could be a function start
                    # Look for .type directive before this label
                    look_back_start = max(0, i - 5)
                    look_back = '\n'.join(lines[look_back_start:i])
                    
                    if '.type' in look_back and func_name in look_back:
                        # Save previous function if any
                        if current_function and current_lines:
                            functions.append({
                                'name': current_function,
                                'code': '\n'.join(current_lines),
                                'line_count': len(current_lines)
                            })
                        
                        # Start new function
                        current_function = func_name
                        current_lines = [line]
                        in_function = True
                        i += 1
                        continue
            
            # Detect function end via .size
            if stripped.startswith('.size') and current_function:
                # Check if this .size is for the current function
                if current_function in stripped:
                    current_lines.append(line)
                    functions.append({
                        'name': current_function,
                        'code': '\n'.join(current_lines),
                        'line_count': len(current_lines)
                    })
                    current_function = None
                    current_lines = []
                    in_function = False
                    i += 1
                    continue
            
            # Add line to current function
            if in_function or current_function:
                current_lines.append(line)
            
            i += 1
        
        # Save last function if exists
        if current_function and current_lines:
            functions.append({
                'name': current_function,
                'code': '\n'.join(current_lines),
                'line_count': len(current_lines)
            })
        
        return functions
    
    @staticmethod
    def _split_label_style(content):
        """
        Split simple label-based assembly
        Detects functions by:
        1. Label followed by colon (function_name:)
        2. Code until next label or section directive
        3. Heuristics to distinguish functions from local labels
        """
        functions = []
        lines = content.split('\n')
        
        current_function = None
        current_lines = []
        i = 0
        
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()
            
            # Skip empty lines and pure comments at top level
            if not stripped or stripped.startswith(';'):
                if current_function:
                    current_lines.append(line)
                i += 1
                continue
            
            # Check for section directives
            if stripped.startswith('.'):
                # Section change - save current function
                if current_function and current_lines:
                    functions.append({
                        'name': current_function,
                        'code': '\n'.join(current_lines),
                        'line_count': len(current_lines)
                    })
                    current_function = None
                    current_lines = []
                i += 1
                continue
            
            # Check for label (function_name:)
            label_match = re.match(r'^(\w+):\s*(?:;.*)?$', stripped)
            if label_match:
                label_name = label_match.group(1)
                
                # Heuristic: Is this a function or local label?
                is_likely_function = False
                
                # Strong indicators: name patterns (check first)
                if (label_name.startswith('_') or 
                    label_name[0].isupper() or
                    any(keyword in label_name.lower() for keyword in 
                        ['init', 'start', 'main', 'exit', 'setup', 'cleanup',
                         'aes', 'sha', 'rsa', 'des', 'rc4', 'md5', 'ecc',
                         'encrypt', 'decrypt', 'hash', 'sign', 'verify',
                         'rng', 'generate', 'random', 'prng',
                         'cipher', 'key', 'round', 'loop', 'done'])):
                    is_likely_function = True
                
                # If name doesn't suggest function, check code characteristics
                if not is_likely_function:
                    # Check next few lines for function prologue
                    lookahead = 10
                    code_lines = 0
                    for j in range(i + 1, min(i + lookahead + 1, len(lines))):
                        next_line = lines[j].strip()
                        if not next_line or next_line.startswith(';'):
                            continue
                        
                        next_upper = next_line.upper()
                        
                        # Strong function prologue indicators
                        if any(instr in next_upper for instr in ['PUSH', 'STM', 'STMFD', 'ENTER']):
                            is_likely_function = True
                            break
                        
                        # Stack pointer manipulation
                        if re.search(r'SUB\s+SP|ADD\s+SP|MOV\s+FP', next_upper):
                            is_likely_function = True
                            break
                        
                        # Count actual code lines
                        if not next_line.startswith('.'):
                            code_lines += 1
                            
                            # If we see multiple code lines, likely a function
                            if code_lines >= 3:
                                is_likely_function = True
                                break
                        
                        # Hit another label - this was probably a local label
                        if re.match(r'^\w+:', next_line) and j != i:
                            break
                
                if is_likely_function:
                    # Save previous function
                    if current_function and current_lines:
                        functions.append({
                            'name': current_function,
                            'code': '\n'.join(current_lines),
                            'line_count': len(current_lines)
                        })
                    
                    # Start new function
                    current_function = label_name
                    current_lines = [line]
                else:
                    # Local label - add to current function
                    if current_function:
                        current_lines.append(line)
                
                i += 1
                continue
            
            # Regular code line
            if current_function:
                current_lines.append(line)
            
            i += 1
        
        # Save last function
        if current_function and current_lines:
            functions.append({
                'name': current_function,
                'code': '\n'.join(current_lines),
                'line_count': len(current_lines)
            })
        
        return functions
    
    @staticmethod
    def _split_comment_style(content):
        """
        Split by comment markers that indicate sections
        Looks for patterns like:
        ; -------------------------------
        ; Function Name
        ; -------------------------------
        """
        functions = []
        lines = content.split('\n')
        
        current_function = None
        current_lines = []
        
        # Pattern to detect section headers in comments
        section_pattern = re.compile(r';+\s*[-=]+\s*$')
        
        i = 0
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()
            
            # Check if this is a section divider
            if section_pattern.match(stripped):
                # Look for function name in next line
                if i + 1 < len(lines):
                    next_line = lines[i + 1].strip()
                    # Extract function name from comment
                    name_match = re.match(r';+\s*(.+?)(?:\s+Routine|\s+Function)?$', next_line)
                    
                    if name_match:
                        func_name = name_match.group(1).strip()
                        # Clean up the name
                        func_name = re.sub(r'\s+', '_', func_name)
                        
                        # Save previous function
                        if current_function and current_lines:
                            functions.append({
                                'name': current_function,
                                'code': '\n'.join(current_lines),
                                'line_count': len(current_lines)
                            })
                        
                        # Start new function
                        current_function = func_name
                        current_lines = [line]
                        i += 1
                        continue
            
            if current_function:
                current_lines.append(line)
            
            i += 1
        
        # Save last function
        if current_function and current_lines:
            functions.append({
                'name': current_function,
                'code': '\n'.join(current_lines),
                'line_count': len(current_lines)
            })
        
        return functions


class MultiFunctionPredictor:
    """Predict crypto primitives for each function in an assembly file"""
    
    def __init__(self, model_path, scaler_path, feature_cols_path, device='cpu'):
        self.device = torch.device(device)
        
        # Load model
        print("Loading model...")
        self.model = HybridCryptoClassifier(
            input_dim=56, 
            num_classes=13, 
            fusion_type='attention'
        )
        
        checkpoint = torch.load(model_path, map_location=self.device, weights_only=False)
        self.model.load_state_dict(checkpoint['model_state_dict'])
        self.model.to(self.device)
        self.model.eval()
        
        # Load scaler
        print("Loading feature scaler...")
        with open(scaler_path, 'rb') as f:
            self.scaler = pickle.load(f)
        
        # Load feature columns
        with open(feature_cols_path, 'r') as f:
            self.feature_cols = json.load(f)
        
        # Initialize feature extractor
        print("Initializing feature extractor...")
        self.feature_extractor = AssemblyFeatureExtractor()
        
        # Function splitter
        self.splitter = EnhancedFunctionSplitter()
        
        print("✅ Pipeline ready!\n")
    
    def predict_function(self, function_code, function_name="unknown"):
        """
        Predict crypto primitive for a single function's assembly code
        
        Args:
            function_code: Assembly code string
            function_name: Name of the function
        
        Returns:
            dict with prediction results
        """
        # Write to temporary file for feature extraction
        import tempfile
        with tempfile.NamedTemporaryFile(mode='w', suffix='.s', delete=False) as tmp:
            tmp.write(function_code)
            tmp_path = tmp.name
        
        try:
            # Extract features
            features_dict = self.feature_extractor.extract_features(tmp_path)
            
            # Order features
            features = np.array([features_dict[col] for col in self.feature_cols])
            
            # Normalize
            features_scaled = self.scaler.transform(features.reshape(1, -1))
            
            # Predict
            features_tensor = torch.FloatTensor(features_scaled).to(self.device)
            
            with torch.no_grad():
                logits = self.model(features_tensor)
                probs = F.softmax(logits, dim=-1)
                
                confidence, pred_idx = torch.max(probs, dim=-1)
                pred_class = CLASS_NAMES[pred_idx.item()]
                
                # Top 3 predictions
                top3_probs, top3_indices = torch.topk(probs, k=3, dim=-1)
                top3 = [
                    (CLASS_NAMES[idx.item()], prob.item())
                    for idx, prob in zip(top3_indices[0], top3_probs[0])
                ]
            
            result = {
                'function_name': function_name,
                'predicted_class': pred_class,
                'confidence': confidence.item(),
                'top3_predictions': top3,
                'num_instructions': features_dict['num_instructions'],
                'xor_count': features_dict['xor_count'],
                'bitwise_freq': features_dict['bitwise_freq']
            }
            
        finally:
            # Clean up temp file
            import os
            os.unlink(tmp_path)
        
        return result
    
    def predict_file(self, asm_file_path, verbose=True):
        """
        Predict crypto primitive for each function in an assembly file
        
        Args:
            asm_file_path: Path to assembly file
            verbose: Print detailed output
        
        Returns:
            List of prediction results (one per function)
        """
        asm_path = Path(asm_file_path)
        
        if not asm_path.exists():
            raise FileNotFoundError(f"Assembly file not found: {asm_file_path}")
        
        if verbose:
            print("="*70)
            print(f"ANALYZING: {asm_path.name}")
            print("="*70)
            print()
        
        # Step 1: Split into functions
        if verbose:
            print("Step 1: Splitting assembly file into functions...")
        
        functions = self.splitter.split_assembly_file(asm_file_path)
        
        if not functions:
            print("❌ No functions found in assembly file!")
            return []
        
        if verbose:
            print(f"  ✅ Found {len(functions)} function(s)")
            for func in functions:
                print(f"     - {func['name']}: {func['line_count']} lines")
            print()
        
        # Step 2: Predict each function
        if verbose:
            print("Step 2: Predicting crypto primitives for each function...")
            print()
        
        results = []
        
        for i, func in enumerate(functions, 1):
            if verbose:
                print(f"[{i}/{len(functions)}] Analyzing {func['name']}...")
            
            try:
                result = self.predict_function(func['code'], func['name'])
                results.append(result)
                
                if verbose:
                    print(f"  Prediction: {result['predicted_class']} ({result['confidence']:.1%} confidence)")
                    print(f"  Instructions: {result['num_instructions']:.0f}, XOR ops: {result['xor_count']:.0f}")
                    print()
            
            except Exception as e:
                if verbose:
                    print(f"  ❌ Error: {str(e)}")
                    print()
                results.append({
                    'function_name': func['name'],
                    'error': str(e)
                })
        
        # Summary
        if verbose:
            print("="*70)
            print("SUMMARY")
            print("="*70)
            print()
            
            # Count predictions by class
            predictions_count = defaultdict(int)
            for r in results:
                if 'predicted_class' in r:
                    predictions_count[r['predicted_class']] += 1
            
            print(f"Total functions analyzed: {len(results)}")
            print("\nPredictions by class:")
            for cls, count in sorted(predictions_count.items(), key=lambda x: -x[1]):
                print(f"  {cls:12s}: {count} function(s)")
            print()
            
            # Detailed results table
            print("Function-level results:")
            print("-"*70)
            print(f"{'Function':<30} {'Predicted':<12} {'Confidence':>10} {'Instructions':>12}")
            print("-"*70)
            for r in results:
                if 'predicted_class' in r:
                    print(f"{r['function_name']:<30} {r['predicted_class']:<12} "
                          f"{r['confidence']:>9.1%} {r['num_instructions']:>12.0f}")
            print("="*70)
            print()
        
        return results
    
    def save_results(self, results, output_path):
        """Save results to JSON"""
        with open(output_path, 'w') as f:
            json.dump(results, f, indent=2)
        print(f"💾 Results saved to: {output_path}")


def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='Predict crypto primitives per function in assembly file',
        formatter_class=argparse.RawDescriptionHelpFormatter
    )
    
    parser.add_argument('file', help='Assembly file to analyze')
    parser.add_argument('--model', default='results_optimized/best_model.pth',
                       help='Path to trained model')
    parser.add_argument('--scaler', default='preprocessing/scaler.pkl',
                       help='Path to feature scaler')
    parser.add_argument('--features', default='preprocessing/feature_columns.json',
                       help='Path to feature columns')
    parser.add_argument('--output', help='Save results to JSON file')
    parser.add_argument('--quiet', action='store_true', help='Minimal output')
    
    args = parser.parse_args()
    
    # Initialize predictor
    predictor = MultiFunctionPredictor(
        model_path=args.model,
        scaler_path=args.scaler,
        feature_cols_path=args.features
    )
    
    # Predict
    results = predictor.predict_file(args.file, verbose=not args.quiet)
    
    # Save if requested
    if args.output:
        predictor.save_results(results, args.output)


if __name__ == "__main__":
    main()