#include <stdint.h>

uint8_t prng_xorshift8_avr(uint8_t *state) {
    uint8_t x = *state;
    x ^= x << 3;
    x ^= x >> 5;
    x ^= x << 4;
    *state = x;
    return x;
}
