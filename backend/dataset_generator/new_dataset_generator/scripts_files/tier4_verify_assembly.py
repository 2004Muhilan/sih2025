# scripts/tier4_verify_assembly.py
#!/usr/bin/env python3
"""
Verify assembly file generation - Per algorithm, per architecture breakdown
Excludes AVR-specific files from non-AVR architectures
"""
from pathlib import Path
from collections import defaultdict

# Algorithms
ALGORITHMS = ['AES', 'BASE64', 'DES', 'ECC', 'HMAC', 'MD5', 'PRNG', 'RC4', 'RSA', 'SHA1', 'SHA256', 'XOR_CIPHER']

# Architectures
ARCHITECTURES = ['arm', 'arm64', 'x86-64', 'mips', 'mipsel', 'riscv64', 'avr']

# Optimization levels
OPT_LEVELS = ['O0', 'O1', 'O2', 'O3', 'Os']

# Compilers
COMPILERS = ['gcc', 'clang']

def count_source_files():
    """Count source files per algorithm (separating AVR-specific files)"""
    crypto_sources = Path("crypto_sources")
    
    algo_counts = {}
    algo_avr_counts = {}
    
    for algo in ALGORITHMS:
        algo_dir = crypto_sources / algo.lower()
        if algo_dir.exists():
            c_files = list(algo_dir.glob("*.c"))
            
            # Separate AVR-specific files
            avr_files = [f for f in c_files if '_avr' in f.stem]
            non_avr_files = [f for f in c_files if '_avr' not in f.stem]
            
            algo_counts[algo] = len(non_avr_files)
            algo_avr_counts[algo] = len(avr_files)
        else:
            algo_counts[algo] = 0
            algo_avr_counts[algo] = 0
    
    return algo_counts, algo_avr_counts

def count_assembly_files():
    """Count assembly files per algorithm per architecture"""
    compiled_dir = Path("compiled_binaries")
    
    # Structure: stats[algo][arch] = count
    stats = defaultdict(lambda: defaultdict(int))
    
    # Count .s files
    for asm_file in compiled_dir.rglob("*.s"):
        parts = asm_file.parts
        
        if len(parts) >= 3:
            arch = parts[1]  # compiled_binaries/ARM/...
            algo = parts[2].upper()  # compiled_binaries/arm/AES/...
            
            if arch in ARCHITECTURES and algo in ALGORITHMS:
                stats[algo][arch] += 1
    
    return stats

