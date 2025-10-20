#include <stdint.h>

uint16_t prng_middle_square_avr(uint16_t *state) {
    uint32_t square = (*state) * (*state);
    *state = (square >> 8) & 0xFFFF;
    return *state;
}
