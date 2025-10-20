#include <stdint.h>

uint16_t prng_mwc_avr(uint16_t *state, uint16_t *carry) {
    uint32_t temp = 18000 * (*state) + (*carry);
    *carry = temp >> 16;
    *state = temp & 0xFFFF;
    return *state;
}
