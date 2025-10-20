#include <stdint.h>

uint16_t rsa_encrypt_16bit_avr(uint16_t m, uint16_t e, uint16_t n) {
    uint16_t result = 1;
    uint16_t base = m % n;
    while (e > 0) {
        if (e & 1) result = (result * base) % n;
        base = (base * base) % n;
        e >>= 1;
    }
    return result;
}
