#include <stdint.h>
#include <string.h>

void sha1_pad_avr(uint8_t *msg, uint8_t len, uint8_t *padded) {
    memcpy(padded, msg, len);
    padded[len] = 0x80;
    for (int i = len+1; i < 64; i++) padded[i] = 0;
}
