# model/new_model/hybrid_model.py
"""
Hybrid CNN + GNN + Transformer Model for Crypto Function Classification
(Using torch-geometric with torch-scatter/sparse)
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import GCNConv, global_mean_pool, global_max_pool
from torch_geometric.data import Data, Batch
import math

class CNNFeatureExtractor(nn.Module):
    """
    CNN for extracting local patterns from 56D feature vector
    Treats features as a 1D sequence
    """
    
    def __init__(self, input_dim=56, output_dim=128):
        super(CNNFeatureExtractor, self).__init__()
        
        # Reshape to (batch, 1, 56) for Conv1D
        self.conv1 = nn.Conv1d(1, 32, kernel_size=3, padding=1)
        self.bn1 = nn.BatchNorm1d(32)
        self.pool1 = nn.MaxPool1d(2)
        
        self.conv2 = nn.Conv1d(32, 64, kernel_size=3, padding=1)
        self.bn2 = nn.BatchNorm1d(64)
        self.pool2 = nn.MaxPool1d(2)
        
        self.conv3 = nn.Conv1d(64, 128, kernel_size=3, padding=1)
        self.bn3 = nn.BatchNorm1d(128)
        
        # Adaptive pooling to fixed size
        self.adaptive_pool = nn.AdaptiveAvgPool1d(1)
        
        # Final projection to output_dim
        self.fc = nn.Linear(128, output_dim)
        self.dropout = nn.Dropout(0.3)
        
    def forward(self, x):
        # x shape: (batch, 56)
        x = x.unsqueeze(1)  # (batch, 1, 56)
        
        # Conv layers
        x = F.relu(self.bn1(self.conv1(x)))
        x = self.pool1(x)  # (batch, 32, 28)
        
        x = F.relu(self.bn2(self.conv2(x)))
        x = self.pool2(x)  # (batch, 64, 14)
        
        x = F.relu(self.bn3(self.conv3(x)))  # (batch, 128, 14)
        
        # Global pooling
        x = self.adaptive_pool(x)  # (batch, 128, 1)
        x = x.squeeze(-1)  # (batch, 128)
        
        # Final projection
        x = self.dropout(x)
        x = self.fc(x)  # (batch, output_dim)
        
        return x

class GNNFeatureExtractor(nn.Module):
    """
    GNN for capturing relationships between feature groups
    Uses torch-geometric GCNConv with proper batching
    """
    
    def __init__(self, input_dim=56, hidden_dim=64, output_dim=128, num_nodes=7):
        super(GNNFeatureExtractor, self).__init__()
        
        self.num_nodes = num_nodes
        # 56 features / 7 nodes = 8 features per node
        self.features_per_node = input_dim // num_nodes
        
        # GCN layers
        self.conv1 = GCNConv(self.features_per_node, hidden_dim)
        self.bn1 = nn.BatchNorm1d(hidden_dim)
        
        self.conv2 = GCNConv(hidden_dim, hidden_dim)
        self.bn2 = nn.BatchNorm1d(hidden_dim)
        
        # Projection after pooling
        self.fc = nn.Linear(hidden_dim * 2, output_dim)  # *2 for mean+max pooling
        self.dropout = nn.Dropout(0.3)
        
        # Pre-compute fully-connected edge index for a single graph
        self.register_buffer('base_edge_index', self._create_fully_connected_edges(num_nodes))
        
    def _create_fully_connected_edges(self, num_nodes):
        """Create fully-connected graph edges (no self-loops)"""
        edges = []
        for i in range(num_nodes):
            for j in range(num_nodes):
                if i != j:  # No self-loops
                    edges.append([i, j])
        
        edge_index = torch.tensor(edges, dtype=torch.long).t()  # (2, num_edges)
        return edge_index
    
    def forward(self, x):
        # x shape: (batch, 56)
        batch_size = x.size(0)
        
        # Reshape into nodes: (batch, 7, 8)
        x_nodes = x.view(batch_size, self.num_nodes, self.features_per_node)
        
        # Create batched graph
        # Flatten nodes: (batch * 7, 8)
        x_flat = x_nodes.reshape(batch_size * self.num_nodes, self.features_per_node)
        
        # Create batched edge index
        edge_index_list = []
        for b in range(batch_size):
            batch_edges = self.base_edge_index + (b * self.num_nodes)
            edge_index_list.append(batch_edges)
        
        edge_index = torch.cat(edge_index_list, dim=1)
        
        # Create batch tensor for global pooling
        batch_tensor = torch.arange(batch_size, device=x.device).repeat_interleave(self.num_nodes)
        
        # GCN forward
        x_flat = F.relu(self.bn1(self.conv1(x_flat, edge_index)))
        x_flat = F.relu(self.bn2(self.conv2(x_flat, edge_index)))
        
        # Global pooling using torch_geometric utilities
        x_mean = global_mean_pool(x_flat, batch_tensor)  # (batch, hidden_dim)
        x_max = global_max_pool(x_flat, batch_tensor)    # (batch, hidden_dim)
        
        # Concatenate pooled features
        x_pooled = torch.cat([x_mean, x_max], dim=-1)  # (batch, hidden_dim*2)
        
        # Final projection
        x_pooled = self.dropout(x_pooled)
        out = self.fc(x_pooled)  # (batch, output_dim)
        
        return out

class TransformerFeatureExtractor(nn.Module):
    """
    Transformer for capturing long-range dependencies in features
    Treats features as a sequence with positional encoding
    """
    
    def __init__(self, input_dim=56, d_model=128, nhead=4, num_layers=2, output_dim=128):
        super(TransformerFeatureExtractor, self).__init__()
        
        # Project input features to d_model
        self.input_projection = nn.Linear(1, d_model)  # Each feature as a token
        
        # Positional encoding (max_len needs to include CLS token)
        self.pos_encoder = PositionalEncoding(d_model, max_len=input_dim + 10)
        
        # Transformer encoder
        encoder_layer = nn.TransformerEncoderLayer(
            d_model=d_model,
            nhead=nhead,
            dim_feedforward=d_model * 4,
            dropout=0.3,
            batch_first=True
        )
        self.transformer = nn.TransformerEncoder(encoder_layer, num_layers=num_layers)
        
        # CLS token for classification
        self.cls_token = nn.Parameter(torch.randn(1, 1, d_model))
        
        # Output projection
        self.fc = nn.Linear(d_model, output_dim)
        self.dropout = nn.Dropout(0.3)
        
    def forward(self, x):
        # x shape: (batch, 56)
        batch_size = x.size(0)
        
        # Treat each feature as a token: (batch, 56, 1)
        x = x.unsqueeze(-1)
        
        # Project to d_model: (batch, 56, d_model)
        x = self.input_projection(x)
        
        # Add CLS token: (batch, 57, d_model)
        cls_tokens = self.cls_token.expand(batch_size, -1, -1)
        x = torch.cat([cls_tokens, x], dim=1)
        
        # Add positional encoding
        x = self.pos_encoder(x)
        
        # Transformer encoding
        x = self.transformer(x)  # (batch, 57, d_model)
        
        # Extract CLS token representation
        cls_output = x[:, 0, :]  # (batch, d_model)
        
        # Project to output_dim
        cls_output = self.dropout(cls_output)
        out = self.fc(cls_output)  # (batch, output_dim)
        
        return out

class PositionalEncoding(nn.Module):
    """Positional encoding for Transformer"""
    
    def __init__(self, d_model, max_len=100):
        super(PositionalEncoding, self).__init__()
        
        pe = torch.zeros(max_len, d_model)
        position = torch.arange(0, max_len, dtype=torch.float).unsqueeze(1)
        div_term = torch.exp(torch.arange(0, d_model, 2).float() * (-math.log(10000.0) / d_model))
        
        pe[:, 0::2] = torch.sin(position * div_term)
        pe[:, 1::2] = torch.cos(position * div_term)
        
        pe = pe.unsqueeze(0)  # (1, max_len, d_model)
        self.register_buffer('pe', pe)
        
    def forward(self, x):
        # x shape: (batch, seq_len, d_model)
        x = x + self.pe[:, :x.size(1), :]
        return x

class HybridCryptoClassifier(nn.Module):
    """
    Hybrid CNN + GNN + Transformer model for crypto function classification
    """
    
    def __init__(self, input_dim=56, num_classes=13, fusion_type='concat'):
        super(HybridCryptoClassifier, self).__init__()
        
        self.fusion_type = fusion_type
        
        # Three feature extractors
        self.cnn = CNNFeatureExtractor(input_dim, output_dim=128)
        self.gnn = GNNFeatureExtractor(input_dim, output_dim=128)
        self.transformer = TransformerFeatureExtractor(input_dim, output_dim=128)
        
        # Fusion layer
        if fusion_type == 'attention':
            self.attention_weights = nn.Linear(128 * 3, 3)
        
        # MLP Classifier (DIFFERENT ARCHITECTURES)
        if fusion_type == 'concat':
            # For concat: 384 -> 256 -> 128 -> 13
            self.classifier = nn.Sequential(
                nn.Linear(384, 256),
                nn.ReLU(),
                nn.Dropout(0.4),
                nn.BatchNorm1d(256),
                nn.Linear(256, 128),
                nn.ReLU(),
                nn.Dropout(0.4),
                nn.BatchNorm1d(128),
                nn.Linear(128, num_classes)
            )
        else:  # attention
            # For attention: 128 -> 256 -> 128 -> 13
            self.classifier = nn.Sequential(
                nn.Linear(128, 256),
                nn.ReLU(),
                nn.Dropout(0.4),
                nn.BatchNorm1d(256),
                nn.Linear(256, 128),
                nn.ReLU(),
                nn.Dropout(0.4),
                nn.BatchNorm1d(128),
                nn.Linear(128, num_classes)
            )
        
    def forward(self, x):
        # Extract features from each modality
        cnn_features = self.cnn(x)  # (batch, 128)
        gnn_features = self.gnn(x)  # (batch, 128)
        transformer_features = self.transformer(x)  # (batch, 128)
        
        # Fusion
        if self.fusion_type == 'concat':
            # Simple concatenation
            fused = torch.cat([cnn_features, gnn_features, transformer_features], dim=-1)  # (batch, 384)
        
        elif self.fusion_type == 'attention':
            # Attention-based fusion
            all_features = torch.stack([cnn_features, gnn_features, transformer_features], dim=1)  # (batch, 3, 128)
            
            # Compute attention weights
            attention_input = torch.cat([cnn_features, gnn_features, transformer_features], dim=-1)
            attention_scores = F.softmax(self.attention_weights(attention_input), dim=-1)  # (batch, 3)
            
            # Weighted sum
            fused = torch.sum(all_features * attention_scores.unsqueeze(-1), dim=1)  # (batch, 128)
        
        # Classification
        logits = self.classifier(fused)  # (batch, num_classes)
        
        return logits

if __name__ == "__main__":
    # Test model
    print("="*70)
    print("TESTING HYBRID MODEL (with torch-geometric)")
    print("="*70)
    print()
    
    # Create model
    model = HybridCryptoClassifier(input_dim=56, num_classes=13, fusion_type='concat')
    
    # Count parameters
    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    
    print(f"Total parameters: {total_params:,}")
    print(f"Trainable parameters: {trainable_params:,}")
    print()
    
    # Test forward pass
    batch_size = 32
    x = torch.randn(batch_size, 56)
    
    with torch.no_grad():
        output = model(x)
    
    print(f"Input shape: {x.shape}")
    print(f"Output shape: {output.shape}")
    print(f"Output (logits) sample: {output[0, :5]}")
    print()
    
    print("✅ Model architecture working!")
    print()
    print("Model components:")
    print("  - CNN: Conv1D layers for local patterns")
    print("  - GNN: GCNConv with torch-geometric for graph relationships")
    print("  - Transformer: Self-attention for long-range dependencies")
    print("  - Fusion: Concatenation (384-dim)")
    print("  - Classifier: MLP (384 → 256 → 128 → 13)")