#include <stdint.h>

typedef struct { uint64_t x, y; } ecc_point;

ecc_point ecc_point_double(ecc_point P, uint64_t a, uint64_t p) {
    ecc_point R;
    uint64_t lambda = ((3 * P.x * P.x + a) / (2 * P.y)) % p;
    R.x = (lambda * lambda - 2 * P.x) % p;
    R.y = (lambda * (P.x - R.x) - P.y) % p;
    return R;
}
