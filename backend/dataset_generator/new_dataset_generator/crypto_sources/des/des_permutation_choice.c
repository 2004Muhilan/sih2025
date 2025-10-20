#include <stdint.h>

uint64_t des_pc1(uint64_t key) {
    // Permuted Choice 1
    uint64_t result = 0;
    for (int i = 0; i < 56; i++) {
        result |= ((key >> (64 - i)) & 1) << (55 - i);
    }
    return result;
}
