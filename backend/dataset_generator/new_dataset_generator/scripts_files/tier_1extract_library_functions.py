#!/usr/bin/env python3
"""
Extract crypto functions from mbedTLS and TinyCrypt libraries
Creates standalone compilable source files
"""
import os
import shutil
from pathlib import Path
import re

class LibraryExtractor:
    def __init__(self, output_dir="crypto_sources"):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
    
    def extract_mbedtls_aes(self, mbedtls_path):
        """Extract AES from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING AES FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "aes.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "aes.h"
        
        if not source_file.exists():
            print(f"❌ AES source not found: {source_file}")
            return []
        
        # Create output directory
        aes_dir = self.output_dir / "aes"
        aes_dir.mkdir(parents=True, exist_ok=True)
        
        # Copy full implementation
        output_source = aes_dir / "mbedtls_aes_full.c"
        output_header = aes_dir / "mbedtls_aes.h"
        
        # Copy header
        if header_file.exists():
            shutil.copy(header_file, output_header)
            print(f"✓ Copied header: {output_header}")
        
        # Create standalone source file
        self._create_standalone_source(
            source_file, 
            output_source,
            algorithm="aes",
            library="mbedtls"
        )
        
        print(f"✓ Created: {output_source}")
        
        return [output_source]
    
    def extract_mbedtls_des(self, mbedtls_path):
        """Extract DES from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING DES FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "des.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "des.h"
        
        if not source_file.exists():
            print(f"❌ DES source not found")
            return []
        
        des_dir = self.output_dir / "des"
        des_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = des_dir / "mbedtls_des_full.c"
        output_header = des_dir / "mbedtls_des.h"
        
        if header_file.exists():
            shutil.copy(header_file, output_header)
        
        self._create_standalone_source(source_file, output_source, "des", "mbedtls")
        print(f"✓ Created: {output_source}")
        
        return [output_source]
    
    def extract_mbedtls_md5(self, mbedtls_path):
        """Extract MD5 from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING MD5 FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "md5.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "md5.h"
        
        if not source_file.exists():
            print(f"❌ MD5 source not found")
            return []
        
        md5_dir = self.output_dir / "md5"
        md5_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = md5_dir / "mbedtls_md5_full.c"
        output_header = md5_dir / "mbedtls_md5.h"
        
        if header_file.exists():
            shutil.copy(header_file, output_header)
        
        self._create_standalone_source(source_file, output_source, "md5", "mbedtls")
        print(f"✓ Created: {output_source}")
        
        return [output_source]
    
    def extract_mbedtls_sha1(self, mbedtls_path):
        """Extract SHA1 from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING SHA1 FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "sha1.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "sha1.h"
        
        if not source_file.exists():
            print(f"❌ SHA1 source not found")
            return []
        
        sha1_dir = self.output_dir / "sha1"
        sha1_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = sha1_dir / "mbedtls_sha1_full.c"
        output_header = sha1_dir / "mbedtls_sha1.h"
        
        if header_file.exists():
            shutil.copy(header_file, output_header)
        
        self._create_standalone_source(source_file, output_source, "sha1", "mbedtls")
        print(f"✓ Created: {output_source}")
        
        return [output_source]
    
    def extract_mbedtls_sha256(self, mbedtls_path):
        """Extract SHA256 from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING SHA256 FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "sha256.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "sha256.h"
        
        if not source_file.exists():
            print(f"❌ SHA256 source not found")
            return []
        
        sha256_dir = self.output_dir / "sha256"
        sha256_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = sha256_dir / "mbedtls_sha256_full.c"
        output_header = sha256_dir / "mbedtls_sha256.h"
        
        if header_file.exists():
            shutil.copy(header_file, output_header)
        
        self._create_standalone_source(source_file, output_source, "sha256", "mbedtls")
        print(f"✓ Created: {output_source}")
        
        return [output_source]
    
    def extract_mbedtls_rsa(self, mbedtls_path):
        """Extract RSA from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING RSA FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "rsa.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "rsa.h"
        
        # RSA depends on bignum
        bignum_source = Path(mbedtls_path) / "library" / "bignum.c"
        bignum_header = Path(mbedtls_path) / "include" / "mbedtls" / "bignum.h"
        
        if not source_file.exists():
            print(f"❌ RSA source not found")
            return []
        
        rsa_dir = self.output_dir / "rsa"
        rsa_dir.mkdir(parents=True, exist_ok=True)
        
        # Copy dependencies
        if bignum_source.exists():
            shutil.copy(bignum_source, rsa_dir / "bignum.c")
            shutil.copy(bignum_header, rsa_dir / "bignum.h")
            print(f"✓ Copied dependency: bignum")
        
        output_source = rsa_dir / "mbedtls_rsa_full.c"
        output_header = rsa_dir / "mbedtls_rsa.h"
        
        if header_file.exists():
            shutil.copy(header_file, output_header)
        
        self._create_standalone_source(source_file, output_source, "rsa", "mbedtls")
        print(f"✓ Created: {output_source}")
        print(f"⚠ Note: RSA requires bignum.c for compilation")
        
        return [output_source]
    
    def extract_mbedtls_ecc(self, mbedtls_path):
        """Extract ECC from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING ECC FROM MBEDTLS")
        print("="*70)
        
        ecp_source = Path(mbedtls_path) / "library" / "ecp.c"
        ecdsa_source = Path(mbedtls_path) / "library" / "ecdsa.c"
        
        if not ecp_source.exists():
            print(f"❌ ECC source not found")
            return []
        
        ecc_dir = self.output_dir / "ecc"
        ecc_dir.mkdir(parents=True, exist_ok=True)
        
        # Copy ECP (Elliptic Curve Point operations)
        output_ecp = ecc_dir / "mbedtls_ecp_full.c"
        self._create_standalone_source(ecp_source, output_ecp, "ecc", "mbedtls")
        print(f"✓ Created: {output_ecp}")
        
        # Copy ECDSA if available
        if ecdsa_source.exists():
            output_ecdsa = ecc_dir / "mbedtls_ecdsa_full.c"
            self._create_standalone_source(ecdsa_source, output_ecdsa, "ecc", "mbedtls")
            print(f"✓ Created: {output_ecdsa}")
        
        print(f"⚠ Note: ECC requires bignum.c for compilation")
        
        return [output_ecp]
    
    def extract_mbedtls_base64(self, mbedtls_path):
        """Extract Base64 from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING BASE64 FROM MBEDTLS")
        print("="*70)
        
        source_file = Path(mbedtls_path) / "library" / "base64.c"
        header_file = Path(mbedtls_path) / "include" / "mbedtls" / "base64.h"
        
        if not source_file.exists():
            print(f"❌ Base64 source not found")
            return []
        
        base64_dir = self.output_dir / "base64"
        base64_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = base64_dir / "mbedtls_base64_full.c"
        output_header = base64_dir / "mbedtls_base64.h"
        
        if header_file.exists():
            shutil.copy(header_file, output_header)
        
        self._create_standalone_source(source_file, output_source, "base64", "mbedtls")
        print(f"✓ Created: {output_source}")
        
        return [output_source]
    
    def extract_mbedtls_hmac(self, mbedtls_path):
        """Extract HMAC from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING HMAC FROM MBEDTLS")
        print("="*70)
        
        # HMAC is part of the message digest framework
        md_source = Path(mbedtls_path) / "library" / "md.c"
        md_header = Path(mbedtls_path) / "include" / "mbedtls" / "md.h"
        
        if not md_source.exists():
            print(f"❌ HMAC (md.c) source not found")
            return []
        
        hmac_dir = self.output_dir / "hmac"
        hmac_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = hmac_dir / "mbedtls_hmac_full.c"
        output_header = hmac_dir / "mbedtls_md.h"
        
        if md_header.exists():
            shutil.copy(md_header, output_header)
        
        self._create_standalone_source(md_source, output_source, "hmac", "mbedtls")
        print(f"✓ Created: {output_source}")
        print(f"⚠ Note: HMAC requires SHA/MD5 implementations")
        
        return [output_source]
    
    def extract_mbedtls_prng(self, mbedtls_path):
        """Extract PRNG from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING PRNG FROM MBEDTLS")
        print("="*70)
        
        # CTR_DRBG (Counter mode Deterministic Random Bit Generator)
        ctr_source = Path(mbedtls_path) / "library" / "ctr_drbg.c"
        ctr_header = Path(mbedtls_path) / "include" / "mbedtls" / "ctr_drbg.h"
        
        if not ctr_source.exists():
            print(f"❌ PRNG source not found")
            return []
        
        prng_dir = self.output_dir / "prng"
        prng_dir.mkdir(parents=True, exist_ok=True)
        
        output_source = prng_dir / "mbedtls_ctr_drbg_full.c"
        output_header = prng_dir / "mbedtls_ctr_drbg.h"
        
        if ctr_header.exists():
            shutil.copy(ctr_header, output_header)
        
        self._create_standalone_source(ctr_source, output_source, "prng", "mbedtls")
        print(f"✓ Created: {output_source}")
        print(f"⚠ Note: CTR_DRBG requires AES implementation")
        
        return [output_source]
    
    def _create_standalone_source(self, source_file, output_file, algorithm, library):
        """Create a standalone compilable source file"""
        try:
            with open(source_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # Create wrapper with minimal dependencies
            wrapper = f"""/*
 * Extracted from {library} library
 * Algorithm: {algorithm.upper()}
 * Original file: {source_file.name}
 * 
 * This is a standalone version for cross-compilation and feature extraction.
 */

"""
            
            # Add common headers
            wrapper += """#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>

"""
            
            # For mbedTLS, we need to handle the config
            if library == "mbedtls":
                wrapper += """/* Minimal mbedTLS configuration */
#define MBEDTLS_PLATFORM_C
#define MBEDTLS_HAVE_ASM

"""
            
            # Add original content
            wrapper += content
            
            # Write to output
            with open(output_file, 'w', encoding='utf-8') as f:
                f.write(wrapper)
        
        except Exception as e:
            print(f"❌ Error creating standalone source: {e}")
    
    def extract_all_mbedtls(self, mbedtls_path):
        """Extract all algorithms from mbedTLS"""
        print("\n" + "="*70)
        print("EXTRACTING ALL ALGORITHMS FROM MBEDTLS")
        print("="*70)
        
        all_files = []
        
        all_files.extend(self.extract_mbedtls_aes(mbedtls_path))
        all_files.extend(self.extract_mbedtls_des(mbedtls_path))
        all_files.extend(self.extract_mbedtls_md5(mbedtls_path))
        all_files.extend(self.extract_mbedtls_sha1(mbedtls_path))
        all_files.extend(self.extract_mbedtls_sha256(mbedtls_path))
        all_files.extend(self.extract_mbedtls_rsa(mbedtls_path))
        all_files.extend(self.extract_mbedtls_ecc(mbedtls_path))
        all_files.extend(self.extract_mbedtls_base64(mbedtls_path))
        all_files.extend(self.extract_mbedtls_hmac(mbedtls_path))
        all_files.extend(self.extract_mbedtls_prng(mbedtls_path))
        
        print("\n" + "="*70)
        print(f"✓ EXTRACTION COMPLETE: {len(all_files)} files created")
        print("="*70)
        
        return all_files

def main():
    import sys
    
    mbedtls_path = "crypto_libraries/mbedtls"
    
    if not os.path.exists(mbedtls_path):
        print(f"❌ mbedTLS not found at {mbedtls_path}")
        print("Run first:")
        print("  mkdir -p crypto_libraries")
        print("  cd crypto_libraries")
        print("  git clone https://github.com/Mbed-TLS/mbedtls.git")
        sys.exit(1)
    
    extractor = LibraryExtractor(output_dir="crypto_sources")
    files = extractor.extract_all_mbedtls(mbedtls_path)
    
    print("\n" + "="*70)
    print("SUMMARY")
    print("="*70)
    print(f"\nExtracted {len(files)} source files from mbedTLS")
    print(f"Output directory: crypto_sources/")
    print("\nNext steps:")
    print("  1. Extract from TinyCrypt (run with --tinycrypt)")
    print("  2. Create custom XOR_CIPHER and RC4 implementations")
    print("  3. Run cross-compilation script")

if __name__ == "__main__":
    main()