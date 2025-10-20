# model/new_model/train.py
"""
Training script for Hybrid CNN + GNN + Transformer Model
Features:
- Learning rate scheduling
- Early stopping
- Checkpointing
- Comprehensive metrics (F1, confusion matrix)
- Per-architecture evaluation
"""

import torch
import torch.nn as nn
import torch.optim as optim
from torch.optim.lr_scheduler import ReduceLROnPlateau, CosineAnnealingLR
import numpy as np
import json
from pathlib import Path
from tqdm import tqdm
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import (
    confusion_matrix, classification_report, 
    f1_score, accuracy_score, precision_recall_fscore_support
)
import time

# Import our modules
from hybrid_model import HybridCryptoClassifier
from data_preparation import prepare_data, save_preprocessing_artifacts

# Class names
CLASS_NAMES = [
    'AES', 'BASE64', 'DES', 'ECC', 'HMAC', 'MD5', 
    'NON_CRYPTO', 'PRNG', 'RC4', 'RSA', 'SHA1', 'SHA256', 'XOR_CIPHER'
]

class Trainer:
    """Training manager for hybrid model"""
    
    def __init__(self, model, train_loader, val_loader, test_loader, 
                 device, output_dir='results', class_weights=None):
        
        self.model = model.to(device)
        self.train_loader = train_loader
        self.val_loader = val_loader
        self.test_loader = test_loader
        self.device = device
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)
        
        # Loss function with class weights
        if class_weights is not None:
            weights = torch.FloatTensor(class_weights).to(device)
            self.criterion = nn.CrossEntropyLoss(weight=weights)
        else:
            self.criterion = nn.CrossEntropyLoss()
        
        # Optimizer
        self.optimizer = optim.AdamW(
            model.parameters(), 
            lr=0.001, 
            weight_decay=0.01
        )
        
        # Learning rate scheduler
        self.scheduler = ReduceLROnPlateau(
            self.optimizer, 
            mode='max',  # Maximize F1 score
            factor=0.5, 
            patience=3, 
            verbose=True,
            min_lr=1e-6
        )
        
        # Tracking
        self.best_val_f1 = 0.0
        self.best_epoch = 0
        self.history = {
            'train_loss': [],
            'train_acc': [],
            'train_f1': [],
            'val_loss': [],
            'val_acc': [],
            'val_f1': [],
            'lr': []
        }
        
        # Early stopping
        self.patience = 20
        self.patience_counter = 0
        
    def train_epoch(self, epoch):
        """Train for one epoch"""
        
        self.model.train()
        total_loss = 0
        all_preds = []
        all_labels = []
        
        pbar = tqdm(self.train_loader, desc=f"Epoch {epoch} [Train]")
        
        for batch in pbar:
            features = batch['features'].to(self.device)
            labels = batch['label'].to(self.device)
            
            # Forward pass
            self.optimizer.zero_grad()
            outputs = self.model(features)
            loss = self.criterion(outputs, labels)
            
            # Backward pass
            loss.backward()
            
            # Gradient clipping
            torch.nn.utils.clip_grad_norm_(self.model.parameters(), max_norm=1.0)
            
            self.optimizer.step()
            
            # Track metrics
            total_loss += loss.item()
            preds = torch.argmax(outputs, dim=1)
            all_preds.extend(preds.cpu().numpy())
            all_labels.extend(labels.cpu().numpy())
            
            # Update progress bar
            pbar.set_postfix({'loss': loss.item()})
        
        # Calculate metrics
        avg_loss = total_loss / len(self.train_loader)
        accuracy = accuracy_score(all_labels, all_preds)
        f1_macro = f1_score(all_labels, all_preds, average='macro')
        
        return avg_loss, accuracy, f1_macro
    
    def validate(self, epoch):
        """Validate the model"""
        
        self.model.eval()
        total_loss = 0
        all_preds = []
        all_labels = []
        
        with torch.no_grad():
            pbar = tqdm(self.val_loader, desc=f"Epoch {epoch} [Val]")
            
            for batch in pbar:
                features = batch['features'].to(self.device)
                labels = batch['label'].to(self.device)
                
                # Forward pass
                outputs = self.model(features)
                loss = self.criterion(outputs, labels)
                
                # Track metrics
                total_loss += loss.item()
                preds = torch.argmax(outputs, dim=1)
                all_preds.extend(preds.cpu().numpy())
                all_labels.extend(labels.cpu().numpy())
        
        # Calculate metrics
        avg_loss = total_loss / len(self.val_loader)
        accuracy = accuracy_score(all_labels, all_preds)
        f1_macro = f1_score(all_labels, all_preds, average='macro')
        
        return avg_loss, accuracy, f1_macro, all_preds, all_labels
    
    def train(self, num_epochs=50):
        """Full training loop"""
        
        print("="*70)
        print("STARTING TRAINING")
        print("="*70)
        print()
        
        start_time = time.time()
        
        for epoch in range(1, num_epochs + 1):
            print(f"\n{'='*70}")
            print(f"EPOCH {epoch}/{num_epochs}")
            print(f"{'='*70}")
            
            # Train
            train_loss, train_acc, train_f1 = self.train_epoch(epoch)
            
            # Validate
            val_loss, val_acc, val_f1, val_preds, val_labels = self.validate(epoch)
            
            # Update scheduler
            self.scheduler.step(val_f1)
            current_lr = self.optimizer.param_groups[0]['lr']
            
            # Save history
            self.history['train_loss'].append(train_loss)
            self.history['train_acc'].append(train_acc)
            self.history['train_f1'].append(train_f1)
            self.history['val_loss'].append(val_loss)
            self.history['val_acc'].append(val_acc)
            self.history['val_f1'].append(val_f1)
            self.history['lr'].append(current_lr)
            
            # Print metrics
            print(f"\nResults:")
            print(f"  Train Loss: {train_loss:.4f} | Train Acc: {train_acc:.4f} | Train F1: {train_f1:.4f}")
            print(f"  Val Loss:   {val_loss:.4f} | Val Acc:   {val_acc:.4f} | Val F1:   {val_f1:.4f}")
            print(f"  Learning Rate: {current_lr:.6f}")
            
            # Save best model
            if val_f1 > self.best_val_f1:
                self.best_val_f1 = val_f1
                self.best_epoch = epoch
                self.save_checkpoint('best_model.pth', epoch, val_f1)
                print(f"  ✅ New best model saved! (F1: {val_f1:.4f})")
                self.patience_counter = 0
            else:
                self.patience_counter += 1
                print(f"  No improvement ({self.patience_counter}/{self.patience})")
            
            # Save periodic checkpoint
            if epoch % 10 == 0:
                self.save_checkpoint(f'checkpoint_epoch_{epoch}.pth', epoch, val_f1)
            
            # Early stopping
            if self.patience_counter >= self.patience:
                print(f"\n⚠️  Early stopping triggered at epoch {epoch}")
                print(f"Best validation F1: {self.best_val_f1:.4f} at epoch {self.best_epoch}")
                break
        
        # Training complete
        total_time = time.time() - start_time
        print(f"\n{'='*70}")
        print("TRAINING COMPLETE")
        print(f"{'='*70}")
        print(f"Total time: {total_time/60:.2f} minutes")
        print(f"Best epoch: {self.best_epoch}")
        print(f"Best validation F1: {self.best_val_f1:.4f}")
        print()
        
        # Save training history
        self.save_history()
        self.plot_training_curves()
    
    def save_checkpoint(self, filename, epoch, val_f1):
        """Save model checkpoint"""
        
        checkpoint_path = self.output_dir / filename
        
        torch.save({
            'epoch': epoch,
            'model_state_dict': self.model.state_dict(),
            'optimizer_state_dict': self.optimizer.state_dict(),
            'scheduler_state_dict': self.scheduler.state_dict(),
            'val_f1': val_f1,
            'history': self.history
        }, checkpoint_path)
    
    def save_history(self):
        """Save training history to JSON"""
        
        history_path = self.output_dir / 'training_history.json'
        
        with open(history_path, 'w') as f:
            json.dump(self.history, f, indent=2)
        
        print(f"💾 Training history saved to: {history_path}")
    
    def plot_training_curves(self):
        """Plot training curves"""
        
        fig, axes = plt.subplots(2, 2, figsize=(15, 10))
        
        epochs = range(1, len(self.history['train_loss']) + 1)
        
        # Loss
        axes[0, 0].plot(epochs, self.history['train_loss'], label='Train Loss', marker='o')
        axes[0, 0].plot(epochs, self.history['val_loss'], label='Val Loss', marker='s')
        axes[0, 0].set_xlabel('Epoch')
        axes[0, 0].set_ylabel('Loss')
        axes[0, 0].set_title('Training and Validation Loss')
        axes[0, 0].legend()
        axes[0, 0].grid(True)
        
        # Accuracy
        axes[0, 1].plot(epochs, self.history['train_acc'], label='Train Acc', marker='o')
        axes[0, 1].plot(epochs, self.history['val_acc'], label='Val Acc', marker='s')
        axes[0, 1].set_xlabel('Epoch')
        axes[0, 1].set_ylabel('Accuracy')
        axes[0, 1].set_title('Training and Validation Accuracy')
        axes[0, 1].legend()
        axes[0, 1].grid(True)
        
        # F1 Score
        axes[1, 0].plot(epochs, self.history['train_f1'], label='Train F1', marker='o')
        axes[1, 0].plot(epochs, self.history['val_f1'], label='Val F1', marker='s')
        axes[1, 0].set_xlabel('Epoch')
        axes[1, 0].set_ylabel('F1 Score')
        axes[1, 0].set_title('Training and Validation F1 Score')
        axes[1, 0].legend()
        axes[1, 0].grid(True)
        
        # Learning Rate
        axes[1, 1].plot(epochs, self.history['lr'], marker='o', color='red')
        axes[1, 1].set_xlabel('Epoch')
        axes[1, 1].set_ylabel('Learning Rate')
        axes[1, 1].set_title('Learning Rate Schedule')
        axes[1, 1].set_yscale('log')
        axes[1, 1].grid(True)
        
        plt.tight_layout()
        
        plot_path = self.output_dir / 'training_curves.png'
        plt.savefig(plot_path, dpi=300, bbox_inches='tight')
        print(f"📊 Training curves saved to: {plot_path}")
        plt.close()
    
    def evaluate_test_set(self):
        """Comprehensive evaluation on test set"""
        
        print("\n" + "="*70)
        print("EVALUATING ON TEST SET")
        print("="*70)
        print()
        
        # Load best model
        checkpoint_path = self.output_dir / 'best_model.pth'
        checkpoint = torch.load(checkpoint_path)
        self.model.load_state_dict(checkpoint['model_state_dict'])
        
        self.model.eval()
        all_preds = []
        all_labels = []
        all_metadata = {
            'architecture': [],
            'algorithm': [],
            'optimization': [],
            'compiler': []
        }
        
        with torch.no_grad():
            for batch in tqdm(self.test_loader, desc="Testing"):
                features = batch['features'].to(self.device)
                labels = batch['label'].to(self.device)
                
                outputs = self.model(features)
                preds = torch.argmax(outputs, dim=1)
                
                all_preds.extend(preds.cpu().numpy())
                all_labels.extend(labels.cpu().numpy())
                
                # Collect metadata
                for key in all_metadata.keys():
                    all_metadata[key].extend(batch['metadata'][key])
        
        # Overall metrics
        accuracy = accuracy_score(all_labels, all_preds)
        f1_macro = f1_score(all_labels, all_preds, average='macro')
        f1_micro = f1_score(all_labels, all_preds, average='micro')
        f1_weighted = f1_score(all_labels, all_preds, average='weighted')
        
        print(f"Overall Test Metrics:")
        print(f"  Accuracy:     {accuracy:.4f}")
        print(f"  F1 (macro):   {f1_macro:.4f}")
        print(f"  F1 (micro):   {f1_micro:.4f}")
        print(f"  F1 (weighted): {f1_weighted:.4f}")
        print()
        
        # Per-class metrics
        print("Per-Class Metrics:")
        print("-"*70)
        
        precision, recall, f1, support = precision_recall_fscore_support(
            all_labels, all_preds, average=None
        )
        
        for i, class_name in enumerate(CLASS_NAMES):
            print(f"{class_name:12s}: Precision={precision[i]:.3f}, Recall={recall[i]:.3f}, "
                  f"F1={f1[i]:.3f}, Support={support[i]}")
        print()
        
        # Confusion matrix
        self.plot_confusion_matrix(all_labels, all_preds)
        
        # Per-architecture performance
        self.evaluate_per_architecture(all_labels, all_preds, all_metadata)
        
        # Classification report
        report = classification_report(
            all_labels, all_preds, 
            target_names=CLASS_NAMES, 
            digits=3
        )
        
        report_path = self.output_dir / 'classification_report.txt'
        with open(report_path, 'w') as f:
            f.write(report)
        
        print(f"💾 Classification report saved to: {report_path}")
        
        # Save test metrics
        test_metrics = {
            'accuracy': float(accuracy),
            'f1_macro': float(f1_macro),
            'f1_micro': float(f1_micro),
            'f1_weighted': float(f1_weighted),
            'per_class': {
                CLASS_NAMES[i]: {
                    'precision': float(precision[i]),
                    'recall': float(recall[i]),
                    'f1': float(f1[i]),
                    'support': int(support[i])
                }
                for i in range(len(CLASS_NAMES))
            }
        }
        
        metrics_path = self.output_dir / 'test_metrics.json'
        with open(metrics_path, 'w') as f:
            json.dump(test_metrics, f, indent=2)
        
        print(f"💾 Test metrics saved to: {metrics_path}")
        print()
    
    def plot_confusion_matrix(self, labels, preds):
        """Plot confusion matrix"""
        
        cm = confusion_matrix(labels, preds)
        
        plt.figure(figsize=(14, 12))
        sns.heatmap(
            cm, 
            annot=True, 
            fmt='d', 
            cmap='Blues',
            xticklabels=CLASS_NAMES,
            yticklabels=CLASS_NAMES,
            cbar_kws={'label': 'Count'}
        )
        plt.xlabel('Predicted')
        plt.ylabel('True')
        plt.title('Confusion Matrix - Test Set')
        plt.tight_layout()
        
        cm_path = self.output_dir / 'confusion_matrix.png'
        plt.savefig(cm_path, dpi=300, bbox_inches='tight')
        print(f"📊 Confusion matrix saved to: {cm_path}")
        plt.close()
    
    def evaluate_per_architecture(self, labels, preds, metadata):
        """Evaluate performance per architecture"""
        
        print("Per-Architecture Performance:")
        print("-"*70)
        
        # DEBUG: Print what architectures we have
        all_archs = metadata['architecture']
        unique_archs = set(all_archs)
        print(f"DEBUG: Found architectures: {unique_archs}")
        print(f"DEBUG: Total samples: {len(all_archs)}")
        
        for arch in unique_archs:
            count = sum(1 for a in all_archs if a == arch)
            print(f"DEBUG: {arch} has {count} samples")
        print()
        
        architectures = sorted(unique_archs)
        
        arch_metrics = {}
        
        for arch in architectures:
            # Filter samples for this architecture
            arch_mask = [a == arch for a in metadata['architecture']]
            arch_labels = [labels[i] for i, m in enumerate(arch_mask) if m]
            arch_preds = [preds[i] for i, m in enumerate(arch_mask) if m]
            
            if len(arch_labels) == 0:
                print(f"{arch:12s}: No samples found!")
                continue
            
            # Calculate metrics
            acc = accuracy_score(arch_labels, arch_preds)
            f1 = f1_score(arch_labels, arch_preds, average='macro')
            
            arch_metrics[arch] = {
                'accuracy': float(acc),
                'f1_macro': float(f1),
                'samples': len(arch_labels)
            }
            
            print(f"{arch:12s}: Accuracy={acc:.3f}, F1={f1:.3f}, Samples={len(arch_labels)}")


