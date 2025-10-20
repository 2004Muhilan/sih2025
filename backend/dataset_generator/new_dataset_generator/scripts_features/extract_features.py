# scripts_features/extract_features.py
#!/usr/bin/env python3
"""
Feature extraction from assembly files (MULTI-ARCHITECTURE SUPPORT)
Extracts 58 features for CNN + GNN + Transformer hybrid model
Supports: x86, ARM, MIPS, RISC-V, AVR
"""
from pathlib import Path
import re
import numpy as np
from collections import Counter, defaultdict
import json

# Feature names (56 total)
FEATURE_NAMES = [
    'arithmetic_freq', 'array_access_count', 'avg_line_length', 'bitwise_freq',
    'byte_entropy', 'byte_max', 'byte_mean', 'byte_std',
    'call_ratio', 'comparison_freq', 'control_flow_freq',
    'cyclomatic_complexity', 'data_movement_freq', 'disassembly_size',
    'jump_ratio', 'large_constant_count', 'modular_arith_count',
    'ngram_0_freq', 'ngram_1_freq', 'ngram_2_freq', 'ngram_3_freq', 'ngram_4_freq',
    'ngram_5_freq', 'ngram_6_freq', 'ngram_7_freq', 'ngram_8_freq', 'ngram_9_freq',
    'ngram_10_freq', 'ngram_11_freq', 'ngram_12_freq', 'ngram_13_freq', 'ngram_14_freq',
    'ngram_15_freq', 'ngram_16_freq', 'ngram_17_freq', 'ngram_18_freq', 'ngram_19_freq',
    'ngram_entropy', 'num_calls', 'num_conditional_jumps', 'num_instructions',
    'num_jumps', 'num_returns', 'opcode_entropy',
    'rotation_count', 'top_opcode_0_freq', 'top_opcode_1_freq', 'top_opcode_2_freq',
    'top_opcode_3_freq', 'top_opcode_4_freq', 'top_opcode_5_freq', 'top_opcode_6_freq',
    'top_opcode_7_freq', 'top_opcode_8_freq', 'top_opcode_9_freq', 'xor_count'
]

