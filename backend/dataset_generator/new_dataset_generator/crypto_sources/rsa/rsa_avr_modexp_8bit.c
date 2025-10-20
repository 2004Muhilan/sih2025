#include <stdint.h>

uint8_t rsa_modexp_8bit_avr(uint8_t base, uint8_t exp, uint8_t mod) {
    uint8_t result = 1;
    while (exp > 0) {
        if (exp & 1) result = (result * base) % mod;
        base = (base * base) % mod;
        exp >>= 1;
    }
    return result;
}
