# scripts_features/create_cleaned_dataset.py
#!/usr/bin/env python3
"""
Create cleaned dataset by removing truly problematic features
"""
import pandas as pd
from pathlib import Path

def main():
    print("="*70)
    print("CREATING CLEANED DATASET")
    print("="*70)
    print()
    
    # Load original dataset
    dataset_file = Path("dataset/dataset_features.csv")
    df = pd.read_csv(dataset_file)
    
    print(f"Original dataset: {df.shape[0]} samples × {df.shape[1]} columns")
    print()
    
    # Features to remove (only truly useless ones)
    features_to_drop = [
        'crypto_opcode_freq',  # All zeros
        'byte_min',            # Constant value
    ]
    
    print("Removing features:")
    for feat in features_to_drop:
        print(f"  - {feat}")
    print()
    
    # Drop features
    df_cleaned = df.drop(columns=features_to_drop)
    
    print(f"Cleaned dataset: {df_cleaned.shape[0]} samples × {df_cleaned.shape[1]} columns")
    print(f"Features removed: {len(features_to_drop)}")
    print(f"Features remaining: {df_cleaned.shape[1] - 8} (excluding metadata)")
    print()
    
    # Save cleaned dataset
    output_file = Path("dataset/dataset_features_cleaned.csv")
    df_cleaned.to_csv(output_file, index=False)
    
    print(f"💾 Saved cleaned dataset to: {output_file}")
    print(f"   Size: {output_file.stat().st_size / 1024 / 1024:.2f} MB")
    print()
    
    # Update summary
    metadata_cols = ['architecture', 'algorithm', 'optimization', 'compiler', 
                    'filename', 'filepath', 'class_label', 'class_name']
    feature_cols = [col for col in df_cleaned.columns if col not in metadata_cols]
    
    print("📊 CLEANED DATASET SUMMARY")
    print("-"*70)
    print(f"Total samples: {len(df_cleaned)}")
    print(f"Total features: {len(feature_cols)}")
    print(f"Classes: 13 (12 crypto + 1 non-crypto)")
    print()
    
    print("Feature categories:")
    print(f"  - Opcode frequencies: 10 (top_opcode_0-9)")
    print(f"  - N-gram frequencies: 20 (ngram_0-19)")
    print(f"  - Opcode categories: 5 (arithmetic, bitwise, control_flow, data_movement, comparison)")
    print(f"  - Control flow: 6 (num_jumps, num_calls, num_returns, etc.)")
    print(f"  - Crypto-specific: 4 (xor_count, rotation_count, modular_arith, large_constants)")
    print(f"  - Entropy & stats: 9 (opcode_entropy, ngram_entropy, byte_entropy, etc.)")
    print(f"  - Other: 2 (num_instructions, avg_line_length, array_access)")
    print()
    
    print("="*70)
    print("✅ CLEANED DATASET READY FOR TRAINING!")
    print("="*70)
    print()
    print("💡 NOTE: Low-variance features were KEPT because:")
    print("   - They still contain discriminative information")
    print("   - Deep learning models can learn from subtle patterns")
    print("   - Feature selection will happen during training if needed")
    print()
    print("📌 NEXT STEPS:")
    print("   1. Use dataset_features_cleaned.csv for training")
    print("   2. Apply feature normalization (StandardScaler)")
    print("   3. Split into train/val/test (70/15/15)")
    print("   4. Begin hybrid model training")
    print()

if __name__ == "__main__":
    main()