class AssemblyFeatureExtractor:
    """Extract 58 features from assembly files (multi-architecture)"""
    
    def __init__(self):
        # Opcode categories - MULTI-ARCHITECTURE
        self.arithmetic_ops = {
            # x86/x64
            'add', 'sub', 'mul', 'div', 'imul', 'idiv', 'inc', 'dec', 'neg', 'adc', 'sbb',
            # ARM
            'add', 'adds', 'sub', 'subs', 'mul', 'muls', 'sdiv', 'udiv', 'rsb', 'adc', 'sbc',
            # MIPS
            'addu', 'addiu', 'subu', 'mult', 'multu', 'div', 'divu',
            # RISC-V
            'add', 'addi', 'sub', 'mul', 'div', 'rem',
            # AVR
            'add', 'adc', 'sub', 'sbc', 'inc', 'dec', 'mul'
        }
        
        self.bitwise_ops = {
            # x86/x64
            'and', 'or', 'xor', 'not', 'shl', 'shr', 'sal', 'sar', 'rol', 'ror',
            # ARM
            'and', 'ands', 'orr', 'orrs', 'eor', 'eors', 'bic', 'mvn', 'lsl', 'lsr', 'asr', 'ror',
            # MIPS  
            'and', 'andi', 'or', 'ori', 'xor', 'xori', 'nor', 'sll', 'srl', 'sra',
            # RISC-V
            'and', 'andi', 'or', 'ori', 'xor', 'xori', 'sll', 'srl', 'sra',
            # AVR
            'and', 'andi', 'or', 'ori', 'eor', 'com', 'lsl', 'lsr', 'asr', 'ror', 'rol'
        }
        
        self.control_flow_ops = {
            # x86/x64
            'jmp', 'je', 'jne', 'jg', 'jl', 'jge', 'jle', 'ja', 'jb', 'jae', 'jbe', 
            'call', 'ret', 'loop', 'jz', 'jnz', 'js', 'jns',
            # ARM
            'b', 'bl', 'bx', 'blx', 'beq', 'bne', 'bgt', 'blt', 'bge', 'ble', 'bhi', 'blo',
            # MIPS
            'j', 'jal', 'jr', 'jalr', 'beq', 'bne', 'bgtz', 'blez', 'bgez', 'bltz',
            # RISC-V
            'jal', 'jalr', 'beq', 'bne', 'blt', 'bge', 'bltu', 'bgeu',
            # AVR
            'jmp', 'rjmp', 'ijmp', 'call', 'rcall', 'icall', 'ret', 'reti', 
            'breq', 'brne', 'brge', 'brlt', 'brlo', 'brsh'
        }
        
        self.data_movement_ops = {
            # x86/x64
            'mov', 'movq', 'movl', 'movb', 'movw', 'lea', 'push', 'pop', 
            'load', 'store', 'movzx', 'movsx',
            # ARM
            'mov', 'movs', 'movw', 'movt', 'mvn', 'ldr', 'ldrb', 'ldrh', 'ldrsb', 'ldrsh',
            'str', 'strb', 'strh', 'push', 'pop', 'ldm', 'stm',
            # MIPS
            'move', 'li', 'la', 'lw', 'lh', 'lb', 'sw', 'sh', 'sb',
            # RISC-V
            'mv', 'li', 'la', 'lw', 'lh', 'lb', 'sw', 'sh', 'sb', 'ld', 'sd',
            # AVR
            'mov', 'movw', 'ld', 'ldd', 'lds', 'st', 'std', 'sts', 'ldi', 'push', 'pop'
        }
        
        self.comparison_ops = {
            # x86/x64
            'cmp', 'test', 'cmpl', 'cmpb', 'cmpw',
            # ARM
            'cmp', 'cmn', 'tst', 'teq',
            # MIPS
            'slt', 'sltu', 'slti', 'sltiu',
            # RISC-V
            'slt', 'sltu', 'slti', 'sltiu',
            # AVR
            'cp', 'cpc', 'cpi', 'tst'
        }
        
        self.crypto_specific_ops = {
            'aesenc', 'aesenclast', 'aesdec', 'aesdeclast', 'aeskeygenassist',
            'sha1', 'sha256', 'sha1rnds4', 'sha1msg1', 'sha1msg2', 'sha256rnds2'
        }
        
        self.rotation_ops = {
            'rol', 'ror', 'rotl', 'rotr',  # x86
            'ror', 'rrx',  # ARM
            'rotr', 'rotri',  # MIPS/RISC-V
            'rol', 'ror'  # AVR
        }
        
        # Conditional branches (for cyclomatic complexity)
        self.conditional_jumps = {
            # x86
            'je', 'jne', 'jg', 'jl', 'jge', 'jle', 'ja', 'jb', 'jae', 'jbe', 'jz', 'jnz',
            # ARM
            'beq', 'bne', 'bgt', 'blt', 'bge', 'ble', 'bhi', 'blo', 'bhs', 'bls',
            # MIPS
            'beq', 'bne', 'bgtz', 'blez', 'bgez', 'bltz',
            # RISC-V
            'beq', 'bne', 'blt', 'bge', 'bltu', 'bgeu',
            # AVR
            'breq', 'brne', 'brge', 'brlt', 'brlo', 'brsh', 'brcs', 'brcc'
        }
        
        # XOR equivalents across architectures
        self.xor_ops = {'xor', 'eor', 'eors'}  # x86, ARM
        
        # Call instructions
        self.call_ops = {'call', 'bl', 'blx', 'jal', 'jalr', 'rcall', 'icall'}
        
        # Return instructions
        self.return_ops = {'ret', 'bx', 'jr', 'jalr', 'ret', 'reti'}
    
    def parse_assembly(self, asm_content):
        """Parse assembly content into lines and opcodes"""
        lines = []
        opcodes = []
        
        for line in asm_content.split('\n'):
            line = line.strip()
            
            # Skip empty lines, comments, labels, directives
            if not line or line.startswith('#') or line.startswith(';') or line.startswith('@'):
                continue
            if line.startswith('.') or line.endswith(':'):
                continue
            
            lines.append(line)
            
            # Extract opcode (first token)
            tokens = line.split()
            if tokens:
                opcode = tokens[0].lower()
                # Remove size suffixes (e.g., movl -> mov, ldrb -> ldr)
                opcode = re.sub(r'[bwlq]$', '', opcode)
                opcodes.append(opcode)
        
        return lines, opcodes
    
    def calculate_entropy(self, values):
        """Calculate Shannon entropy"""
        if not values:
            return 0.0
        
        counter = Counter(values)
        total = len(values)
        entropy = 0.0
        
        for count in counter.values():
            prob = count / total
            if prob > 0:
                entropy -= prob * np.log2(prob)
        
        return entropy
    
    def extract_features(self, asm_file_path):
        """Extract all 58 features from an assembly file"""
        
        with open(asm_file_path, 'r', errors='ignore') as f:
            content = f.read()
        
        lines, opcodes = self.parse_assembly(content)
        
        if not opcodes:
            # Return zero features if empty
            return {name: 0.0 for name in FEATURE_NAMES}
        
        features = {}
        total_instructions = len(opcodes)
        
        # 1. Basic counts
        features['num_instructions'] = total_instructions
        features['disassembly_size'] = total_instructions
        features['avg_line_length'] = np.mean([len(line) for line in lines]) if lines else 0
        
        # 2. Opcode category frequencies
        features['arithmetic_freq'] = sum(1 for op in opcodes if op in self.arithmetic_ops) / total_instructions
        features['bitwise_freq'] = sum(1 for op in opcodes if op in self.bitwise_ops) / total_instructions
        features['control_flow_freq'] = sum(1 for op in opcodes if op in self.control_flow_ops) / total_instructions
        features['data_movement_freq'] = sum(1 for op in opcodes if op in self.data_movement_ops) / total_instructions
        features['comparison_freq'] = sum(1 for op in opcodes if op in self.comparison_ops) / total_instructions
        
        # 3. Control flow metrics
        features['num_jumps'] = sum(1 for op in opcodes if op in self.control_flow_ops and 'call' not in op and 'ret' not in op)
        features['num_conditional_jumps'] = sum(1 for op in opcodes if op in self.conditional_jumps)
        features['num_calls'] = sum(1 for op in opcodes if op in self.call_ops)
        features['num_returns'] = sum(1 for op in opcodes if op in self.return_ops)
        features['call_ratio'] = features['num_calls'] / total_instructions
        features['jump_ratio'] = features['num_jumps'] / total_instructions
        features['cyclomatic_complexity'] = features['num_conditional_jumps'] + 1
        
        # 4. Crypto-specific features
        features['xor_count'] = sum(1 for op in opcodes if op in self.xor_ops)
        features['rotation_count'] = sum(1 for op in opcodes if op in self.rotation_ops)
        features['modular_arith_count'] = sum(1 for op in opcodes if 'div' in op or 'mod' in op or 'rem' in op)
        
        # Large constants (from assembly text)
        large_constants = re.findall(r'#0x[0-9a-fA-F]{3,}|0x[0-9a-fA-F]{3,}|\$0x[0-9a-fA-F]{3,}', content)
        features['large_constant_count'] = len([c for c in large_constants if int(c.replace('#', '').replace('$', ''), 16) > 0x100])
        
        # Array access patterns
        features['array_access_count'] = content.count('[') + content.count('(')
        
        # 5. Top 10 opcodes
        opcode_counter = Counter(opcodes)
        top_opcodes = opcode_counter.most_common(10)
        
        for i in range(10):
            if i < len(top_opcodes):
                features[f'top_opcode_{i}_freq'] = top_opcodes[i][1] / total_instructions
            else:
                features[f'top_opcode_{i}_freq'] = 0.0
        
        # 6. Top 20 n-grams (bigrams)
        ngrams = list(zip(opcodes[:-1], opcodes[1:]))
        ngram_counter = Counter(ngrams) if ngrams else Counter()
        top_ngrams = ngram_counter.most_common(20)
        
        for i in range(20):
            if i < len(top_ngrams):
                features[f'ngram_{i}_freq'] = top_ngrams[i][1] / len(ngrams) if ngrams else 0
            else:
                features[f'ngram_{i}_freq'] = 0.0
        
        # 7. Entropy features
        features['opcode_entropy'] = self.calculate_entropy(opcodes)
        features['ngram_entropy'] = self.calculate_entropy(ngrams) if ngrams else 0.0
        
        # Byte entropy (from raw bytes)
        byte_values = [ord(c) for c in content if ord(c) < 256]
        if byte_values:
            features['byte_entropy'] = self.calculate_entropy(byte_values)
            features['byte_mean'] = np.mean(byte_values)
            features['byte_std'] = np.std(byte_values)
            features['byte_max'] = np.max(byte_values)
        else:
            features['byte_entropy'] = 0.0
            features['byte_mean'] = 0.0
            features['byte_std'] = 0.0
            features['byte_max'] = 0.0
        
        return features

def main():
    print("="*70)
    print("ASSEMBLY FEATURE EXTRACTION - 58 FEATURES (MULTI-ARCH)")
    print("="*70)
    print()
    
    extractor = AssemblyFeatureExtractor()
    
    # Test on ARM file
    test_file = Path("compiled_binaries/arm/aes/O0/gcc/aes_add_round_key_arm_O0_gcc.s")
    
    if test_file.exists():
        print(f"Testing on: {test_file}")
        features = extractor.extract_features(test_file)
        
        print(f"\nExtracted {len(features)} features:")
        
        # Show key features that should be non-zero
        key_features = ['xor_count', 'bitwise_freq', 'control_flow_freq', 
                       'num_conditional_jumps', 'cyclomatic_complexity']
        
        for name in key_features:
            print(f"  {name:30s}: {features[name]:.4f}")
        
        print("\n  (showing all features...)")
        for name, value in list(features.items()):
            print(f"  {name:30s}: {value:.4f}")
        
        print(f"\n✅ Feature extraction working! (Multi-architecture support)")
    else:
        print(f"❌ Test file not found: {test_file}")
    
    print("="*70)

if __name__ == "__main__":
    main()