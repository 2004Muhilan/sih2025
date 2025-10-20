#include <stdint.h>

void rsa_keygen_small_avr(uint16_t *n, uint16_t *e, uint16_t *d) {
    uint8_t p = 17, q = 19;
    *n = p * q;
    *e = 7;
    *d = 103;
}
