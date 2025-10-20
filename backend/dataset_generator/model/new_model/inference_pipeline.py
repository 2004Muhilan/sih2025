#!/usr/bin/env python3
"""
Complete Inference Pipeline for Crypto Detection in Binaries

End-to-end pipeline:
1. Binary preprocessing (disassembly with 3-tier system)
2. Function extraction
3. Per-function crypto primitive prediction
4. Aggregated results and reporting
"""

import sys
import os
from pathlib import Path
import json
import argparse
from collections import defaultdict

# Import our custom modules
sys.path.append(str(Path(__file__).parent))
from preprocess_binary import BinaryPreprocessor
from predict_assembly_functions import MultiFunctionPredictor


class CryptoInferencePipeline:
    """Complete inference pipeline for binary analysis"""
    
    def __init__(self, model_path, scaler_path, feature_cols_path, device='cpu'):
        """
        Initialize the inference pipeline
        
        Args:
            model_path: Path to trained model (.pth)
            scaler_path: Path to feature scaler (.pkl)
            feature_cols_path: Path to feature columns (.json)
            device: 'cpu' or 'cuda'
        """
        print("="*70)
        print("INITIALIZING CRYPTO DETECTION PIPELINE")
        print("="*70)
        
        # Initialize preprocessor (for binary disassembly)
        print("\n[1/2] Initializing binary preprocessor...")
        self.preprocessor = BinaryPreprocessor()
        print("  ✅ Preprocessor ready")
        
        # Initialize predictor (for crypto detection)
        print("\n[2/2] Initializing ML predictor...")
        self.predictor = MultiFunctionPredictor(
            model_path=model_path,
            scaler_path=scaler_path,
            feature_cols_path=feature_cols_path,
            device=device
        )
        
        print("\n" + "="*70)
        print("✅ PIPELINE READY")
        print("="*70 + "\n")
    
    def analyze_binary(self, binary_path, arch=None, output_dir=None, save_json=True):
        """
        Analyze a binary file for crypto primitives
        
        Args:
            binary_path: Path to binary file
            arch: Architecture (auto-detected if None)
            output_dir: Directory to save results (same as binary if None)
            save_json: Save detailed results to JSON
        
        Returns:
            dict with complete analysis results
        """
        binary_path = Path(binary_path)
        
        if not binary_path.exists():
            print(f"❌ Error: Binary file not found: {binary_path}")
            return None
        
        # Create output directory
        if output_dir is None:
            output_dir = binary_path.parent
        else:
            output_dir = Path(output_dir)
            output_dir.mkdir(parents=True, exist_ok=True)
        
        print("\n" + "="*70)
        print("ANALYZING BINARY FOR CRYPTO PRIMITIVES")
        print("="*70)
        print(f"Binary: {binary_path}")
        print(f"Output: {output_dir}")
        print("="*70 + "\n")
        
        # Step 1: Preprocess binary (disassemble)
        print("STEP 1: PREPROCESSING BINARY")
        print("-"*70)
        
        preprocess_result = self.preprocessor.preprocess(str(binary_path), arch)
        
        if preprocess_result is None:
            print("\n❌ Preprocessing failed. Cannot continue.")
            return None
        
        # Step 2: Predict crypto primitives per function
        print("\n" + "="*70)
        print("STEP 2: DETECTING CRYPTO PRIMITIVES")
        print("-"*70 + "\n")
        
        disasm_path = preprocess_result['disassembly_path']
        prediction_results = self.predictor.predict_file(disasm_path, verbose=True)
        
        if not prediction_results:
            print("\n⚠️  No predictions generated")
        
        # Step 3: Aggregate results
        print("\n" + "="*70)
        print("STEP 3: AGGREGATING RESULTS")
        print("-"*70)
        
        aggregated = self._aggregate_results(
            binary_path=binary_path,
            preprocess_result=preprocess_result,
            prediction_results=prediction_results
        )
        
        # Step 4: Generate report
        self._print_summary_report(aggregated)
        
        # Step 5: Save results
        if save_json:
            json_path = output_dir / f"{binary_path.stem}_analysis.json"
            self._save_results(aggregated, json_path)
        
        return aggregated
    
    def _aggregate_results(self, binary_path, preprocess_result, prediction_results):
        """Aggregate all results into a structured format"""
        
        # Count predictions by class
        class_counts = defaultdict(int)
        high_confidence_funcs = []
        low_confidence_funcs = []
        
        for result in prediction_results:
            if 'predicted_class' in result:
                pred_class = result['predicted_class']
                confidence = result['confidence']
                
                class_counts[pred_class] += 1
                
                if confidence >= 0.75:
                    high_confidence_funcs.append(result)
                elif confidence < 0.60:
                    low_confidence_funcs.append(result)
        
        # Determine overall binary classification
        crypto_classes = [cls for cls in class_counts.keys() if cls != 'NON_CRYPTO']
        
        if crypto_classes:
            # Binary contains crypto
            dominant_crypto = max(crypto_classes, key=lambda x: class_counts[x])
            binary_classification = {
                'contains_crypto': True,
                'dominant_algorithm': dominant_crypto,
                'crypto_functions': sum(class_counts[cls] for cls in crypto_classes),
                'non_crypto_functions': class_counts.get('NON_CRYPTO', 0),
                'algorithms_detected': list(crypto_classes)
            }
        else:
            # No crypto detected
            binary_classification = {
                'contains_crypto': False,
                'dominant_algorithm': None,
                'crypto_functions': 0,
                'non_crypto_functions': class_counts.get('NON_CRYPTO', 0),
                'algorithms_detected': []
            }
        
        aggregated = {
            'binary_info': {
                'path': str(binary_path),
                'name': binary_path.name,
                'architecture': preprocess_result['arch'],
                'disassembly_method': preprocess_result['method'],
                'total_functions': len(prediction_results)
            },
            'binary_classification': binary_classification,
            'class_distribution': dict(class_counts),
            'high_confidence_detections': high_confidence_funcs,
            'low_confidence_detections': low_confidence_funcs,
            'all_predictions': prediction_results
        }
        
        return aggregated
    
    def _print_summary_report(self, aggregated):
        """Print a human-readable summary report"""
        print()
        print("="*70)
        print("FINAL REPORT")
        print("="*70)
        
        binary_info = aggregated['binary_info']
        binary_class = aggregated['binary_classification']
        class_dist = aggregated['class_distribution']
        
        print(f"\n📁 Binary: {binary_info['name']}")
        print(f"🏗️  Architecture: {binary_info['architecture']}")
        print(f"🔧 Disassembly: {binary_info['disassembly_method']}")
        print(f"🎯 Functions analyzed: {binary_info['total_functions']}")
        
        print("\n" + "-"*70)
        print("VERDICT")
        print("-"*70)
        
        if binary_class['contains_crypto']:
            print(f"✅ CRYPTO DETECTED")
            print(f"\n  Dominant Algorithm: {binary_class['dominant_algorithm']}")
            print(f"  Crypto Functions: {binary_class['crypto_functions']}")
            print(f"  Non-Crypto Functions: {binary_class['non_crypto_functions']}")
            print(f"\n  All Detected Algorithms:")
            for algo in binary_class['algorithms_detected']:
                count = class_dist[algo]
                print(f"    • {algo}: {count} function(s)")
        else:
            print("❌ NO CRYPTO DETECTED")
            print(f"\n  Non-Crypto Functions: {binary_class['non_crypto_functions']}")
        
        # High confidence detections
        high_conf = aggregated['high_confidence_detections']
        if high_conf:
            print(f"\n" + "-"*70)
            print(f"HIGH CONFIDENCE DETECTIONS ({len(high_conf)} functions)")
            print("-"*70)
            for func in high_conf:
                print(f"  • {func['function_name']:<30} → {func['predicted_class']:<12} ({func['confidence']:.1%})")
        
        # Low confidence warnings
        low_conf = aggregated['low_confidence_detections']
        if low_conf:
            print(f"\n" + "-"*70)
            print(f"⚠️  LOW CONFIDENCE DETECTIONS ({len(low_conf)} functions)")
            print("-"*70)
            print("These functions may require manual review:")
            for func in low_conf[:5]:  # Show top 5
                top3 = func['top3_predictions']
                candidates = ', '.join([f"{cls}({prob:.1%})" for cls, prob in top3])
                print(f"  • {func['function_name']:<30} → {candidates}")
            if len(low_conf) > 5:
                print(f"  ... and {len(low_conf) - 5} more")
        
        print("\n" + "="*70)
        print()
    
    def _save_results(self, aggregated, json_path):
        """Save complete results to JSON"""
        try:
            with open(json_path, 'w') as f:
                json.dump(aggregated, f, indent=2)
            print(f"💾 Full results saved to: {json_path}")
        except Exception as e:
            print(f"⚠️  Could not save JSON: {e}")


