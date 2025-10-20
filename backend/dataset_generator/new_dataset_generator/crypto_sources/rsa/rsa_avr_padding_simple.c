#include <stdint.h>

void rsa_pad_avr(uint8_t *msg, uint8_t len) {
    for (uint8_t i = len; i < 16; i++) {
        msg[i] = 0xFF;
    }
}
