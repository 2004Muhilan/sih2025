# scripts/tier5_plan_non_crypto.py
#!/usr/bin/env python3
"""
Plan non-crypto sample generation to match crypto dataset balance
"""

def main():
    print("="*80)
    print("TIER 5: NON-CRYPTO SAMPLE GENERATION PLAN")
    print("="*80)
    
    print("\n📊 CRYPTO DATASET ANALYSIS")
    print("-"*80)
    crypto_algos = {
        'AES': 455,
        'BASE64': 390,
        'DES': 780,
        'ECC': 910,
        'HMAC': 390,
        'MD5': 455,
        'PRNG': 780,
        'RC4': 455,
        'RSA': 910,
        'SHA1': 845,
        'SHA256': 845,
        'XOR_CIPHER': 455
    }
    
    total_crypto = sum(crypto_algos.values())
    avg_crypto = total_crypto / len(crypto_algos)
    
    print(f"Total crypto assemblies: {total_crypto}")
    print(f"Average per algorithm: {avg_crypto:.0f}")
    print(f"Range: {min(crypto_algos.values())} - {max(crypto_algos.values())}")
    
    print("\n🎯 NON-CRYPTO TARGET")
    print("-"*80)
    target_non_crypto = 650
    print(f"Target non-crypto assemblies: {target_non_crypto}")
    print(f"This matches the middle range of crypto algorithms")
    
    print("\n📝 NON-CRYPTO CATEGORIES (10 source files total)")
    print("-"*80)
    
    categories = [
        ("Sorting Algorithms", 2, ["quicksort.c", "bubblesort.c"]),
        ("String Operations", 2, ["string_reverse.c", "string_concat.c"]),
        ("Math Functions", 2, ["factorial.c", "fibonacci.c"]),
        ("Array Operations", 2, ["array_sum.c", "array_max.c"]),
        ("Data Structures", 2, ["linked_list_insert.c", "binary_tree_search.c"])
    ]
    
    total_files = sum(count for _, count, _ in categories)
    expected_assemblies = total_files * 65  # 65 assemblies per file
    
    print(f"\n{'Category':<25} {'Files':<6} {'Expected Assemblies':<20}")
    print("-"*80)
    
    for category, count, examples in categories:
        assemblies = count * 65
        print(f"{category:<25} {count:<6} {assemblies:<20}")
        print(f"  Examples: {', '.join(examples)}")
    
    print("-"*80)
    print(f"{'TOTAL':<25} {total_files:<6} {expected_assemblies:<20}")
    
    print("\n✅ BALANCE CHECK")
    print("-"*80)
    print(f"Crypto average: {avg_crypto:.0f} assemblies")
    print(f"Non-crypto target: {expected_assemblies} assemblies")
    print(f"Ratio: {expected_assemblies / avg_crypto:.2f}")
    
    if 0.8 <= expected_assemblies / avg_crypto <= 1.2:
        print("✅ BALANCED - Non-crypto matches crypto distribution!")
    else:
        print("⚠️  Adjust file count to balance better")
    
    print("\n📌 IMPLEMENTATION PLAN")
    print("-"*80)
    print("1. Create crypto_sources/non_crypto/ directory")
    print("2. Generate 10 simple C functions (no dependencies)")
    print("3. Compile across all architectures (like crypto files)")
    print("4. Expected output: ~650 assembly files")
    print("5. Final dataset: 7670 crypto + 650 non-crypto = 8320 total")
    
    print("\n" + "="*80)
    print("Ready to generate non-crypto samples!")
    print("="*80)

if __name__ == "__main__":
    main()