# scripts_features/check_feature_quality.py
#!/usr/bin/env python3
"""
Check for problematic features in the dataset
- Features with all zeros
- Features with constant values
- Features with very low variance
"""
import pandas as pd
import numpy as np
from pathlib import Path

def main():
    print("="*80)
    print("FEATURE QUALITY CHECK")
    print("="*80)
    print()
    
    # Load dataset
    dataset_file = Path("dataset/dataset_features_cleaned.csv")
    
    if not dataset_file.exists():
        print(f"❌ Dataset not found: {dataset_file}")
        return
    
    df = pd.read_csv(dataset_file)
    
    # Get feature columns (exclude metadata)
    metadata_cols = ['architecture', 'algorithm', 'optimization', 'compiler', 
                    'filename', 'filepath', 'class_label', 'class_name']
    feature_cols = [col for col in df.columns if col not in metadata_cols]
    
    print(f"Total features to check: {len(feature_cols)}")
    print()
    
    # 1. Check for all-zero features
    print("🔍 CHECKING FOR ALL-ZERO FEATURES")
    print("-"*80)
    
    zero_features = []
    for col in feature_cols:
        if (df[col] == 0).all():
            zero_features.append(col)
            print(f"  ❌ {col:30s}: All values are zero")
    
    if not zero_features:
        print("  ✅ No all-zero features found")
    
    print(f"\nTotal all-zero features: {len(zero_features)}")
    print()
    
    # 2. Check for constant features (same value everywhere)
    print("🔍 CHECKING FOR CONSTANT FEATURES")
    print("-"*80)
    
    constant_features = []
    for col in feature_cols:
        unique_values = df[col].nunique()
        if unique_values == 1:
            constant_features.append(col)
            print(f"  ❌ {col:30s}: Only 1 unique value = {df[col].iloc[0]:.4f}")
    
    if not constant_features:
        print("  ✅ No constant features found")
    
    print(f"\nTotal constant features: {len(constant_features)}")
    print()
    
    # 3. Check for very low variance features
    print("🔍 CHECKING FOR LOW VARIANCE FEATURES (variance < 0.001)")
    print("-"*80)
    
    low_variance_features = []
    variance_threshold = 0.001
    
    for col in feature_cols:
        variance = df[col].var()
        if variance < variance_threshold and variance > 0:
            low_variance_features.append((col, variance))
            print(f"  ⚠️  {col:30s}: variance = {variance:.6f}")
    
    if not low_variance_features:
        print("  ✅ No low variance features found")
    
    print(f"\nTotal low variance features: {len(low_variance_features)}")
    print()
    
    # 4. Check for features with very few unique values
    print("🔍 CHECKING FOR FEATURES WITH FEW UNIQUE VALUES (< 10)")
    print("-"*80)
    
    few_unique_features = []
    unique_threshold = 10
    
    for col in feature_cols:
        unique_count = df[col].nunique()
        if unique_count < unique_threshold:
            few_unique_features.append((col, unique_count))
            print(f"  ⚠️  {col:30s}: {unique_count} unique values")
    
    if not few_unique_features:
        print("  ✅ All features have sufficient unique values")
    
    print(f"\nTotal features with few unique values: {len(few_unique_features)}")
    print()
    
    # 5. Show feature statistics summary
    print("📊 FEATURE STATISTICS SUMMARY")
    print("-"*80)
    
    stats_df = df[feature_cols].agg(['mean', 'std', 'min', 'max', 'nunique'])
    stats_df.loc['variance'] = df[feature_cols].var()
    
    # Show features with potential issues
    print("\nFeatures sorted by variance (lowest first):")
    variances = df[feature_cols].var().sort_values()
    
    print(f"\n{'Feature':<30} {'Variance':>12} {'Unique':>8} {'Mean':>10} {'Std':>10}")
    print("-"*80)
    
    for col in variances.head(20).index:
        var = variances[col]
        unique = df[col].nunique()
        mean = df[col].mean()
        std = df[col].std()
        
        status = "❌" if var == 0 else "⚠️" if var < 0.001 else "✅"
        print(f"{status} {col:<28} {var:>12.6f} {unique:>8} {mean:>10.4f} {std:>10.4f}")
    
    print()
    
    # 6. Summary of problematic features
    print("="*80)
    print("SUMMARY - PROBLEMATIC FEATURES")
    print("="*80)
    print()
    
    all_problematic = set()
    
    if zero_features:
        print(f"❌ All-zero features ({len(zero_features)}):")
        for feat in zero_features:
            print(f"   - {feat}")
            all_problematic.add(feat)
        print()
    
    if constant_features:
        print(f"❌ Constant features ({len(constant_features)}):")
        for feat in constant_features:
            print(f"   - {feat}")
            all_problematic.add(feat)
        print()
    
    if low_variance_features:
        print(f"⚠️  Low variance features ({len(low_variance_features)}):")
        for feat, var in sorted(low_variance_features, key=lambda x: x[1]):
            print(f"   - {feat:<30} (variance = {var:.6f})")
            all_problematic.add(feat)
        print()
    
    # Overall assessment
    print("="*80)
    print("OVERALL ASSESSMENT")
    print("="*80)
    print()
    
    total_features = len(feature_cols)
    problematic_count = len(all_problematic)
    healthy_count = total_features - problematic_count
    
    print(f"Total features: {total_features}")
    print(f"Healthy features: {healthy_count} ({healthy_count/total_features*100:.1f}%)")
    print(f"Problematic features: {problematic_count} ({problematic_count/total_features*100:.1f}%)")
    print()
    
    if problematic_count == 0:
        print("✅ EXCELLENT! All features are healthy and informative!")
    elif problematic_count < total_features * 0.1:
        print("✅ GOOD! Most features are healthy. Consider removing problematic ones.")
    elif problematic_count < total_features * 0.3:
        print("⚠️  MODERATE! Several features may not be useful for training.")
    else:
        print("❌ CONCERNING! Many features have issues. Review feature extraction.")
    
    print()
    
    if all_problematic:
        print("💡 RECOMMENDATION:")
        print("-"*80)
        print("Consider removing these features before training:")
        print()
        print("# Add to your training script:")
        print("features_to_drop = [")
        for feat in sorted(all_problematic):
            print(f"    '{feat}',")
        print("]")
        print("df = df.drop(columns=features_to_drop)")
        print()
    
    # Save report
    report_file = Path("dataset/feature_quality_report.txt")
    with open(report_file, 'w') as f:
        f.write("FEATURE QUALITY REPORT\n")
        f.write("="*80 + "\n\n")
        f.write(f"Total features: {total_features}\n")
        f.write(f"Healthy features: {healthy_count}\n")
        f.write(f"Problematic features: {problematic_count}\n\n")
        
        if zero_features:
            f.write("All-zero features:\n")
            for feat in zero_features:
                f.write(f"  - {feat}\n")
            f.write("\n")
        
        if constant_features:
            f.write("Constant features:\n")
            for feat in constant_features:
                f.write(f"  - {feat}\n")
            f.write("\n")
        
        if low_variance_features:
            f.write("Low variance features:\n")
            for feat, var in sorted(low_variance_features, key=lambda x: x[1]):
                f.write(f"  - {feat}: variance = {var:.6f}\n")
            f.write("\n")
    
    print(f"💾 Report saved to: {report_file}")
    print()
    print("="*80)

if __name__ == "__main__":
    main()