def main():
    """Command-line interface"""
    parser = argparse.ArgumentParser(
        description='Detect crypto primitives in binary files',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Analyze a binary (auto-detect architecture)
  python inference_pipeline.py firmware.bin
  
  # Specify architecture
  python inference_pipeline.py firmware.bin --arch arm
  
  # Custom model paths
  python inference_pipeline.py firmware.bin \\
    --model path/to/model.pth \\
    --scaler path/to/scaler.pkl \\
    --features path/to/features.json
  
  # Save results to specific directory
  python inference_pipeline.py firmware.bin --output results/
  
  # Use GPU
  python inference_pipeline.py firmware.bin --device cuda

Supported architectures:
  x86, x86-64, arm, arm64, mips, mipsel, riscv64, avr
        """
    )
    
    # Required arguments
    parser.add_argument('binary', help='Path to binary file to analyze')
    
    # Optional arguments
    parser.add_argument('--arch', default=None,
                       help='Binary architecture (auto-detected if not specified)')
    parser.add_argument('--model', default='results/best_model.pth',
                       help='Path to trained model (default: results/best_model.pth)')
    parser.add_argument('--scaler', default='preprocessing/scaler.pkl',
                       help='Path to feature scaler (default: preprocessing/scaler.pkl)')
    parser.add_argument('--features', default='preprocessing/feature_columns.json',
                       help='Path to feature columns (default: preprocessing/feature_columns.json)')
    parser.add_argument('--output', default=None,
                       help='Output directory for results (default: same as binary)')
    parser.add_argument('--device', default='cpu', choices=['cpu', 'cuda'],
                       help='Device to run model on (default: cpu)')
    parser.add_argument('--no-json', action='store_true',
                       help='Do not save JSON results')
    
    args = parser.parse_args()
    
    # Check if binary exists
    if not Path(args.binary).exists():
        print(f"❌ Error: Binary file not found: {args.binary}")
        sys.exit(1)
    
    # Check if model files exist
    required_files = [
        (args.model, "Model file"),
        (args.scaler, "Scaler file"),
        (args.features, "Feature columns file")
    ]
    
    missing_files = []
    for filepath, name in required_files:
        if not Path(filepath).exists():
            missing_files.append(f"  • {name}: {filepath}")
    
    if missing_files:
        print("❌ Error: Required files not found:")
        print('\n'.join(missing_files))
        print("\nPlease check your model paths or train the model first.")
        sys.exit(1)
    
    try:
        # Initialize pipeline
        pipeline = CryptoInferencePipeline(
            model_path=args.model,
            scaler_path=args.scaler,
            feature_cols_path=args.features,
            device=args.device
        )
        
        # Analyze binary
        results = pipeline.analyze_binary(
            binary_path=args.binary,
            arch=args.arch,
            output_dir=args.output,
            save_json=not args.no_json
        )
        
        if results:
            print("✅ Analysis complete!")
            sys.exit(0)
        else:
            print("❌ Analysis failed!")
            sys.exit(1)
            
    except KeyboardInterrupt:
        print("\n\n⚠️  Analysis interrupted by user")
        sys.exit(130)
    except Exception as e:
        print(f"\n❌ Unexpected error: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()
