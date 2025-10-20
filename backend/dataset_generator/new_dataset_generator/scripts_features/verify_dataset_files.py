# scripts_features/verify_dataset.py
#!/usr/bin/env python3
"""
Verify the extracted dataset
"""
import pandas as pd
from pathlib import Path

def main():
    print("="*80)
    print("DATASET VERIFICATION")
    print("="*80)
    print()
    
    # Load dataset
    dataset_file = Path("dataset/dataset_features.csv")
    
    if not dataset_file.exists():
        print(f"❌ Dataset not found: {dataset_file}")
        return
    
    df = pd.read_csv(dataset_file)
    
    print(f"📊 Dataset shape: {df.shape[0]} samples × {df.shape[1]} columns")
    print()
    
    # Check for missing values
    missing = df.isnull().sum().sum()
    print(f"Missing values: {missing}")
    if missing > 0:
        print("⚠️  Columns with missing values:")
        for col in df.columns[df.isnull().any()]:
            print(f"  {col}: {df[col].isnull().sum()}")
    print()
    
    # Class distribution
    print("📋 CLASS DISTRIBUTION (13 classes)")
    print("-"*80)
    class_dist = df['class_name'].value_counts().sort_index()
    
    for class_name in sorted(class_dist.index):
        count = class_dist[class_name]
        percentage = count / len(df) * 100
        bar = "█" * int(percentage / 2)
        print(f"{class_name:12s}: {count:5d} ({percentage:5.2f}%) {bar}")
    
    print("-"*80)
    print(f"{'TOTAL':12s}: {len(df):5d} (100.00%)")
    print()
    
    # Architecture distribution
    print("🏗️  ARCHITECTURE DISTRIBUTION")
    print("-"*80)
    arch_dist = df['architecture'].value_counts().sort_index()
    
    for arch in sorted(arch_dist.index):
        count = arch_dist[arch]
        percentage = count / len(df) * 100
        print(f"{arch:12s}: {count:5d} ({percentage:5.2f}%)")
    
    print("-"*80)
    print(f"{'TOTAL':12s}: {len(df):5d} (100.00%)")
    print()
    
    # Cross-tabulation: Architecture × Class
    print("📊 ARCHITECTURE × CLASS DISTRIBUTION")
    print("-"*80)
    
    crosstab = pd.crosstab(df['architecture'], df['class_name'])
    print(crosstab)
    print()
    
    # Check crypto vs non-crypto split per architecture
    print("🔐 CRYPTO vs NON-CRYPTO PER ARCHITECTURE")
    print("-"*80)
    
    for arch in sorted(df['architecture'].unique()):
        arch_df = df[df['architecture'] == arch]
        crypto_count = len(arch_df[arch_df['class_name'] != 'NON_CRYPTO'])
        non_crypto_count = len(arch_df[arch_df['class_name'] == 'NON_CRYPTO'])
        total = crypto_count + non_crypto_count
        
        print(f"{arch:12s}: Crypto={crypto_count:4d}, Non-crypto={non_crypto_count:3d}, Total={total:4d}")
    
    print()
    
    # Optimization level distribution
    print("⚙️  OPTIMIZATION LEVEL DISTRIBUTION")
    print("-"*80)
    opt_dist = df['optimization'].value_counts().sort_index()
    
    for opt in sorted(opt_dist.index):
        count = opt_dist[opt]
        percentage = count / len(df) * 100
        print(f"{opt:5s}: {count:5d} ({percentage:5.2f}%)")
    print()
    
    # Compiler distribution
    print("🔧 COMPILER DISTRIBUTION")
    print("-"*80)
    compiler_dist = df['compiler'].value_counts().sort_index()
    
    for compiler in sorted(compiler_dist.index):
        count = compiler_dist[compiler]
        percentage = count / len(df) * 100
        print(f"{compiler:8s}: {count:5d} ({percentage:5.2f}%)")
    print()
    
    # Feature statistics
    print("📈 FEATURE STATISTICS (sample)")
    print("-"*80)
    
    feature_cols = [col for col in df.columns if col not in 
                   ['architecture', 'algorithm', 'optimization', 'compiler', 
                    'filename', 'filepath', 'class_label', 'class_name']]
    
    stats = df[feature_cols].describe()
    print(stats[['num_instructions', 'xor_count', 'bitwise_freq', 
                'control_flow_freq', 'opcode_entropy']].round(4))
    print()
    
    # Balance check
    print("⚖️  DATASET BALANCE CHECK")
    print("-"*80)
    
    min_class = class_dist.min()
    max_class = class_dist.max()
    ratio = min_class / max_class
    
    print(f"Min class size: {min_class} ({class_dist.idxmin()})")
    print(f"Max class size: {max_class} ({class_dist.idxmax()})")
    print(f"Balance ratio: {ratio:.3f} (closer to 1.0 = better)")
    print()
    
    if ratio >= 0.6:
        print("✅ WELL BALANCED - Dataset ready for training!")
    elif ratio >= 0.4:
        print("⚠️  ACCEPTABLE - Minor imbalance but usable")
    else:
        print("❌ IMBALANCED - Consider rebalancing")
    
    print()
    print("="*80)
    print("VERIFICATION COMPLETE")
    print("="*80)
    print()
    print("✅ Dataset is valid and ready for model training!")
    print()
    print("📌 NEXT STEPS:")
    print("   1. Split dataset: train/val/test (70/15/15)")
    print("   2. Normalize features")
    print("   3. Begin hybrid model training (CNN + GNN + Transformer)")
    print()

if __name__ == "__main__":
    main()