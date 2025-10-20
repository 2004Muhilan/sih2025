#include <stdint.h>

typedef struct { uint64_t x, y; } ecc_point;

ecc_point ecc_scalar_mult(ecc_point P, uint64_t k, uint64_t p) {
    ecc_point Q = {0, 0};
    ecc_point R = P;
    while (k > 0) {
        if (k & 1) {
            // Q = point_add(Q, R)
        }
        // R = point_double(R)
        k >>= 1;
    }
    return Q;
}
