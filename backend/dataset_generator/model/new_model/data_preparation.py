# model/new_model/data_preparation.py
"""
Data preparation for hybrid CNN + GNN + Transformer model
- Load dataset
- Split into train/val/test
- Normalize features
- Prepare inputs for each modality
"""

import pandas as pd
import numpy as np
from pathlib import Path
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
import torch
from torch.utils.data import Dataset, DataLoader
import json
import pickle

class CryptoDataset(Dataset):
    """
    PyTorch Dataset for crypto function classification
    Returns data for all three modalities: CNN, GNN, Transformer
    """
    
    def __init__(self, features, labels, metadata, asm_sequences=None):
        """
        Args:
            features: numpy array of shape (n_samples, 56) - for CNN and GNN
            labels: numpy array of shape (n_samples,) - class labels
            metadata: dict with architecture, algorithm info
            asm_sequences: list of tokenized assembly sequences - for Transformer
        """
        self.features = torch.FloatTensor(features)
        self.labels = torch.LongTensor(labels)
        self.metadata = metadata
        self.asm_sequences = asm_sequences
        
    def __len__(self):
        return len(self.features)
    
    def __getitem__(self, idx):
        sample = {
            'features': self.features[idx],  # For CNN and GNN
            'label': self.labels[idx],
            'metadata': {k: v[idx] for k, v in self.metadata.items()}
        }
        
        if self.asm_sequences is not None:
            sample['asm_sequence'] = self.asm_sequences[idx]
        
        return sample

def load_dataset(dataset_path='../../dataset_generator/new_dataset_generator/dataset/dataset_features_cleaned.csv'):
    """Load the cleaned dataset"""
    
    print("="*70)
    print("LOADING DATASET")
    print("="*70)
    print()
    
    df = pd.read_csv(dataset_path)
    
    print(f"Dataset shape: {df.shape}")
    print(f"Classes: {df['class_name'].nunique()}")
    print()
    
    # Separate features and metadata
    metadata_cols = ['architecture', 'algorithm', 'optimization', 'compiler', 
                    'filename', 'filepath', 'class_label', 'class_name']
    feature_cols = [col for col in df.columns if col not in metadata_cols]
    
    print(f"Feature columns: {len(feature_cols)}")
    print(f"Metadata columns: {len(metadata_cols)}")
    print()
    
    # Extract features and labels
    X = df[feature_cols].values
    y = df['class_label'].values
    
    # Extract metadata
    metadata = {
        'architecture': df['architecture'].values,
        'algorithm': df['algorithm'].values,
        'optimization': df['optimization'].values,
        'compiler': df['compiler'].values,
        'filepath': df['filepath'].values,
        'class_name': df['class_name'].values
    }
    
    return X, y, metadata, feature_cols

def split_dataset(X, y, metadata, test_size=0.15, val_size=0.15, random_state=42):
    """
    Split dataset into train/val/test with stratification
    
    Args:
        X: features
        y: labels
        metadata: metadata dict
        test_size: proportion for test set
        val_size: proportion for validation set (from remaining after test)
        random_state: random seed
    
    Returns:
        X_train, X_val, X_test, y_train, y_val, y_test, 
        metadata_train, metadata_val, metadata_test
    """
    
    print("="*70)
    print("SPLITTING DATASET")
    print("="*70)
    print()
    
    # First split: separate test set
    X_temp, X_test, y_temp, y_test = train_test_split(
        X, y, test_size=test_size, random_state=random_state, stratify=y
    )
    
    # Extract metadata for test set
    test_indices = [i for i, label in enumerate(y) if label in y_test]
    metadata_test = {k: v[test_indices] for k, v in metadata.items()}
    
    # Second split: separate train and validation
    val_size_adjusted = val_size / (1 - test_size)  # Adjust val size
    X_train, X_val, y_train, y_val = train_test_split(
        X_temp, y_temp, test_size=val_size_adjusted, random_state=random_state, stratify=y_temp
    )
    
    # Extract metadata for train and val
    train_indices = [i for i, label in enumerate(y_temp) if label in y_train]
    val_indices = [i for i, label in enumerate(y_temp) if label in y_val]
    
    metadata_train = {k: v[train_indices] for k, v in metadata.items()}
    metadata_val = {k: v[val_indices] for k, v in metadata.items()}
    
    # Print split statistics
    print(f"Total samples: {len(X)}")
    print(f"Train samples: {len(X_train)} ({len(X_train)/len(X)*100:.1f}%)")
    print(f"Val samples:   {len(X_val)} ({len(X_val)/len(X)*100:.1f}%)")
    print(f"Test samples:  {len(X_test)} ({len(X_test)/len(X)*100:.1f}%)")
    print()
    
    # Check class distribution
    print("Class distribution:")
    print(f"  Train: {np.bincount(y_train)}")
    print(f"  Val:   {np.bincount(y_val)}")
    print(f"  Test:  {np.bincount(y_test)}")
    print()
    
    return X_train, X_val, X_test, y_train, y_val, y_test, metadata_train, metadata_val, metadata_test

