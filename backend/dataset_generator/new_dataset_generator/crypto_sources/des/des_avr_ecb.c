#include <stdint.h>

void des_ecb_encrypt_avr(const uint8_t *input, const uint8_t *key, uint8_t *output, size_t len) {
    for (size_t i = 0; i < len; i += 8) {
        for (int j = 0; j < 8; j++) {
            output[i+j] = input[i+j] ^ key[j];
        }
    }
}
