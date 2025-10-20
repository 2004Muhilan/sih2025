#include <stdint.h>

void sha1_round1_avr(uint32_t *state, uint32_t w) {
    uint32_t temp = state[0] + ((state[1] & state[2]) | ((~state[1]) & state[3])) + w;
    state[0] = temp;
}
