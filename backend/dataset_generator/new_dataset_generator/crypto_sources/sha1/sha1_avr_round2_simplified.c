#include <stdint.h>

void sha1_round2_avr(uint32_t *state, uint32_t w) {
    state[0] = state[0] + (state[1] ^ state[2] ^ state[3]) + w;
}
