#!/usr/bin/env python3
"""
Analyze crypto libraries to find available algorithms
"""
import os
import re
from pathlib import Path

def analyze_mbedtls(library_path):
    """Analyze mbedTLS library structure"""
    print("="*70)
    print("ANALYZING MBEDTLS LIBRARY")
    print("="*70)
    
    library_dir = Path(library_path) / "library"
    include_dir = Path(library_path) / "include" / "mbedtls"
    
    # Target algorithms
    target_algorithms = {
        'aes': ['aes.c', 'aes.h'],
        'des': ['des.c', 'des.h'],
        'md5': ['md5.c', 'md5.h'],
        'sha1': ['sha1.c', 'sha1.h'],
        'sha256': ['sha256.c', 'sha256.h'],
        'rsa': ['rsa.c', 'rsa.h'],
        'ecc': ['ecp.c', 'ecp.h', 'ecdsa.c', 'ecdsa.h'],
        'hmac': ['md.c', 'md.h'],  # HMAC is in message digest
        'base64': ['base64.c', 'base64.h'],
        'prng': ['ctr_drbg.c', 'ctr_drbg.h', 'hmac_drbg.c']  # Deterministic RNG
    }
    
    found_algorithms = {}
    
    for algo, files in target_algorithms.items():
        found_files = []
        for file in files:
            source_path = library_dir / file.replace('.h', '.c')
            header_path = include_dir / file.replace('.c', '.h')
            
            if source_path.exists():
                found_files.append(str(source_path))
            if header_path.exists():
                found_files.append(str(header_path))
        
        if found_files:
            found_algorithms[algo] = found_files
            print(f"\n✓ {algo.upper()}: FOUND")
            for f in found_files:
                print(f"    {f}")
        else:
            print(f"\n✗ {algo.upper()}: NOT FOUND")
    
    # Check for RC4 (often deprecated)
    rc4_path = library_dir / "arc4.c"  # mbedTLS calls it ARC4
    if rc4_path.exists():
        found_algorithms['rc4'] = [str(rc4_path), str(include_dir / "arc4.h")]
        print(f"\n✓ RC4 (ARC4): FOUND")
        print(f"    {rc4_path}")
    else:
        print(f"\n✗ RC4: NOT FOUND (deprecated in newer versions)")
    
    return found_algorithms

def analyze_tinycrypt(library_path):
    """Analyze TinyCrypt library structure"""
    print("\n" + "="*70)
    print("ANALYZING TINYCRYPT LIBRARY")
    print("="*70)
    
    lib_dir = Path(library_path) / "lib"
    include_dir = Path(library_path) / "lib" / "include" / "tinycrypt"
    
    # TinyCrypt has limited algorithms (designed for constrained devices)
    target_algorithms = {
        'aes': ['aes_encrypt.c', 'aes_decrypt.c'],
        'sha256': ['sha256.c'],
        'hmac': ['hmac.c'],
        'ecc': ['ecc.c', 'ecc_dh.c', 'ecc_dsa.c'],
        'prng': ['hmac_prng.c']
    }
    
    found_algorithms = {}
    
    for algo, files in target_algorithms.items():
        found_files = []
        for file in files:
            source_path = lib_dir / "source" / file
            if source_path.exists():
                found_files.append(str(source_path))
        
        if found_files:
            found_algorithms[algo] = found_files
            print(f"\n✓ {algo.upper()}: FOUND")
            for f in found_files:
                print(f"    {f}")
        else:
            print(f"\n✗ {algo.upper()}: NOT FOUND")
    
    return found_algorithms

def list_mbedtls_functions(source_file):
    """Extract function names from source file"""
    functions = []
    
    try:
        with open(source_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            
            # Match function definitions (simplified pattern)
            # Matches: int function_name( or void function_name(
            pattern = r'^\s*(?:int|void|size_t|unsigned|static)\s+(\w+)\s*\('
            
            for line in content.split('\n'):
                match = re.match(pattern, line)
                if match:
                    func_name = match.group(1)
                    # Filter out common non-crypto functions
                    if not func_name.startswith('_') and func_name not in ['main', 'test']:
                        functions.append(func_name)
    
    except Exception as e:
        print(f"Error reading {source_file}: {e}")
    
    return functions

def main():
    # Check if libraries exist
    mbedtls_path = "crypto_libraries/mbedtls"
    tinycrypt_path = "crypto_libraries/tinycrypt"
    
    if not os.path.exists(mbedtls_path):
        print(f"❌ mbedTLS not found at {mbedtls_path}")
        print("   Run: git clone https://github.com/Mbed-TLS/mbedtls.git crypto_libraries/mbedtls")
        return
    
    if not os.path.exists(tinycrypt_path):
        print(f"❌ TinyCrypt not found at {tinycrypt_path}")
        print("   Run: git clone https://github.com/intel/tinycrypt.git crypto_libraries/tinycrypt")
        return
    
    # Analyze libraries
    mbedtls_algos = analyze_mbedtls(mbedtls_path)
    tinycrypt_algos = analyze_tinycrypt(tinycrypt_path)
    
    # Summary
    print("\n" + "="*70)
    print("SUMMARY - ALGORITHM AVAILABILITY")
    print("="*70)
    
    all_algorithms = ['aes', 'des', 'rc4', 'xor_cipher', 'rsa', 'ecc', 
                     'md5', 'sha1', 'sha256', 'hmac', 'base64', 'prng']
    
    print(f"\n{'Algorithm':<15} {'mbedTLS':<15} {'TinyCrypt':<15} {'Status':<20}")
    print("-"*70)
    
    for algo in all_algorithms:
        in_mbedtls = '✓' if algo in mbedtls_algos else '✗'
        in_tinycrypt = '✓' if algo in tinycrypt_algos else '✗'
        
        if algo in mbedtls_algos or algo in tinycrypt_algos:
            status = "Available"
        elif algo in ['xor_cipher']:
            status = "Custom implementation"
        else:
            status = "⚠ MISSING"
        
        print(f"{algo.upper():<15} {in_mbedtls:<15} {in_tinycrypt:<15} {status:<20}")
    
    # Detailed function listing for key algorithms
    print("\n" + "="*70)
    print("SAMPLE FUNCTIONS (AES from mbedTLS)")
    print("="*70)
    
    if 'aes' in mbedtls_algos:
        aes_source = mbedtls_algos['aes'][0]
        functions = list_mbedtls_functions(aes_source)
        print(f"\nFound {len(functions)} functions in {os.path.basename(aes_source)}:")
        for func in functions[:15]:  # Show first 15
            print(f"  - {func}")
        if len(functions) > 15:
            print(f"  ... and {len(functions) - 15} more")
    
    # Next steps
    print("\n" + "="*70)
    print("NEXT STEPS")
    print("="*70)
    print("\n1. ✓ Libraries analyzed")
    print("2. → Extract functions to standalone files (next script)")
    print("3. → Create custom implementations for: XOR_CIPHER, RC4 (if missing)")
    print("4. → Cross-compile all sources")

if __name__ == "__main__":
    main()