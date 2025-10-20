/*
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
