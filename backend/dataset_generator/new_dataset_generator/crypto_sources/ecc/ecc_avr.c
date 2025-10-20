/*
 * ECC for AVR - simplified elliptic curve operations
 */
#include <stdint.h>

typedef struct {
    uint32_t x;  // 32-bit instead of 64-bit
    uint32_t y;
} ecc_point_avr;

// Simplified point addition using 32-bit arithmetic
ecc_point_avr ecc_point_add_avr(ecc_point_avr P, ecc_point_avr Q, uint32_t p) {
    ecc_point_avr R;
    if (Q.x > P.x) {
        uint32_t dx = Q.x - P.x;
        uint32_t dy = Q.y - P.y;
        uint32_t lambda = (dy / dx) % p;
        R.x = (lambda * lambda - P.x - Q.x) % p;
        R.y = (lambda * (P.x - R.x) - P.y) % p;
    } else {
        R = P;
    }
    return R;
}

// Simplified scalar multiplication
ecc_point_avr ecc_scalar_mult_avr(ecc_point_avr P, uint16_t k) {
    ecc_point_avr Q = {0, 0};
    ecc_point_avr R = P;
    while (k > 0) {
        if (k & 1) {
            Q = ecc_point_add_avr(Q, R, 65521);  // Small prime for AVR
        }
        R = ecc_point_add_avr(R, R, 65521);
        k >>= 1;
    }
    return Q;
}
