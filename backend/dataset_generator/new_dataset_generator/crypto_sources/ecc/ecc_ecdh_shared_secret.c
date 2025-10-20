#include <stdint.h>

typedef struct { uint64_t x, y; } ecc_point;

uint64_t ecc_ecdh_shared(ecc_point public_key, uint64_t private_key) {
    // Compute shared secret: private_key * public_key
    return (public_key.x * private_key) % 0xFFFFFFFF;
}
