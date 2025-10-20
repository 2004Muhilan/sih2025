#include <stdint.h>

typedef struct { uint64_t x, y; } ecc_point;

ecc_point ecc_point_add(ecc_point P, ecc_point Q, uint64_t p) {
    ecc_point R;
    uint64_t lambda = ((Q.y - P.y) * (Q.x - P.x)) % p;
    R.x = (lambda * lambda - P.x - Q.x) % p;
    R.y = (lambda * (P.x - R.x) - P.y) % p;
    return R;
}
