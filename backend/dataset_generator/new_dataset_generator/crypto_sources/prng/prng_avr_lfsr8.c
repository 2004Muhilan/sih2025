#include <stdint.h>

uint8_t prng_lfsr8_avr(uint8_t *state) {
    uint8_t lsb = *state & 1;
    *state >>= 1;
    if (lsb) *state ^= 0xB8;
    return *state;
}
