/*
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
