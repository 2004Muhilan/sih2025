#include <stdint.h>

uint16_t prng_lfsr16_avr(uint16_t *state) {
    uint16_t lsb = *state & 1;
    *state >>= 1;
    if (lsb) *state ^= 0xB400;
    return *state;
}