def calculate_class_weights(class_counts):
    """Calculate class weights for imbalanced dataset"""
    
    total_samples = sum(class_counts)
    num_classes = len(class_counts)
    
    # Inverse frequency weighting
    weights = [total_samples / (num_classes * count) for count in class_counts]

    # BOOST WEAK CLASSES (HMAC=4, RC4=8, RSA=9)
    weights[4] *= 1.5  # HMAC
    weights[8] *= 1.5  # RC4
    weights[9] *= 1.5  # RSA
    
    return weights


def main():
    """Main training function"""
    
    print("="*70)
    print("HYBRID CNN + GNN + TRANSFORMER MODEL - TRAINING")
    print("="*70)
    print()
    
    # Device
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(f"Device: {device}")
    print()
    
    # Prepare data
    dataset_path = '../../dataset_generator/new_dataset_generator/dataset/dataset_features_cleaned.csv'
    
    train_loader, val_loader, test_loader, scaler, feature_cols, class_counts = prepare_data(
        dataset_path=dataset_path,
        batch_size=32,
        random_state=42
    )
    
    # Save preprocessing artifacts
    save_preprocessing_artifacts(scaler, feature_cols, output_dir='preprocessing')
    
    # Calculate class weights
    class_weights = calculate_class_weights(class_counts)
    print("Class weights:")
    for i, (name, weight) in enumerate(zip(CLASS_NAMES, class_weights)):
        print(f"  {name:12s}: {weight:.3f}")
    print()
    
    # Create model
    model = HybridCryptoClassifier(
        input_dim=56,
        num_classes=13,
        fusion_type='attention'
    )
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"Total parameters: {total_params:,}")
    print()
    
    # Create trainer
    trainer = Trainer(
        model=model,
        train_loader=train_loader,
        val_loader=val_loader,
        test_loader=test_loader,
        device=device,
        output_dir='results',
        class_weights=class_weights
    )
    
    # Train
    trainer.train(num_epochs=75)
    
    # Evaluate on test set
    trainer.evaluate_test_set()
    
    print("\n" + "="*70)
    print("🎉 TRAINING PIPELINE COMPLETE!")
    print("="*70)
    print()
    print("Saved artifacts:")
    print("  - results/best_model.pth")
    print("  - results/training_history.json")
    print("  - results/training_curves.png")
    print("  - results/confusion_matrix.png")
    print("  - results/test_metrics.json")
    print("  - results/classification_report.txt")
    print("  - preprocessing/scaler.pkl")
    print("  - preprocessing/feature_columns.json")
    print()


if __name__ == "__main__":
    main()