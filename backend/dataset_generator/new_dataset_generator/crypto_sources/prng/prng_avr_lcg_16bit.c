#include <stdint.h>

uint16_t prng_lcg_16bit_avr(uint16_t *state) {
    *state = (*state * 25173 + 13849) & 0xFFFF;
    return *state;
}
