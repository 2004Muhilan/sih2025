#include <stdint.h>

typedef struct { uint8_t x, y; } point8_avr;

point8_avr ecc_mult_8bit_avr(point8_avr P, uint8_t k) {
    point8_avr Q = {0, 0};
    while (k > 0) {
        if (k & 1) {
            Q.x = (Q.x + P.x) % 251;
            Q.y = (Q.y + P.y) % 251;
        }
        P.x = (P.x + P.x) % 251;
        P.y = (P.y + P.y) % 251;
        k >>= 1;
    }
    return Q;
}
