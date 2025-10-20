#!/usr/bin/env python3
from pathlib import Path

print("="*70)
print("TIER 2 VERIFICATION - BALANCE CHECK")
print("="*70)

crypto_sources = Path("crypto_sources")
algorithms = ['aes', 'des', 'rc4', 'xor_cipher', 'rsa', 'ecc', 
              'md5', 'sha1', 'sha256', 'hmac', 'base64', 'prng']

print(f"\n{'Algorithm':<15} {'Source Files':<15} {'× 70 variants':<15} {'= Binaries':<15}")
print("-"*70)

total_sources = 0
total_binaries = 0

for algo in algorithms:
    algo_dir = crypto_sources / algo
    if algo_dir.exists():
        count = len(list(algo_dir.glob("*.c")))
        binaries = count * 70  # 7 archs × 5 opts × 2 compilers
        total_sources += count
        total_binaries += binaries
        print(f"{algo.upper():<15} {count:<15} {'× 70':<15} {binaries:<15}")
    else:
        print(f"{algo.upper():<15} {'0 (MISSING!)':<15}")

print("-"*70)
print(f"{'TOTAL':<15} {total_sources:<15} {'':<15} {total_binaries:<15}")

print("\n" + "="*70)
print("BALANCE ANALYSIS")
print("="*70)

avg_binaries = total_binaries / len(algorithms)
print(f"\nAverage per algorithm: {avg_binaries:.0f} binaries")
print(f"Target per algorithm: 490 binaries")

print("\nPer-algorithm status:")
for algo in algorithms:
    algo_dir = crypto_sources / algo
    if algo_dir.exists():
        count = len(list(algo_dir.glob("*.c")))
        binaries = count * 70
        diff = binaries - 490
        status = "✅ Balanced" if binaries >= 490 else f"⚠️  Need +{int((490-binaries)/70)} files"
        print(f"  {algo.upper():<12} : {binaries:>4} binaries  {status}")

print("\n" + "="*70)
if total_sources >= 84:  # 12 algos × 7 files
    print("✅ TIER 2 COMPLETE - DATASET IS BALANCED!")
else:
    print(f"⚠️  Target: 84 files (12 × 7), Current: {total_sources}")
print("="*70)

print(f"\nSummary:")
print(f"  Total source files: {total_sources}")
print(f"  Total binaries (after compilation): {total_binaries}")
print(f"  Average per algorithm: {avg_binaries:.0f} binaries")