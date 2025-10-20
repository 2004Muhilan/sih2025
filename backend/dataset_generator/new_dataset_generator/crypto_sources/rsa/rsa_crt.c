#include <stdint.h>

uint64_t rsa_crt_decrypt(uint64_t c, uint64_t d, uint64_t p, uint64_t q) {
    uint64_t dp = d % (p - 1);
    uint64_t dq = d % (q - 1);
    uint64_t mp = c % p;
    uint64_t mq = c % q;
    return (mp * q + mq * p) % (p * q);
}
