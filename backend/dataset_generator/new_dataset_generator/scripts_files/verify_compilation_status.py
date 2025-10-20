# scripts/verify_compilation_status.py
#!/usr/bin/env python3
"""
Verify compilation status of crypto sources
"""
import os
from pathlib import Path
from collections import defaultdict

# Expected architectures
ARCHITECTURES = ['arm', 'arm64', 'x86-64', 'mips', 'mipsel', 'riscv64', 'avr']

# Expected optimization levels
OPT_LEVELS = ['O0', 'O1', 'O2', 'O3', 'Os']

# Expected compilers
COMPILERS = ['gcc', 'clang']

def count_source_files():
    """Count C source files in crypto_sources"""
    crypto_sources = Path("crypto_sources")
    
    if not crypto_sources.exists():
        print("❌ crypto_sources/ directory not found!")
        return {}
    
    algo_files = defaultdict(list)
    
    for algo_dir in sorted(crypto_sources.iterdir()):
        if algo_dir.is_dir():
            c_files = list(algo_dir.glob("*.c"))
            algo_files[algo_dir.name.upper()] = c_files
    
    return algo_files

def count_compiled_binaries():
    """Count compiled binaries by architecture and algorithm"""
    compiled_dir = Path("compiled_binaries")
    
    if not compiled_dir.exists():
        print("❌ compiled_binaries/ directory not found!")
        return {}
    
    stats = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    
    for arch_dir in sorted(compiled_dir.iterdir()):
        if arch_dir.is_dir() and arch_dir.name in ARCHITECTURES:
            arch = arch_dir.name
            
            # Count binaries by algorithm
            for binary in arch_dir.rglob("*"):
                if binary.is_file():
                    # Extract algorithm from path or filename
                    algo = None
                    for part in binary.parts:
                        part_upper = part.upper()
                        if part_upper in ['AES', 'DES', 'RC4', 'XOR_CIPHER', 
                                         'RSA', 'ECC', 'MD5', 'SHA1', 'SHA256',
                                         'HMAC', 'BASE64', 'PRNG']:
                            algo = part_upper
                            break
                    
                    # Try to extract from filename if not in path
                    if not algo:
                        name_parts = binary.name.split('_')
                        for part in name_parts:
                            part_upper = part.upper()
                            if part_upper in ['AES', 'DES', 'RC4', 'XOR', 
                                             'RSA', 'ECC', 'MD5', 'SHA1', 'SHA256',
                                             'HMAC', 'BASE64', 'PRNG']:
                                algo = part_upper
                                if algo == 'XOR':
                                    algo = 'XOR_CIPHER'
                                break
                    
                    if algo:
                        stats[algo][arch]['total'] += 1
    
    return stats

def main():
    print("=" * 80)
    print("COMPILATION STATUS VERIFICATION")
    print("=" * 80)
    
    # Count source files
    source_files = count_source_files()
    
    print("\n📁 SOURCE FILES (crypto_sources/)")
    print("-" * 80)
    
    total_sources = 0
    for algo in sorted(source_files.keys()):
        count = len(source_files[algo])
        total_sources += count
        print(f"{algo:15s}: {count:3d} C files")
    
    print(f"\n{'TOTAL':15s}: {total_sources:3d} C files")
    
    # Count compiled binaries
    compiled_stats = count_compiled_binaries()
    
    print("\n📦 COMPILED BINARIES (compiled_binaries/)")
    print("-" * 80)
    
    if not compiled_stats:
        print("❌ No compiled binaries found in architecture directories!")
        print("\n⚠️  Your source files exist but haven't been compiled yet.")
    else:
        # Print per-algorithm, per-architecture breakdown
        print(f"\n{'Algorithm':<15} ", end="")
        for arch in ARCHITECTURES:
            print(f"{arch:>8}", end=" ")
        print(f"{'Total':>8}")
        print("-" * 80)
        
        grand_total = 0
        algo_totals = {}
        arch_totals = defaultdict(int)
        
        for algo in sorted(compiled_stats.keys()):
            print(f"{algo:<15} ", end="")
            algo_total = 0
            
            for arch in ARCHITECTURES:
                count = compiled_stats[algo][arch]['total']
                algo_total += count
                arch_totals[arch] += count
                print(f"{count:>8}", end=" ")
            
            print(f"{algo_total:>8}")
            algo_totals[algo] = algo_total
            grand_total += algo_total
        
        print("-" * 80)
        print(f"{'TOTALS':<15} ", end="")
        for arch in ARCHITECTURES:
            print(f"{arch_totals[arch]:>8}", end=" ")
        print(f"{grand_total:>8}")
    
    # Expected binaries calculation
    print("\n📊 EXPECTED vs ACTUAL")
    print("-" * 80)
    
    if source_files and not compiled_stats:
        print("Expected binaries per source file:")
        print(f"  Non-AVR algos: 6 archs × 5 opts × 2 compilers = 60 binaries")
        print(f"  AVR-compat algos: 7 archs × 5 opts × 2 compilers = 70 binaries")
        print(f"\nWith {total_sources} source files:")
        print(f"  Estimated total: {total_sources * 60} to {total_sources * 70} binaries")
        print("\n❌ STATUS: NOT COMPILED - Need to run compilation")
    elif compiled_stats:
        total_binaries = sum(algo_totals.values())
        expected_per_file = 60  # Conservative estimate
        expected_total = total_sources * expected_per_file
        
        print(f"Source files:      {total_sources}")
        print(f"Compiled binaries: {total_binaries}")
        print(f"Expected (approx): {expected_total}")
        print(f"Ratio:             {total_binaries / expected_total * 100:.1f}%")
        
        if total_binaries < expected_total * 0.1:
            print("\n⚠️  STATUS: PARTIALLY COMPILED - Many binaries missing")
        elif total_binaries < expected_total * 0.9:
            print("\n⚠️  STATUS: COMPILATION IN PROGRESS")
        else:
            print("\n✅ STATUS: FULLY COMPILED")
    
    # Architecture coverage
    print("\n🏗️  ARCHITECTURE COVERAGE")
    print("-" * 80)
    
    if compiled_stats:
        for arch in ARCHITECTURES:
            if arch_totals[arch] > 0:
                print(f"✅ {arch:10s}: {arch_totals[arch]:5d} binaries")
            else:
                print(f"❌ {arch:10s}: No binaries found")
    else:
        for arch in ARCHITECTURES:
            print(f"❌ {arch:10s}: Not compiled yet")
    
    # Next steps
    print("\n" + "=" * 80)
    print("NEXT STEPS")
    print("=" * 80)
    
    if not compiled_stats or sum(algo_totals.values()) < total_sources * 10:
        print("1. 🔴 COMPILE ALL SOURCE FILES (Priority #1)")
        print("   You need a compilation script that:")
        print("   - Takes each .c file in crypto_sources/")
        print("   - Compiles for all 7 architectures")
        print("   - Uses 5 optimization levels (O0, O1, O2, O3, Os)")
        print("   - Uses 2 compilers (GCC, Clang)")
        print("   - Saves to compiled_binaries/<arch>/<algo>/")
        print("\n   Should I generate this compilation script?")
    else:
        print("1. ✅ Compilation complete or in progress")
        print("2. Verify all architectures have balanced samples")
        print("3. Proceed to feature extraction")
    
    print("=" * 80)

if __name__ == "__main__":
    main()