/* Complete RC4 Implementation */
#include <stdio.h>
#include <stdint.h>
#include <string.h>

typedef struct {
    uint8_t S[256];
    int i, j;
} RC4_CTX;

/* RC4 Key Scheduling Algorithm */
void rc4_init(RC4_CTX *ctx, const uint8_t *key, int keylen) {
    for (int i = 0; i < 256; i++) {
        ctx->S[i] = i;
    }
    
    int j = 0;
    for (int i = 0; i < 256; i++) {
        j = (j + ctx->S[i] + key[i % keylen]) % 256;
        uint8_t temp = ctx->S[i];
        ctx->S[i] = ctx->S[j];
        ctx->S[j] = temp;
    }
    
    ctx->i = 0;
    ctx->j = 0;
}

/* RC4 Pseudo-Random Generation Algorithm */
uint8_t rc4_output(RC4_CTX *ctx) {
    ctx->i = (ctx->i + 1) % 256;
    ctx->j = (ctx->j + ctx->S[ctx->i]) % 256;
    
    uint8_t temp = ctx->S[ctx->i];
    ctx->S[ctx->i] = ctx->S[ctx->j];
    ctx->S[ctx->j] = temp;
    
    return ctx->S[(ctx->S[ctx->i] + ctx->S[ctx->j]) % 256];
}

/* RC4 Encrypt/Decrypt */
void rc4_crypt(RC4_CTX *ctx, const uint8_t *input, uint8_t *output, int len) {
    for (int n = 0; n < len; n++) {
        output[n] = input[n] ^ rc4_output(ctx);
    }
}

/* RC4 Key Schedule */
void rc4_key_schedule(uint8_t *S, const uint8_t *key, int keylen) {
    for (int i = 0; i < 256; i++) {
        S[i] = i;
    }
    
    int j = 0;
    for (int i = 0; i < 256; i++) {
        j = (j + S[i] + key[i % keylen]) % 256;
        uint8_t temp = S[i];
        S[i] = S[j];
        S[j] = temp;
    }
}

/* RC4 Stream Generation */
void rc4_stream(uint8_t *S, uint8_t *output, int len) {
    int i = 0, j = 0;
    for (int n = 0; n < len; n++) {
        i = (i + 1) % 256;
        j = (j + S[i]) % 256;
        
        uint8_t temp = S[i];
        S[i] = S[j];
        S[j] = temp;
        
        output[n] = S[(S[i] + S[j]) % 256];
    }
}

int main() {
    RC4_CTX ctx;
    uint8_t key[] = "SecretKey123";
    uint8_t plaintext[] = "Hello RC4 Stream Cipher!";
    uint8_t ciphertext[sizeof(plaintext)];
    uint8_t decrypted[sizeof(plaintext)];
    
    printf("=== RC4 Encryption ===\n");
    
    rc4_init(&ctx, key, strlen((char*)key));
    rc4_crypt(&ctx, plaintext, ciphertext, strlen((char*)plaintext));
    printf("Encrypted successfully\n");
    
    rc4_init(&ctx, key, strlen((char*)key));
    rc4_crypt(&ctx, ciphertext, decrypted, strlen((char*)plaintext));
    printf("Decrypted: %s\n", decrypted);
    
    return 0;
}