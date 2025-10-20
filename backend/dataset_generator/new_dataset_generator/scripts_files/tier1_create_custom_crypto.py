#!/usr/bin/env python3
"""
Create custom implementations for XOR Cipher and RC4
"""
import os
from pathlib import Path

def create_xor_cipher():
    """Create XOR cipher implementations"""
    print("Creating XOR Cipher implementations...")
    
    xor_dir = Path("crypto_sources/xor_cipher")
    xor_dir.mkdir(parents=True, exist_ok=True)
    
    # Implementation 1: Simple XOR
    xor_simple = """/*
 * Simple XOR Cipher Implementation
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

void xor_cipher_simple(uint8_t *data, size_t data_len, const uint8_t *key, size_t key_len) {
    for (size_t i = 0; i < data_len; i++) {
        data[i] ^= key[i % key_len];
    }
}

void xor_encrypt_simple(uint8_t *plaintext, size_t len, const uint8_t *key, size_t key_len, uint8_t *ciphertext) {
    memcpy(ciphertext, plaintext, len);
    xor_cipher_simple(ciphertext, len, key, key_len);
}

void xor_decrypt_simple(uint8_t *ciphertext, size_t len, const uint8_t *key, size_t key_len, uint8_t *plaintext) {
    memcpy(plaintext, ciphertext, len);
    xor_cipher_simple(plaintext, len, key, key_len);
}
"""
    
    # Implementation 2: XOR with rotating key
    xor_rotating = """/*
 * XOR Cipher with Rotating Key
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

static uint8_t rotate_left(uint8_t value, int shift) {
    return (value << shift) | (value >> (8 - shift));
}

void xor_cipher_rotating(uint8_t *data, size_t data_len, uint8_t *key, size_t key_len) {
    for (size_t i = 0; i < data_len; i++) {
        uint8_t key_byte = key[i % key_len];
        data[i] ^= key_byte;
        
        // Rotate key for next iteration
        key[i % key_len] = rotate_left(key_byte, 1);
    }
}

void xor_encrypt_rotating(uint8_t *plaintext, size_t len, uint8_t *key, size_t key_len, uint8_t *ciphertext) {
    memcpy(ciphertext, plaintext, len);
    
    // Copy key to avoid modifying original
    uint8_t key_copy[256];
    memcpy(key_copy, key, key_len);
    
    xor_cipher_rotating(ciphertext, len, key_copy, key_len);
}

void xor_decrypt_rotating(uint8_t *ciphertext, size_t len, uint8_t *key, size_t key_len, uint8_t *plaintext) {
    // For this variant, decryption is same as encryption with original key
    xor_encrypt_rotating(ciphertext, len, key, key_len, plaintext);
}
"""
    
    # Implementation 3: XOR with feedback
    xor_feedback = """/*
 * XOR Cipher with Feedback (similar to CFB mode)
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

void xor_cipher_feedback(uint8_t *data, size_t data_len, const uint8_t *key, size_t key_len, uint8_t *iv) {
    uint8_t feedback = (iv != NULL) ? *iv : 0x00;
    
    for (size_t i = 0; i < data_len; i++) {
        uint8_t key_byte = key[i % key_len] ^ feedback;
        uint8_t orig = data[i];
        data[i] ^= key_byte;
        feedback = orig;  // Use original byte as feedback
    }
}

void xor_encrypt_feedback(uint8_t *plaintext, size_t len, const uint8_t *key, size_t key_len, uint8_t iv, uint8_t *ciphertext) {
    memcpy(ciphertext, plaintext, len);
    xor_cipher_feedback(ciphertext, len, key, key_len, &iv);
}

void xor_decrypt_feedback(uint8_t *ciphertext, size_t len, const uint8_t *key, size_t key_len, uint8_t iv, uint8_t *plaintext) {
    uint8_t feedback = iv;
    
    for (size_t i = 0; i < len; i++) {
        uint8_t key_byte = key[i % key_len] ^ feedback;
        feedback = ciphertext[i];  // Use ciphertext as feedback
        plaintext[i] = ciphertext[i] ^ key_byte;
    }
}
"""
    
    # Write implementations
    with open(xor_dir / "xor_simple.c", "w") as f:
        f.write(xor_simple)
    print(f"  ✓ Created: {xor_dir / 'xor_simple.c'}")
    
    with open(xor_dir / "xor_rotating.c", "w") as f:
        f.write(xor_rotating)
    print(f"  ✓ Created: {xor_dir / 'xor_rotating.c'}")
    
    with open(xor_dir / "xor_feedback.c", "w") as f:
        f.write(xor_feedback)
    print(f"  ✓ Created: {xor_dir / 'xor_feedback.c'}")
    
    return [xor_dir / "xor_simple.c", xor_dir / "xor_rotating.c", xor_dir / "xor_feedback.c"]

