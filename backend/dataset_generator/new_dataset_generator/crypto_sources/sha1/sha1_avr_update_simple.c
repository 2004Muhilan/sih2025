#include <stdint.h>

void sha1_update_avr(uint32_t *state, const uint8_t *data) {
    for (int i = 0; i < 5; i++) {
        state[i] += data[i];
    }
}
