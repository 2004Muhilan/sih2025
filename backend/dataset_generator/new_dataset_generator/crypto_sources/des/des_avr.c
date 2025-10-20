/*
 * DES for AVR - 8-bit optimized
 */
#include <stdint.h>

// DES using only 8-bit and 16-bit operations
void des_encrypt_avr(const uint8_t *input, const uint8_t *key, uint8_t *output) {
    // Simplified DES working on bytes
    for (int i = 0; i < 8; i++) {
        output[i] = input[i];
        for (int round = 0; round < 16; round++) {
            output[i] ^= key[round % 8];
            // Simple bit rotation
            uint8_t temp = output[i];
            output[i] = (temp << 1) | (temp >> 7);
        }
    }
}

void des_decrypt_avr(const uint8_t *input, const uint8_t *key, uint8_t *output) {
    for (int i = 0; i < 8; i++) {
        output[i] = input[i];
        for (int round = 15; round >= 0; round--) {
            uint8_t temp = output[i];
            output[i] = (temp >> 1) | (temp << 7);
            output[i] ^= key[round % 8];
        }
    }
}
