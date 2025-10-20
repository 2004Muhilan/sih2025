#include <stdint.h>

uint32_t des_feistel_avr(uint32_t half, uint8_t *subkey) {
    uint32_t result = half;
    for (int i = 0; i < 8; i++) {
        result ^= subkey[i];
        result = (result << 1) | (result >> 31);
    }
    return result;
}
