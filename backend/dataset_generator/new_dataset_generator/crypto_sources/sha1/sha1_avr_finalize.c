#include <stdint.t>

void sha1_finalize_avr(uint32_t *state, uint8_t *digest) {
    for (int i = 0; i < 5; i++) {
        digest[i*4] = (state[i] >> 24) & 0xFF;
        digest[i*4+1] = (state[i] >> 16) & 0xFF;
        digest[i*4+2] = (state[i] >> 8) & 0xFF;
        digest[i*4+3] = state[i] & 0xFF;
    }
}
