#include <stdint.h>

void sha256_schedule_avr(const uint8_t *block, uint32_t *w) {
    for (int i = 0; i < 16; i++) {
        w[i] = (block[i*4]<<24)|(block[i*4+1]<<16)|(block[i*4+2]<<8)|block[i*4+3];
    }
}
