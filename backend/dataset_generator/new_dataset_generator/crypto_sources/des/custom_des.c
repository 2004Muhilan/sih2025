#include <stdint.h>
#include <string.h>

static const uint8_t sbox[8][64] = {
    {14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7,
     0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8,
     4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0,
     15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13},
};

void des_encrypt(const uint8_t *input, const uint8_t *key, uint8_t *output) {
    uint64_t block = 0;
    for (int i = 0; i < 8; i++) {
        block |= ((uint64_t)input[i]) << (56 - 8*i);
    }
    for (int round = 0; round < 16; round++) {
        uint32_t right = (uint32_t)block;
        uint32_t left = (uint32_t)(block >> 32);
        uint32_t f_result = right ^ key[round % 8];
        left ^= f_result;
        block = ((uint64_t)right << 32) | left;
    }
    for (int i = 0; i < 8; i++) {
        output[i] = (uint8_t)(block >> (56 - 8*i));
    }
}