def create_rc4():
    """Create RC4 implementations"""
    print("Creating RC4 implementations...")
    
    rc4_dir = Path("crypto_sources/rc4")
    rc4_dir.mkdir(parents=True, exist_ok=True)
    
    # Implementation 1: Standard RC4
    rc4_standard = """/*
 * RC4 (ARC4) Stream Cipher - Standard Implementation
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

typedef struct {
    uint8_t S[256];
    uint8_t i;
    uint8_t j;
} rc4_context;

void rc4_init(rc4_context *ctx, const uint8_t *key, size_t key_len) {
    // Initialize permutation
    for (int i = 0; i < 256; i++) {
        ctx->S[i] = i;
    }
    
    // Key scheduling algorithm (KSA)
    uint8_t j = 0;
    for (int i = 0; i < 256; i++) {
        j = (j + ctx->S[i] + key[i % key_len]) % 256;
        
        // Swap S[i] and S[j]
        uint8_t temp = ctx->S[i];
        ctx->S[i] = ctx->S[j];
        ctx->S[j] = temp;
    }
    
    ctx->i = 0;
    ctx->j = 0;
}

void rc4_crypt(rc4_context *ctx, uint8_t *data, size_t data_len) {
    // Pseudo-random generation algorithm (PRGA)
    for (size_t n = 0; n < data_len; n++) {
        ctx->i = (ctx->i + 1) % 256;
        ctx->j = (ctx->j + ctx->S[ctx->i]) % 256;
        
        // Swap S[i] and S[j]
        uint8_t temp = ctx->S[ctx->i];
        ctx->S[ctx->i] = ctx->S[ctx->j];
        ctx->S[ctx->j] = temp;
        
        // Generate keystream byte
        uint8_t K = ctx->S[(ctx->S[ctx->i] + ctx->S[ctx->j]) % 256];
        
        // XOR with data
        data[n] ^= K;
    }
}

void rc4_encrypt(const uint8_t *key, size_t key_len, uint8_t *plaintext, size_t len, uint8_t *ciphertext) {
    rc4_context ctx;
    rc4_init(&ctx, key, key_len);
    
    memcpy(ciphertext, plaintext, len);
    rc4_crypt(&ctx, ciphertext, len);
}

void rc4_decrypt(const uint8_t *key, size_t key_len, uint8_t *ciphertext, size_t len, uint8_t *plaintext) {
    // RC4 decryption is same as encryption
    rc4_encrypt(key, key_len, ciphertext, len, plaintext);
}
"""
    
    # Implementation 2: RC4-drop (drops first N bytes for security)
    rc4_drop = """/*
 * RC4-drop - Drops first 768 bytes of keystream for improved security
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

typedef struct {
    uint8_t S[256];
    uint8_t i;
    uint8_t j;
} rc4_drop_context;

void rc4_drop_init(rc4_drop_context *ctx, const uint8_t *key, size_t key_len, size_t drop_bytes) {
    // Initialize permutation
    for (int i = 0; i < 256; i++) {
        ctx->S[i] = i;
    }
    
    // Key scheduling algorithm (KSA)
    uint8_t j = 0;
    for (int i = 0; i < 256; i++) {
        j = (j + ctx->S[i] + key[i % key_len]) % 256;
        
        // Swap
        uint8_t temp = ctx->S[i];
        ctx->S[i] = ctx->S[j];
        ctx->S[j] = temp;
    }
    
    ctx->i = 0;
    ctx->j = 0;
    
    // Drop first N bytes of keystream
    uint8_t dummy;
    for (size_t n = 0; n < drop_bytes; n++) {
        ctx->i = (ctx->i + 1) % 256;
        ctx->j = (ctx->j + ctx->S[ctx->i]) % 256;
        
        uint8_t temp = ctx->S[ctx->i];
        ctx->S[ctx->i] = ctx->S[ctx->j];
        ctx->S[ctx->j] = temp;
    }
}

void rc4_drop_crypt(rc4_drop_context *ctx, uint8_t *data, size_t data_len) {
    for (size_t n = 0; n < data_len; n++) {
        ctx->i = (ctx->i + 1) % 256;
        ctx->j = (ctx->j + ctx->S[ctx->i]) % 256;
        
        uint8_t temp = ctx->S[ctx->i];
        ctx->S[ctx->i] = ctx->S[ctx->j];
        ctx->S[ctx->j] = temp;
        
        uint8_t K = ctx->S[(ctx->S[ctx->i] + ctx->S[ctx->j]) % 256];
        data[n] ^= K;
    }
}

void rc4_drop_encrypt(const uint8_t *key, size_t key_len, uint8_t *plaintext, size_t len, uint8_t *ciphertext) {
    rc4_drop_context ctx;
    rc4_drop_init(&ctx, key, key_len, 768);  // Drop first 768 bytes
    
    memcpy(ciphertext, plaintext, len);
    rc4_drop_crypt(&ctx, ciphertext, len);
}
"""
    
    # Write implementations
    with open(rc4_dir / "rc4_standard.c", "w") as f:
        f.write(rc4_standard)
    print(f"  ✓ Created: {rc4_dir / 'rc4_standard.c'}")
    
    with open(rc4_dir / "rc4_drop.c", "w") as f:
        f.write(rc4_drop)
    print(f"  ✓ Created: {rc4_dir / 'rc4_drop.c'}")
    
    return [rc4_dir / "rc4_standard.c", rc4_dir / "rc4_drop.c"]

def main():
    print("="*70)
    print("CREATING CUSTOM CRYPTO IMPLEMENTATIONS")
    print("="*70)
    
    xor_files = create_xor_cipher()
    print(f"\n✓ Created {len(xor_files)} XOR Cipher variants\n")
    
    rc4_files = create_rc4()
    print(f"\n✓ Created {len(rc4_files)} RC4 variants\n")
    
    print("="*70)
    print("CUSTOM IMPLEMENTATIONS COMPLETE")
    print("="*70)
    print(f"\nTotal files created: {len(xor_files) + len(rc4_files)}")
    print("\nNext steps:")
    print("  1. Review generated files in crypto_sources/")
    print("  2. Run extraction for TinyCrypt library")
    print("  3. Proceed to Tier 2 (sub-function decomposition)")

if __name__ == "__main__":
    main()