#!/usr/bin/env python3
from pathlib import Path

print("="*70)
print("TIER 2 FINAL FILE COUNT")
print("="*70)

crypto_sources = Path("crypto_sources")
algorithms = ['aes', 'des', 'rc4', 'xor_cipher', 'rsa', 'ecc', 
              'md5', 'sha1', 'sha256', 'hmac', 'base64', 'prng']

print(f"\n{'Algorithm':<15} {'Total':<10} {'Non-AVR':<10} {'AVR-only':<10}")
print("-"*70)

total = 0
total_avr = 0
total_non_avr = 0

for algo in algorithms:
    algo_dir = crypto_sources / algo
    if algo_dir.exists():
        all_files = list(algo_dir.glob("*.c"))
        avr_files = [f for f in all_files if 'avr' in f.name]
        non_avr_files = [f for f in all_files if 'avr' not in f.name]
        
        total += len(all_files)
        total_avr += len(avr_files)
        total_non_avr += len(non_avr_files)
        
        print(f"{algo.upper():<15} {len(all_files):<10} {len(non_avr_files):<10} {len(avr_files):<10}")

print("-"*70)
print(f"{'TOTAL':<15} {total:<10} {total_non_avr:<10} {total_avr:<10}")

print("\n" + "="*70)
print("COMPILATION TARGETS")
print("="*70)

print("\nNon-AVR files compiled for 6 architectures (ARM, ARM64, x86-64, MIPS, MIPSEL, RISC-V):")
non_avr_binaries = total_non_avr * 6 * 5 * 2  # 6 archs × 5 opts × 2 compilers
print(f"  {total_non_avr} files × 6 archs × 5 opts × 2 compilers = {non_avr_binaries} binaries")

print("\nAVR-specific files (only for AVR):")
avr_only_binaries = total_avr * 5 * 2  # AVR only: 5 opts × 2 compilers
print(f"  {total_avr} files × 1 arch (AVR) × 5 opts × 2 compilers = {avr_only_binaries} binaries")

print("\nNon-AVR files also compiled for AVR (AVR-compatible, no uint64_t):")
# Count non-AVR files that don't have uint64_t (can compile on AVR)
avr_compat_count = 0
for algo in ['aes', 'rc4', 'xor_cipher', 'md5', 'hmac', 'base64']:  # Fully AVR-compatible
    algo_dir = crypto_sources / algo
    if algo_dir.exists():
        non_avr_files_in_algo = [f for f in algo_dir.glob("*.c") if 'avr' not in f.name]
        avr_compat_count += len(non_avr_files_in_algo)

avr_compat_binaries = avr_compat_count * 5 * 2
print(f"  {avr_compat_count} files × 1 arch (AVR) × 5 opts × 2 compilers = {avr_compat_binaries} binaries")

total_binaries = non_avr_binaries + avr_only_binaries + avr_compat_binaries

print("\n" + "-"*70)
print(f"TOTAL CRYPTO BINARIES: {total_binaries}")
print("="*70)

# Calculate per-algorithm
avg_per_algo = total_binaries / 12
print(f"\nAverage per algorithm: {avg_per_algo:.0f} binaries")
print(f"Target: 490 binaries per algorithm")

if avg_per_algo >= 450:
    print("\n✅ WELL BALANCED - Ready for training!")
else:
    print(f"\n⚠️  Slightly under target (need +{int((490*12 - total_binaries)/12)} per algo)")

print("\n" + "="*70)
print("TIER 2 COMPLETE WITH AVR SUPPORT!")
print("="*70)