def main():
    print("=" * 90)
    print("TIER 4 ASSEMBLY FILE VERIFICATION - PER ALGORITHM BREAKDOWN")
    print("=" * 90)
    
    # Count source files
    source_counts, avr_source_counts = count_source_files()
    
    print("\n📁 SOURCE FILES")
    print("-" * 90)
    print(f"{'Algorithm':<12} {'Non-AVR':<10} {'AVR-only':<10} {'Total':<10}")
    print("-" * 90)
    
    total_non_avr = 0
    total_avr = 0
    
    for algo in ALGORITHMS:
        non_avr = source_counts[algo]
        avr_only = avr_source_counts[algo]
        total = non_avr + avr_only
        
        total_non_avr += non_avr
        total_avr += avr_only
        
        print(f"  {algo:12s} {non_avr:<10d} {avr_only:<10d} {total:<10d}")
    
    print("-" * 90)
    print(f"  {'TOTAL':12s} {total_non_avr:<10d} {total_avr:<10d} {total_non_avr + total_avr:<10d}")
    
    # Count assembly files
    asm_stats = count_assembly_files()
    
    print("\n📦 ASSEMBLY FILES (.s) BY ALGORITHM AND ARCHITECTURE")
    print("-" * 90)
    
    # Header
    print(f"{'Algorithm':<12} ", end="")
    for arch in ARCHITECTURES:
        print(f"{arch:>8}", end=" ")
    print(f"{'Total':>8} {'Expected':>8} {'%':>6}")
    print("-" * 90)
    
    # Per algorithm breakdown
    grand_total = 0
    arch_totals = defaultdict(int)
    
    for algo in ALGORITHMS:
        print(f"{algo:<12} ", end="")
        algo_total = 0
        
        for arch in ARCHITECTURES:
            count = asm_stats[algo][arch]
            algo_total += count
            arch_totals[arch] += count
            print(f"{count:>8}", end=" ")
        
        # Calculate expected (corrected for AVR-specific files)
        non_avr_src = source_counts[algo]
        avr_src = avr_source_counts[algo]
        
        # Non-AVR files: 6 archs × 5 opts × 2 compilers = 60 per file
        # AVR files: 1 arch × 5 opts × 1 compiler = 5 per file
        # Non-AVR files on AVR: 1 arch × 5 opts × 1 compiler = 5 per file
        expected = non_avr_src * 60 + non_avr_src * 5 + avr_src * 5
        expected = non_avr_src * 65 + avr_src * 5  # Simplified
        
        percentage = (algo_total / expected * 100) if expected > 0 else 0
        
        print(f"{algo_total:>8} {expected:>8} {percentage:>5.1f}%")
        grand_total += algo_total
    
    # Totals row
    print("-" * 90)
    print(f"{'TOTALS':<12} ", end="")
    for arch in ARCHITECTURES:
        print(f"{arch_totals[arch]:>8}", end=" ")
    
    total_expected = total_non_avr * 65 + total_avr * 5
    total_percentage = (grand_total / total_expected * 100) if total_expected > 0 else 0
    
    print(f"{grand_total:>8} {total_expected:>8} {total_percentage:>5.1f}%")
    
    # Architecture totals
    print("\n🏗️  PER-ARCHITECTURE SUMMARY")
    print("-" * 90)
    for arch in ARCHITECTURES:
        count = arch_totals[arch]
        if arch == 'avr':
            # AVR: non-AVR files (5 opts × 1 compiler) + AVR files (5 opts × 1 compiler)
            expected = total_non_avr * 5 + total_avr * 5
        else:
            # Non-AVR: only non-AVR files (5 opts × 2 compilers)
            expected = total_non_avr * 10
        
        percentage = (count / expected * 100) if expected > 0 else 0
        status = "✅" if percentage >= 70 else "⚠️" if percentage >= 50 else "❌"
        
        print(f"  {arch:10s}: {count:5d}/{expected:5d} ({percentage:5.1f}%) {status}")
    
    # Balance check
    print("\n📊 DATASET BALANCE CHECK")
    print("-" * 90)
    
    algo_percentages = []
    for algo in ALGORITHMS:
        algo_total = sum(asm_stats[algo].values())
        
        non_avr_src = source_counts[algo]
        avr_src = avr_source_counts[algo]
        expected = non_avr_src * 65 + avr_src * 5
        
        percentage = (algo_total / expected * 100) if expected > 0 else 0
        algo_percentages.append((algo, percentage, algo_total))
    
    # Find min and max
    min_algo = min(algo_percentages, key=lambda x: x[2])
    max_algo = max(algo_percentages, key=lambda x: x[2])
    
    print(f"  Lowest:  {min_algo[0]:12s} - {min_algo[2]:4d} files ({min_algo[1]:5.1f}%)")
    print(f"  Highest: {max_algo[0]:12s} - {max_algo[2]:4d} files ({max_algo[1]:5.1f}%)")
    
    ratio = min_algo[2] / max_algo[2] if max_algo[2] > 0 else 0
    print(f"  Balance ratio: {ratio:.2f} (closer to 1.0 is better)")
    
    if ratio >= 0.8:
        print(f"  ✅ WELL BALANCED - Good for training!")
    elif ratio >= 0.6:
        print(f"  ⚠️  ACCEPTABLE - Minor imbalance")
    else:
        print(f"  ❌ IMBALANCED - Consider addressing")
    
    # Overall assessment
    print("\n" + "=" * 90)
    print("OVERALL ASSESSMENT")
    print("=" * 90)
    
    print(f"Total assembly files: {grand_total}")
    print(f"Success rate: {total_percentage:.1f}%")
    
    if grand_total >= 5000 and total_percentage >= 70:
        print("\n✅ EXCELLENT! Dataset is ready for feature extraction!")
        print("   Sufficient quantity and diversity for training.")
    elif grand_total >= 3000 and total_percentage >= 60:
        print("\n✅ GOOD! Dataset is usable for training.")
        print("   May want to investigate failures, but acceptable as-is.")
    else:
        print("\n⚠️  MARGINAL: Dataset may need improvement.")
    
    print("\n📌 NEXT STEPS:")
    print("   1. Begin feature extraction from assembly files")
    print("   2. Generate non-crypto samples")
    print("   3. Start model training")
    
    print("=" * 90)

if __name__ == "__main__":
    main()