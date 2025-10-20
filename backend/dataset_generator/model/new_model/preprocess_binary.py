"""
Preprocess black-box firmware binaries for crypto detection
Handles:
1. Architecture detection
2. Binary disassembly (3-tier: objdump → Ghidra → Capstone)
3. Function extraction
"""
import os
import subprocess
import tempfile
import shutil
from pathlib import Path
import re

# Add Capstone import
try:
    from capstone import *
    CAPSTONE_AVAILABLE = True
except ImportError:
    CAPSTONE_AVAILABLE = False
    print("⚠️  Capstone not available")


class BinaryPreprocessor:
    """Preprocess black-box binaries for analysis"""
    
    def __init__(self):
        self.supported_archs = {
            'x86': 'objdump',
            'x86-64': 'objdump',
            'arm': 'arm-linux-gnueabi-objdump',
            'arm64': 'aarch64-linux-gnu-objdump',
            'mips': 'mips-linux-gnu-objdump',
            'mipsel': 'mipsel-linux-gnu-objdump',
            'riscv64': 'riscv64-linux-gnu-objdump',
            'avr': 'avr-objdump'
        }
        
        # Capstone architecture mapping
        self.capstone_archs = {
            'x86': (CS_ARCH_X86, CS_MODE_32),
            'x86-64': (CS_ARCH_X86, CS_MODE_64),
            'arm': (CS_ARCH_ARM, CS_MODE_ARM),
            'arm64': (CS_ARCH_ARM64, CS_MODE_ARM),
            'mips': (CS_ARCH_MIPS, CS_MODE_MIPS32 | CS_MODE_BIG_ENDIAN),
            'mipsel': (CS_ARCH_MIPS, CS_MODE_MIPS32 | CS_MODE_LITTLE_ENDIAN),
            'riscv64': (CS_ARCH_RISCV, CS_MODE_RISCV64),
        }
        
        # Check Ghidra availability
        self.ghidra_path = self._find_ghidra()
        
        # Track which method was used
        self.last_method_used = None
    
    def _find_ghidra(self):
        """Try to find Ghidra installation"""
        possible_paths = [
            os.path.expanduser('~/ghidra'),
            '/opt/ghidra',
            '/usr/local/ghidra',
            'C:\\ghidra',
            'C:\\Program Files\\ghidra',
            os.path.expanduser('~/ghidra_10.4_PUBLIC'),
            '/opt/ghidra_10.4_PUBLIC'
        ]
        
        for path in possible_paths:
            if os.path.exists(path):
                # Look for analyzeHeadless script
                for root, dirs, files in os.walk(path):
                    if 'analyzeHeadless' in files or 'analyzeHeadless.bat' in files:
                        print(f"✅ Found Ghidra at: {root}")
                        return root
        return None
    
    def detect_architecture(self, binary_path):
        """
        Detect binary architecture using multiple methods
        
        Args:
            binary_path: Path to binary file
        
        Returns:
            Architecture string (e.g., 'x86-64', 'arm', 'mips')
        """
        # Method 1: Use 'file' command
        arch = self._detect_with_file(binary_path)
        if arch != 'unknown':
            return arch
        
        # Method 2: Use 'readelf' for ELF binaries
        arch = self._detect_with_readelf(binary_path)
        if arch != 'unknown':
            return arch
        
        # Method 3: Parse ELF header manually
        arch = self._detect_from_elf_header(binary_path)
        if arch != 'unknown':
            return arch
        
        print(f"⚠️  Could not detect architecture for: {binary_path}")
        return 'unknown'
    
    def _detect_with_file(self, binary_path):
        """Detect using 'file' command"""
        try:
            result = subprocess.run(
                ['file', binary_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=10
            )
            
            output = result.stdout.decode('utf-8', errors='ignore').lower()
            
            # Map file output to architecture
            if 'x86-64' in output or 'x86_64' in output or 'amd64' in output:
                return 'x86-64'
            elif 'x86' in output or 'i386' in output or 'i686' in output or '80386' in output:
                return 'x86'
            elif 'aarch64' in output or 'arm64' in output:
                return 'arm64'
            elif 'arm' in output:
                return 'arm'
            elif 'mips' in output:
                if 'lsb' in output or 'little' in output:
                    return 'mipsel'
                return 'mips'
            elif 'riscv' in output or 'risc-v' in output:
                return 'riscv64'
            elif 'avr' in output:
                return 'avr'
            
        except Exception as e:
            pass
        
        return 'unknown'
    
    def _detect_with_readelf(self, binary_path):
        """Detect using 'readelf' for ELF binaries"""
        try:
            result = subprocess.run(
                ['readelf', '-h', binary_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=10
            )
            
            if result.returncode != 0:
                return 'unknown'
            
            output = result.stdout.decode('utf-8', errors='ignore').lower()
            
            # Parse machine type from ELF header
            if 'x86-64' in output or 'amd64' in output:
                return 'x86-64'
            elif 'intel 80386' in output or 'i386' in output:
                return 'x86'
            elif 'aarch64' in output:
                return 'arm64'
            elif 'arm' in output:
                return 'arm'
            elif 'mips' in output:
                if 'lsb' in output:
                    return 'mipsel'
                return 'mips'
            elif 'risc-v' in output:
                return 'riscv64'
            elif 'atmel avr' in output:
                return 'avr'
            
        except Exception:
            pass
        
        return 'unknown'
    
    def _detect_from_elf_header(self, binary_path):
        """Parse ELF header manually to detect architecture"""
        try:
            with open(binary_path, 'rb') as f:
                # Read ELF magic and header
                magic = f.read(4)
                
                # Check if it's an ELF file
                if magic != b'\x7fELF':
                    return 'unknown'
                
                # Read ELF class (32/64 bit)
                elf_class = f.read(1)[0]
                
                # Read endianness
                endian = f.read(1)[0]
                
                # Skip to machine type (offset 18)
                f.seek(18)
                machine_bytes = f.read(2)
                
                # Parse machine type based on endianness
                if endian == 1:  # Little endian
                    machine = int.from_bytes(machine_bytes, 'little')
                else:  # Big endian
                    machine = int.from_bytes(machine_bytes, 'big')
                
                # ELF machine type codes
                machine_map = {
                    0x03: 'x86',           # EM_386
                    0x3E: 'x86-64',        # EM_X86_64
                    0x28: 'arm',           # EM_ARM
                    0xB7: 'arm64',         # EM_AARCH64
                    0x08: 'mips',          # EM_MIPS
                    0xF3: 'riscv64',       # EM_RISCV
                    0x53: 'avr',           # EM_AVR
                }
                
                arch = machine_map.get(machine, 'unknown')
                
                # For MIPS, check endianness for mipsel
                if arch == 'mips' and endian == 1:
                    arch = 'mipsel'
                
                return arch
                
        except Exception as e:
            pass
        
        return 'unknown'
    
    def _is_valid_disassembly(self, output):
        """
        Validate that output contains actual assembly instructions
        Not just error messages
        """
        if not output or len(output) < 100:
            return False
        
        # Check for common error patterns
        error_patterns = [
            'file format not recognized',
            'cannot disassemble',
            'no symbols',
            'invalid option',
            'not a valid',
            'failed to',
            'error:',
            'warning: file format is ambiguous'
        ]
        
        output_lower = output.lower()
        for pattern in error_patterns:
            if pattern in output_lower:
                return False
        
        # Check for valid assembly patterns
        # Look for hex addresses followed by instruction bytes
        valid_patterns = [
            r'[\da-f]+:\s+[\da-f\s]+\s+\w+',  # hex_addr: hex_bytes  instruction
            r'<[\w\._]+>:',                    # <function_name>:
            r'\s+(mov|add|sub|push|pop|ldr|str|jmp|call|bl|beq)',  # common instructions
        ]
        
        for pattern in valid_patterns:
            if re.search(pattern, output, re.IGNORECASE):
                return True
        
        return False
    
    def disassemble_with_objdump(self, binary_path, arch):
        """Tier 1: Try objdump first"""
        print("  Trying objdump...")
        
        objdump_cmd = self.supported_archs.get(arch, 'objdump')
        
        # Try architecture-specific objdump first
        try:
            result = subprocess.run(
                [objdump_cmd, '-d', binary_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=60
            )
            
            if result.returncode == 0:
                output = result.stdout.decode('utf-8', errors='ignore')
                if self._is_valid_disassembly(output):
                    print(f"  ✅ Disassembled with {objdump_cmd}")
                    self.last_method_used = 'objdump'
                    return output
                else:
                    print(f"  ❌ {objdump_cmd} output invalid or contains errors")
            
        except FileNotFoundError:
            print(f"  ⚠️  {objdump_cmd} not found")
        except Exception as e:
            print(f"  ❌ {objdump_cmd} error: {e}")
        
        # Try generic objdump as fallback
        if objdump_cmd != 'objdump':
            try:
                result = subprocess.run(
                    ['objdump', '-d', binary_path],
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    timeout=60
                )
                
                if result.returncode == 0:
                    output = result.stdout.decode('utf-8', errors='ignore')
                    if self._is_valid_disassembly(output):
                        print("  ✅ Disassembled with objdump")
                        self.last_method_used = 'objdump'
                        return output
                    else:
                        print("  ❌ objdump output invalid or contains errors")
                
            except FileNotFoundError:
                print("  ⚠️  objdump not found")
            except Exception as e:
                print(f"  ❌ objdump error: {e}")
        
        return None
    
    def disassemble_with_ghidra(self, binary_path, arch):
        """Tier 2: Try Ghidra if objdump fails"""
        if not self.ghidra_path:
            print("  ⚠️  Ghidra not found, skipping")
            return None
        
        print("  Trying Ghidra...")
        print("  ⚠️  Ghidra support requires custom scripts (not implemented)")
        print("  ⚠️  Falling back to Capstone...")
        
        # TODO: Implement Ghidra disassembly with proper scripts
        # This requires creating a Ghidra script to export disassembly
        # For now, return None to fall through to Capstone
        
        return None
    
    def disassemble_with_capstone(self, binary_path, arch):
        """Tier 3: Use Capstone as last resort"""
        if not CAPSTONE_AVAILABLE:
            print("  ❌ Capstone not available")
            return None
        
        if arch not in self.capstone_archs:
            print(f"  ❌ Capstone doesn't support {arch}")
            return None
        
        print("  Trying Capstone...")
        
        try:
            # Read binary
            with open(binary_path, 'rb') as f:
                code = f.read()
            
            # Initialize Capstone
            cs_arch, cs_mode = self.capstone_archs[arch]
            md = Cs(cs_arch, cs_mode)
            
            # Disassemble
            disasm_output = []
            disasm_output.append(f"Disassembly of {binary_path}:\n")
            disasm_output.append(f"\n<{os.path.basename(binary_path)}>:\n")
            
            instruction_count = 0
            for instr in md.disasm(code, 0x1000):
                # Format similar to objdump: address: bytes    instruction
                bytes_str = ' '.join([f'{b:02x}' for b in instr.bytes])
                disasm_output.append(
                    f"    {instr.address:x}:\t{bytes_str:20s}\t{instr.mnemonic} {instr.op_str}"
                )
                instruction_count += 1
            
            if instruction_count > 0:
                print(f"  ✅ Disassembled with Capstone ({instruction_count} instructions)")
                self.last_method_used = 'Capstone'
                return '\n'.join(disasm_output)
            else:
                print("  ❌ Capstone produced no valid instructions")
            
        except Exception as e:
            print(f"  ❌ Capstone error: {e}")
        
        return None
    
    def disassemble_binary(self, binary_path, arch=None, output_path=None):
        """
        3-Tier disassembly: objdump → Ghidra → Capstone
        
        Args:
            binary_path: Path to binary file
            arch: Architecture (auto-detected if None)
            output_path: Where to save .asm file (temp file if None)
        
        Returns:
            Path to .asm file or None on failure
        """
        # Auto-detect architecture if not provided
        if arch is None or arch == 'unknown':
            arch = self.detect_architecture(binary_path)
            print(f"✅ Detected architecture: {arch}")
        
        if arch == 'unknown':
            print("❌ Cannot disassemble: Unknown architecture")
            return None
        
        # Create output path if not provided
        if output_path is None:
            output_path = binary_path + '.asm'
        
        print(f"\n🔧 3-Tier Disassembly System:")
        print(f"   Tier 1: objdump → Tier 2: Ghidra → Tier 3: Capstone\n")
        
        # 3-Tier System
        disassembly = None
        
        # Tier 1: objdump
        disassembly = self.disassemble_with_objdump(binary_path, arch)
        
        if not disassembly:
            # Tier 2: Ghidra
            disassembly = self.disassemble_with_ghidra(binary_path, arch)
            
            if not disassembly:
                # Tier 3: Capstone
                disassembly = self.disassemble_with_capstone(binary_path, arch)
        
        if disassembly:
            # Save disassembly
            with open(output_path, 'w', encoding='utf-8', errors='ignore') as f:
                f.write(disassembly)
            
            print(f"\n  ✅ Disassembled to: {output_path}")
            print(f"  ✅ Method used: {self.last_method_used}")
            return output_path
        else:
            print("\n❌ All disassembly methods failed")
            self.last_method_used = None
            return None
    
    def extract_functions(self, disassembly_path):
        """
        Extract individual functions from disassembly
        
        Args:
            disassembly_path: Path to .asm file
        
        Returns:
            List of (function_name, function_asm) tuples
        """
        functions = []
        current_function = None
        current_asm = []
        
        try:
            with open(disassembly_path, 'r', encoding='utf-8', errors='ignore') as f:
                for line in f:
                    # Check for function start (e.g., "00000000 <function_name>:")
                    if '<' in line and '>:' in line:
                        # Save previous function
                        if current_function and current_asm:
                            functions.append((current_function, '\n'.join(current_asm)))
                        
                        # Start new function
                        current_function = line.split('<')[1].split('>')[0]
                        current_asm = [line]
                    elif current_function:
                        # Add line to current function
                        current_asm.append(line)
                
                # Save last function
                if current_function and current_asm:
                    functions.append((current_function, '\n'.join(current_asm)))
            
            print(f"✅ Extracted {len(functions)} functions")
            return functions
            
        except Exception as e:
            print(f"❌ Function extraction error: {e}")
            return []
    
    def preprocess(self, binary_path, arch=None):
        """
        Complete preprocessing pipeline
        
        Args:
            binary_path: Path to binary file
            arch: Architecture (auto-detected if None)
        
        Returns:
            {
                'arch': detected architecture,
                'disassembly_path': path to .asm file,
                'functions': list of (name, asm) tuples,
                'method': disassembly method used
            }
        """
        print("\n" + "="*70)
        print("PREPROCESSING BLACK-BOX BINARY (3-Tier System)")
        print("="*70)
        print(f"Binary: {binary_path}")
        
        # Step 1: Detect architecture
        if arch is None:
            arch = self.detect_architecture(binary_path)
        else:
            print(f"✅ Using specified architecture: {arch}")
        
        if arch == 'unknown':
            print("\n❌ Preprocessing failed: Unknown architecture")
            return None
        
        # Step 2: Disassemble (3-tier)
        disasm_path = self.disassemble_binary(binary_path, arch)
        
        if disasm_path is None:
            print("\n❌ Preprocessing failed: Disassembly error")
            return None
        
        # Step 3: Extract functions
        functions = self.extract_functions(disasm_path)
        
        if not functions:
            print("\n⚠️  Warning: No functions found")
            # Still return result - whole file can be analyzed
        
        result = {
            'arch': arch,
            'disassembly_path': disasm_path,
            'functions': functions,
            'binary_path': binary_path,
            'method': self.last_method_used
        }
        
        print(f"\n{'='*70}")
        print("PREPROCESSING COMPLETE")
        print(f"  Architecture: {arch}")
        print(f"  Functions: {len(functions)}")
        print(f"  Method: {self.last_method_used}")
        print(f"{'='*70}\n")
        
        return result


def quick_test():
    """Quick test of preprocessor"""
    import sys
    
    if len(sys.argv) < 2:
        print("Usage: python preprocess_binary.py <binary_file> [architecture]")
        print("\nSupported architectures:")
        print("  x86, x86-64, arm, arm64, mips, mipsel, riscv64, avr")
        print("\nExample:")
        print("  python preprocess_binary.py firmware.bin")
        print("  python preprocess_binary.py firmware.bin arm")
        return
    
    binary_path = sys.argv[1]
    arch = sys.argv[2] if len(sys.argv) > 2 else None
    
    preprocessor = BinaryPreprocessor()
    result = preprocessor.preprocess(binary_path, arch)
    
    if result:
        print("\n✅ Preprocessing successful!")
        print(f"  Disassembly saved to: {result['disassembly_path']}")
        print(f"  Method used: {result['method']}")
        print(f"  Found {len(result['functions'])} functions")
        if result['functions']:
            print(f"\nFirst 5 functions:")
            for i, (name, _) in enumerate(result['functions'][:5]):
                print(f"    {i+1}. {name}")


if __name__ == "__main__":
    quick_test()