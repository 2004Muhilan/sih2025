# scripts_features/batch_extract_features.py
#!/usr/bin/env python3
"""
Batch feature extraction for all assembly files
Processes all 6,105 assemblies and saves to dataset/ folder
"""
from pathlib import Path
import pandas as pd
import json
from tqdm import tqdm
import sys

# Import the extractor
from extract_features import AssemblyFeatureExtractor, FEATURE_NAMES

# Class mapping
CLASS_MAPPING = {
    'aes': 0,
    'base64': 1,
    'des': 2,
    'ecc': 3,
    'hmac': 4,
    'md5': 5,
    'prng': 6,
    'rc4': 7,
    'rsa': 8,
    'sha1': 9,
    'sha256': 10,
    'xor_cipher': 11,
    'non_crypto': 12
}

def extract_metadata_from_path(asm_path):
    """Extract metadata from assembly file path"""
    parts = asm_path.parts
    
    # compiled_binaries/ARCH/ALGO/OPT/COMPILER/filename.s
    if len(parts) >= 6:
        arch = parts[1]
        algo = parts[2]
        opt = parts[3]
        compiler = parts[4]
        filename = parts[5]
        
        return {
            'architecture': arch,
            'algorithm': algo,
            'optimization': opt,
            'compiler': compiler,
            'filename': filename,
            'filepath': str(asm_path),
            'class_label': CLASS_MAPPING.get(algo.lower(), 12),
            'class_name': algo.upper()
        }
    
    return None

def main():
    print("="*70)
    print("BATCH FEATURE EXTRACTION - ALL ASSEMBLY FILES")
    print("="*70)
    print()
    
    # Create dataset directory
    dataset_dir = Path("dataset")
    dataset_dir.mkdir(exist_ok=True)
    print(f"📁 Output directory: {dataset_dir.absolute()}")
    print()
    
    # Find all assembly files
    compiled_dir = Path("compiled_binaries")
    asm_files = list(compiled_dir.rglob("*.s"))
    
    print(f"Found {len(asm_files)} assembly files")
    print()
    
    if len(asm_files) == 0:
        print("❌ No assembly files found!")
        return
    
    # Initialize extractor
    extractor = AssemblyFeatureExtractor()
    
    # Storage for results
    results = []
    failed_files = []
    
    # Process all files with progress bar
    print("Extracting features...")
    for asm_file in tqdm(asm_files, desc="Processing"):
        try:
            # Extract metadata
            metadata = extract_metadata_from_path(asm_file)
            
            if metadata is None:
                failed_files.append((str(asm_file), "Invalid path structure"))
                continue
            
            # Extract features
            features = extractor.extract_features(asm_file)
            
            # Combine metadata and features
            result = {**metadata, **features}
            results.append(result)
            
        except Exception as e:
            failed_files.append((str(asm_file), str(e)))
    
    print()
    print("="*70)
    print("EXTRACTION SUMMARY")
    print("="*70)
    print(f"✅ Successfully processed: {len(results)} files")
    print(f"❌ Failed: {len(failed_files)} files")
    print()
    
    if results:
        # Convert to DataFrame
        df = pd.DataFrame(results)
        
        # Show dataset statistics
        print("📊 DATASET STATISTICS")
        print("-"*70)
        print(f"Total samples: {len(df)}")
        print(f"Features per sample: {len(FEATURE_NAMES)}")
        print(f"Metadata fields: {len(df.columns) - len(FEATURE_NAMES)}")
        print()
        
        print("Class distribution:")
        class_counts = df['class_name'].value_counts().sort_index()
        for class_name, count in class_counts.items():
            print(f"  {class_name:12s}: {count:5d} samples")
        print()
        
        print("Architecture distribution:")
        arch_counts = df['architecture'].value_counts().sort_index()
        for arch, count in arch_counts.items():
            print(f"  {arch:12s}: {count:5d} samples")
        print()
        
        # Save to CSV in dataset/ folder
        output_csv = dataset_dir / "dataset_features.csv"
        df.to_csv(output_csv, index=False)
        print(f"💾 Saved features to: {output_csv}")
        print(f"   Size: {output_csv.stat().st_size / 1024 / 1024:.2f} MB")
        print()
        
        # Save metadata summary in dataset/ folder
        summary = {
            'total_samples': len(df),
            'num_features': len(FEATURE_NAMES),
            'feature_names': FEATURE_NAMES,
            'class_mapping': CLASS_MAPPING,
            'class_distribution': class_counts.to_dict(),
            'architecture_distribution': arch_counts.to_dict(),
            'failed_files': len(failed_files)
        }
        
        summary_json = dataset_dir / "dataset_summary.json"
        with open(summary_json, 'w') as f:
            json.dump(summary, f, indent=2)
        print(f"💾 Saved summary to: {summary_json}")
        print()
        
        # Show sample features
        print("📋 SAMPLE FEATURES (first 3 rows):")
        print("-"*70)
        sample_cols = ['filename', 'class_name', 'architecture', 'num_instructions', 
                      'xor_count', 'bitwise_freq', 'control_flow_freq']
        print(df[sample_cols].head(3).to_string(index=False))
        print()
        
        # Save failed files log if any
        if failed_files:
            failed_log = dataset_dir / "failed_files.txt"
            with open(failed_log, 'w') as f:
                for filepath, error in failed_files:
                    f.write(f"{filepath}\n  Error: {error}\n\n")
            print(f"💾 Saved failed files log to: {failed_log}")
            print()
    
    # Report failed files
    if failed_files:
        print("⚠️  FAILED FILES:")
        print("-"*70)
        for filepath, error in failed_files[:10]:
            print(f"  {Path(filepath).name}")
            print(f"    Error: {error}")
        
        if len(failed_files) > 10:
            print(f"  ... and {len(failed_files) - 10} more")
        print()
    
    print("="*70)
    print("🎉 FEATURE EXTRACTION COMPLETE!")
    print("="*70)
    print()
    print(f"📂 All files saved in: {dataset_dir.absolute()}")
    print("   - dataset_features.csv (main dataset)")
    print("   - dataset_summary.json (statistics)")
    if failed_files:
        print("   - failed_files.txt (error log)")
    print()
    print("📌 NEXT STEPS:")
    print("   1. Verify dataset: python3 scripts_features/verify_dataset.py")
    print("   2. Split into train/val/test sets")
    print("   3. Begin model training")
    print()

if __name__ == "__main__":
    main()