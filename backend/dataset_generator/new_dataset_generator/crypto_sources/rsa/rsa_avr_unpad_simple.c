#include <stdint.h>

uint8_t rsa_unpad_avr(uint8_t *msg) {
    uint8_t len = 0;
    while (len < 16 && msg[len] != 0xFF) len++;
    return len;
}
