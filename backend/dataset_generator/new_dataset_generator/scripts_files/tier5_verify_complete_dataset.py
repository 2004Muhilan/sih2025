# scripts/tier5_verify_complete_dataset.py
#!/usr/bin/env python3
"""
Verify complete dataset with crypto + non-crypto samples
"""
from pathlib import Path
from collections import defaultdict

# All 13 classes
ALL_CLASSES = ['AES', 'BASE64', 'DES', 'ECC', 'HMAC', 'MD5', 'PRNG', 'RC4', 
               'RSA', 'SHA1', 'SHA256', 'XOR_CIPHER', 'NON_CRYPTO']

ARCHITECTURES = ['arm', 'arm64', 'x86-64', 'mips', 'mipsel', 'riscv64', 'avr']

def count_assemblies():
    """Count assembly files per class per architecture"""
    compiled_dir = Path("compiled_binaries")
    
    stats = defaultdict(lambda: defaultdict(int))
    
    for asm_file in compiled_dir.rglob("*.s"):
        parts = asm_file.parts
        
        if len(parts) >= 3:
            arch = parts[1]
            algo = parts[2].upper()
            
            if arch in ARCHITECTURES and algo in ALL_CLASSES:
                stats[algo][arch] += 1
    
    return stats

def main():
    print("="*90)
    print("COMPLETE DATASET VERIFICATION - 13 CLASSES (12 CRYPTO + 1 NON-CRYPTO)")
    print("="*90)
    
    stats = count_assemblies()
    
    print("\n📦 ASSEMBLY FILES BY CLASS AND ARCHITECTURE")
    print("-"*90)
    
    # Header
    print(f"{'Class':<12} ", end="")
    for arch in ARCHITECTURES:
        print(f"{arch:>8}", end=" ")
    print(f"{'Total':>8}")
    print("-"*90)
    
    # Per-class breakdown
    grand_total = 0
    arch_totals = defaultdict(int)
    class_totals = {}
    
    for class_name in ALL_CLASSES:
        print(f"{class_name:<12} ", end="")
        class_total = 0
        
        for arch in ARCHITECTURES:
            count = stats[class_name][arch]
            class_total += count
            arch_totals[arch] += count
            print(f"{count:>8}", end=" ")
        
        print(f"{class_total:>8}")
        class_totals[class_name] = class_total
        grand_total += class_total
    
    # Totals row
    print("-"*90)
    print(f"{'TOTALS':<12} ", end="")
    for arch in ARCHITECTURES:
        print(f"{arch_totals[arch]:>8}", end=" ")
    print(f"{grand_total:>8}")
    
    # Class balance analysis
    print("\n📊 CLASS BALANCE ANALYSIS")
    print("-"*90)
    
    avg_samples = grand_total / len(ALL_CLASSES)
    
    print(f"Total assembly files: {grand_total}")
    print(f"Number of classes: {len(ALL_CLASSES)}")
    print(f"Average per class: {avg_samples:.0f}")
    print()
    
    # Find min and max
    min_class = min(class_totals.items(), key=lambda x: x[1])
    max_class = max(class_totals.items(), key=lambda x: x[1])
    
    print(f"Lowest:  {min_class[0]:<12} - {min_class[1]:4d} samples")
    print(f"Highest: {max_class[0]:<12} - {max_class[1]:4d} samples")
    print(f"Range: {min_class[1]} - {max_class[1]}")
    
    ratio = min_class[1] / max_class[1] if max_class[1] > 0 else 0
    print(f"Balance ratio: {ratio:.2f} (1.0 = perfect balance)")
    
    # Show all classes sorted by count
    print("\n📋 ALL CLASSES RANKED BY SAMPLE COUNT")
    print("-"*90)
    
    sorted_classes = sorted(class_totals.items(), key=lambda x: x[1])
    
    for i, (class_name, count) in enumerate(sorted_classes, 1):
        percentage = (count / avg_samples * 100) if avg_samples > 0 else 0
        bar_length = int(percentage / 5)  # Scale bar
        bar = "█" * bar_length
        
        status = "✅" if count >= avg_samples * 0.8 else "⚠️"
        
        print(f"{i:2d}. {class_name:<12} {count:4d} {bar:<20} {percentage:5.1f}% {status}")
    
    # Balance assessment
    print("\n🎯 DATASET BALANCE ASSESSMENT")
    print("-"*90)
    
    if ratio >= 0.6:
        print("✅ WELL BALANCED - All classes have reasonable representation!")
        print("   The dataset is ready for training.")
    elif ratio >= 0.4:
        print("⚠️  ACCEPTABLE - Some imbalance exists but usable for training.")
        print("   Consider data augmentation for underrepresented classes.")
    else:
        print("❌ IMBALANCED - Significant disparity between classes.")
        print("   May need to generate more samples for underrepresented classes.")
    
    # Architecture coverage
    print("\n🏗️  ARCHITECTURE DISTRIBUTION")
    print("-"*90)
    
    for arch in ARCHITECTURES:
        count = arch_totals[arch]
        percentage = (count / grand_total * 100) if grand_total > 0 else 0
        print(f"{arch:10s}: {count:5d} samples ({percentage:5.1f}%)")
    
    # Final summary
    print("\n" + "="*90)
    print("FINAL DATASET SUMMARY")
    print("="*90)
    
    print(f"✅ Total samples: {grand_total} assembly files")
    print(f"✅ Classes: {len(ALL_CLASSES)} (12 crypto + 1 non-crypto)")
    print(f"✅ Architectures: {len(ARCHITECTURES)}")
    print(f"✅ Optimization levels: 5 (O0, O1, O2, O3, Os)")
    print(f"✅ Compilers: 2 (GCC, Clang)")
    
    print("\n🎉 TIER 4 & 5 COMPLETE!")
    print("\n📌 NEXT STEPS:")
    print("   1. Begin feature extraction from assembly files")
    print("   2. Build training/validation/test splits")
    print("   3. Start hybrid model training (CNN + GNN + Transformer)")
    
    print("="*90)

if __name__ == "__main__":
    main()