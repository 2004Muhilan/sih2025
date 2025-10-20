/*
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
