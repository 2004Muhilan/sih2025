# scripts/tier4_analyze_failures.py
#!/usr/bin/env python3
"""
Analyze compilation failures by architecture
"""
from pathlib import Path
from collections import defaultdict

def analyze_compiled():
    """Check what compiled successfully"""
    compiled_dir = Path("compiled_binaries")
    
    if not compiled_dir.exists():
        print("❌ compiled_binaries/ not found")
        return
    
    stats = defaultdict(lambda: defaultdict(int))
    
    # Count by architecture and compiler
    for obj_file in compiled_dir.rglob("*.o"):
        parts = obj_file.parts
        if len(parts) >= 5:
            arch = parts[1]  # compiled_binaries/ARM/...
            algo = parts[2]
            opt = parts[3]
            compiler = parts[4]
            
            stats[arch][compiler] += 1
    
    print("=" * 70)
    print("COMPILATION SUCCESS BY ARCHITECTURE")
    print("=" * 70)
    
    archs = ['arm', 'arm64', 'x86-64', 'mips', 'mipsel', 'riscv64', 'avr']
    
    print(f"\n{'Architecture':<12} {'GCC':>8} {'Clang':>8} {'Total':>8}")
    print("-" * 70)
    
    total_gcc = 0
    total_clang = 0
    
    for arch in archs:
        gcc_count = stats[arch]['gcc']
        clang_count = stats[arch]['clang']
        total = gcc_count + clang_count
        
        total_gcc += gcc_count
        total_clang += clang_count
        
        status = "✅" if total > 0 else "❌"
        print(f"{arch:<12} {gcc_count:>8} {clang_count:>8} {total:>8} {status}")
    
    print("-" * 70)
    print(f"{'TOTAL':<12} {total_gcc:>8} {total_clang:>8} {total_gcc + total_clang:>8}")
    
    # Expected counts
    print("\n" + "=" * 70)
    print("EXPECTED vs ACTUAL")
    print("=" * 70)
    
    total_files = 126
    opts = 5
    
    print(f"\nPer architecture (126 files × 5 opts):")
    print(f"  Expected GCC:   {total_files * opts:4d}")
    print(f"  Expected Clang: {total_files * opts:4d} (except AVR)")
    print(f"\nTotal expected: ~{total_files * opts * 7 + total_files * opts * 6} (GCC all archs + Clang non-AVR)")
    print(f"Total actual:    {total_gcc + total_clang}")
    
    # Recommendations
    print("\n" + "=" * 70)
    print("RECOMMENDATIONS")
    print("=" * 70)
    
    if total_gcc + total_clang >= 3000:
        print("✅ SUFFICIENT: You have enough diversity for training!")
        print("   Continue with this dataset.")
    elif total_gcc + total_clang >= 1000:
        print("⚠️  MARGINAL: Dataset is usable but limited")
        print("   Consider fixing failed architectures for better results.")
    else:
        print("❌ INSUFFICIENT: Too few successful compilations")
        print("   Need to debug compilation issues.")
    
    # Which architectures need attention
    print("\n🔍 ATTENTION NEEDED:")
    for arch in archs:
        total = stats[arch]['gcc'] + stats[arch]['clang']
        expected = total_files * opts if arch != 'avr' else total_files * opts
        
        if total == 0:
            print(f"  ❌ {arch}: No successful compilations - check compiler installation")
        elif total < expected * 0.5:
            print(f"  ⚠️  {arch}: Only {total}/{expected} compiled - investigate failures")
    
    print("=" * 70)

if __name__ == "__main__":
    analyze_compiled()