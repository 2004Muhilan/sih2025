/*
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
