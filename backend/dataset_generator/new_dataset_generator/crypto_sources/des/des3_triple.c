#include <stdint.h>

uint64_t des3_encrypt(uint64_t block, uint64_t k1, uint64_t k2, uint64_t k3) {
    block = block ^ k1;  // Simplified
    block = block ^ k2;
    block = block ^ k3;
    return block;
}
