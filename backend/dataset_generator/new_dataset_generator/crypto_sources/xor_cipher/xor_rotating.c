/*
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
