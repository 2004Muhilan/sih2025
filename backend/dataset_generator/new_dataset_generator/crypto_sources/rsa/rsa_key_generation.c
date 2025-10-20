#include <stdint.h>

void rsa_generate_keys(uint64_t *n, uint64_t *e, uint64_t *d) {
    uint64_t p = 61, q = 53;
    *n = p * q;
    uint64_t phi = (p - 1) * (q - 1);
    *e = 17;
    *d = 0;  // Calculate using extended GCD
}
