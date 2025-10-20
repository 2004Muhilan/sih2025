#include <stdint.h>

uint16_t rsa_gcd_avr(uint16_t a, uint16_t b) {
    while (b != 0) {
        uint16_t temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}