def normalize_features(X_train, X_val, X_test):
    """
    Normalize features using StandardScaler
    Fit on train, transform train/val/test
    """
    
    print("="*70)
    print("NORMALIZING FEATURES")
    print("="*70)
    print()
    
    scaler = StandardScaler()
    
    # Fit on training data only
    X_train_scaled = scaler.fit_transform(X_train)
    X_val_scaled = scaler.transform(X_val)
    X_test_scaled = scaler.transform(X_test)
    
    print(f"Feature means (train): min={X_train_scaled.mean(axis=0).min():.4f}, max={X_train_scaled.mean(axis=0).max():.4f}")
    print(f"Feature stds (train):  min={X_train_scaled.std(axis=0).min():.4f}, max={X_train_scaled.std(axis=0).max():.4f}")
    print()
    
    return X_train_scaled, X_val_scaled, X_test_scaled, scaler

def create_dataloaders(X_train, X_val, X_test, y_train, y_val, y_test,
                       metadata_train, metadata_val, metadata_test,
                       batch_size=32):
    """Create PyTorch DataLoaders"""
    
    print("="*70)
    print("CREATING DATALOADERS")
    print("="*70)
    print()
    
    # Create datasets
    train_dataset = CryptoDataset(X_train, y_train, metadata_train)
    val_dataset = CryptoDataset(X_val, y_val, metadata_val)
    test_dataset = CryptoDataset(X_test, y_test, metadata_test)
    
    # Create dataloaders
    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True, num_workers=0)
    val_loader = DataLoader(val_dataset, batch_size=batch_size, shuffle=False, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False, num_workers=0)
    
    print(f"Batch size: {batch_size}")
    print(f"Train batches: {len(train_loader)}")
    print(f"Val batches:   {len(val_loader)}")
    print(f"Test batches:  {len(test_loader)}")
    print()
    
    return train_loader, val_loader, test_loader

def prepare_data(dataset_path, batch_size=32, random_state=42):
    """
    Main function to prepare all data
    
    Returns:
        train_loader, val_loader, test_loader, scaler, feature_cols, class_counts
    """
    
    # Load dataset
    X, y, metadata, feature_cols = load_dataset(dataset_path)
    
    # Split dataset
    X_train, X_val, X_test, y_train, y_val, y_test, \
    metadata_train, metadata_val, metadata_test = split_dataset(X, y, metadata, random_state=random_state)
    
    # Normalize features
    X_train_scaled, X_val_scaled, X_test_scaled, scaler = normalize_features(X_train, X_val, X_test)
    
    # Create dataloaders
    train_loader, val_loader, test_loader = create_dataloaders(
        X_train_scaled, X_val_scaled, X_test_scaled,
        y_train, y_val, y_test,
        metadata_train, metadata_val, metadata_test,
        batch_size=batch_size
    )
    
    # Calculate class weights for imbalanced dataset
    class_counts = np.bincount(y_train)
    
    print("="*70)
    print("DATA PREPARATION COMPLETE")
    print("="*70)
    print()
    
    return train_loader, val_loader, test_loader, scaler, feature_cols, class_counts

def save_preprocessing_artifacts(scaler, feature_cols, output_dir='preprocessing'):
    """Save scaler and feature columns for inference"""
    
    output_path = Path(output_dir)
    output_path.mkdir(exist_ok=True)
    
    # Save scaler
    scaler_path = output_path / 'scaler.pkl'
    with open(scaler_path, 'wb') as f:
        pickle.dump(scaler, f)
    
    # Save feature columns
    features_path = output_path / 'feature_columns.json'
    with open(features_path, 'w') as f:
        json.dump(feature_cols, f, indent=2)
    
    print(f"💾 Saved preprocessing artifacts to: {output_path}")
    print(f"   - scaler.pkl")
    print(f"   - feature_columns.json")
    print()

if __name__ == "__main__":
    # Test data preparation
    train_loader, val_loader, test_loader, scaler, feature_cols, class_counts = prepare_data(
        dataset_path='../../dataset_generator/new_dataset_generator/dataset/dataset_features_cleaned.csv',
        batch_size=32
    )
    
    # Save preprocessing artifacts
    save_preprocessing_artifacts(scaler, feature_cols)
    
    # Test a batch
    print("Testing data loading...")
    for batch in train_loader:
        print(f"Batch features shape: {batch['features'].shape}")
        print(f"Batch labels shape: {batch['label'].shape}")
        break