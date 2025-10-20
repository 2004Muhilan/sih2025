#!/usr/bin/env python3
"""
Verify that Tier 1 extraction completed successfully
"""
import os
from pathlib import Path
from collections import defaultdict

def check_algorithm_coverage():
    """Check that all 12 required algorithms have source files"""
    required_algorithms = [
        'aes', 'des', 'rc4', 'xor_cipher', 'rsa', 'ecc',
        'md5', 'sha1', 'sha256', 'hmac', 'base64', 'prng'
    ]
    
    print("="*70)
    print("TIER 1 VERIFICATION - ALGORITHM COVERAGE")
    print("="*70)
    
    crypto_sources = Path("crypto_sources")
    
    if not crypto_sources.exists():
        print("\n❌ crypto_sources/ directory not found!")
        print("   Run: ./run_tier1_extraction.sh")
        return False
    
    results = {}
    total_files = 0
    
    for algo in required_algorithms:
        algo_dir = crypto_sources / algo
        
        if algo_dir.exists():
            c_files = list(algo_dir.glob("*.c"))
            results[algo] = len(c_files)
            total_files += len(c_files)
        else:
            results[algo] = 0
    
    # Display results
    print(f"\n{'Algorithm':<15} {'Files':<10} {'Status':<20}")
    print("-"*70)
    
    all_present = True
    for algo in required_algorithms:
        count = results[algo]
        status = "✓ OK" if count > 0 else "❌ MISSING"
        
        if count == 0:
            all_present = False
        
        print(f"{algo.upper():<15} {count:<10} {status:<20}")
    
    print("-"*70)
    print(f"{'TOTAL':<15} {total_files:<10}")
    
    return all_present, total_files

def check_file_contents():
    """Verify that extracted files contain actual code"""
    print("\n" + "="*70)
    print("TIER 1 VERIFICATION - FILE CONTENT CHECK")
    print("="*70)
    
    crypto_sources = Path("crypto_sources")
    issues = []
    
    for c_file in crypto_sources.rglob("*.c"):
        try:
            with open(c_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
                
            # Check file size
            if len(content) < 100:
                issues.append(f"❌ {c_file}: File too small ({len(content)} bytes)")
                continue
            
            # Check for function definitions
            if not ('(' in content and '{' in content):
                issues.append(f"❌ {c_file}: No function definitions found")
                continue
            
            # Check for includes
            if not ('#include' in content or 'include' in content.lower()):
                issues.append(f"⚠ {c_file}: No #include statements (might be okay)")
            
        except Exception as e:
            issues.append(f"❌ {c_file}: Error reading file - {e}")
    
    if issues:
        print("\nIssues found:")
        for issue in issues[:10]:  # Show first 10
            print(f"  {issue}")
        if len(issues) > 10:
            print(f"  ... and {len(issues) - 10} more issues")
        return False
    else:
        print("\n✓ All files contain valid code")
        return True

def check_libraries_cloned():
    """Check if crypto libraries were cloned"""
    print("\n" + "="*70)
    print("TIER 1 VERIFICATION - LIBRARY STATUS")
    print("="*70)
    
    crypto_libs = Path("crypto_libraries")
    
    if not crypto_libs.exists():
        print("\n❌ crypto_libraries/ directory not found!")
        return False
    
    mbedtls = crypto_libs / "mbedtls"
    tinycrypt = crypto_libs / "tinycrypt"
    
    mbedtls_ok = mbedtls.exists() and (mbedtls / "library").exists()
    tinycrypt_ok = tinycrypt.exists() and (tinycrypt / "lib").exists()
    
    print(f"\nmbedTLS:   {'✓ Cloned' if mbedtls_ok else '❌ Missing or incomplete'}")
    print(f"TinyCrypt: {'✓ Cloned' if tinycrypt_ok else '❌ Missing or incomplete'}")
    
    return mbedtls_ok and tinycrypt_ok

def generate_summary_report():
    """Generate a summary report"""
    print("\n" + "="*70)
    print("TIER 1 COMPLETION REPORT")
    print("="*70)
    
    # Count by library source
    crypto_sources = Path("crypto_sources")
    
    mbedtls_files = list(crypto_sources.rglob("mbedtls_*.c"))
    custom_files = [f for f in crypto_sources.rglob("*.c") if "mbedtls_" not in f.name]
    
    print(f"\nSource file breakdown:")
    print(f"  From mbedTLS:        {len(mbedtls_files)} files")
    print(f"  Custom/RC4/XOR:      {len(custom_files)} files")
    print(f"  --------------------------------")
    print(f"  Total:               {len(mbedtls_files) + len(custom_files)} files")
    
    # Estimate compilation output
    architectures = 7  # ARM, ARM64, x86-64, MIPS, MIPSEL, RISC-V, AVR
    optimizations = 5  # -O0, -O1, -O2, -O3, -Os
    compilers = 2      # GCC, Clang
    
    total_source_files = len(mbedtls_files) + len(custom_files)
    estimated_binaries = total_source_files * architectures * optimizations * compilers
    
    print(f"\nEstimated compilation output (after cross-compilation):")
    print(f"  {total_source_files} source files × {architectures} archs × {optimizations} opts × {compilers} compilers")
    print(f"  = {estimated_binaries} binary files")
    
    # Check directory sizes
    if crypto_sources.exists():
        total_size = sum(f.stat().st_size for f in crypto_sources.rglob("*.c"))
        print(f"\nTotal source code size: {total_size / 1024:.2f} KB")

def main():
    print("\n")
    print("╔" + "="*68 + "╗")
    print("║" + " "*15 + "TIER 1 EXTRACTION VERIFICATION" + " "*23 + "║")
    print("╚" + "="*68 + "╝")
    
    # Check 1: Algorithm coverage
    all_present, total_files = check_algorithm_coverage()
    
    if not all_present:
        print("\n❌ Not all required algorithms have source files!")
        print("   Run: ./run_tier1_extraction.sh")
        return False
    
    if total_files < 12:
        print(f"\n⚠ Warning: Only {total_files} files found (expected at least 12)")
        print("   Consider adding more variants per algorithm")
    
    # Check 2: Library status
    libs_ok = check_libraries_cloned()
    
    if not libs_ok:
        print("\n❌ Crypto libraries not properly cloned!")
        return False
    
    # Check 3: File contents
    contents_ok = check_file_contents()
    
    if not contents_ok:
        print("\n⚠ Some files may have issues")
    
    # Generate summary
    generate_summary_report()
    
    # Final verdict
    print("\n" + "="*70)
    
    if all_present and libs_ok and total_files >= 12:
        print("✅ TIER 1 VERIFICATION PASSED!")
        print("="*70)
        print("\nYou are ready to proceed to Tier 2!")
        print("\nNext steps:")
        print("  1. Review extracted files in crypto_sources/")
        print("  2. Run Tier 2: Sub-function decomposition")
        print("     ./run_tier2_decomposition.sh")
        print("  3. Then proceed to cross-compilation")
        return True
    else:
        print("❌ TIER 1 VERIFICATION FAILED")
        print("="*70)
        print("\nPlease fix the issues above before proceeding.")
        print("\nTo re-run extraction:")
        print("  ./run_tier1_extraction.sh")
        return False

if __name__ == "__main__":
    success = main()
    exit(0 if success else 1)