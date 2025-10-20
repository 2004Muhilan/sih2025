#include <stdint.h>

uint32_t prng_pcg(uint64_t *state) {
    uint64_t old = *state;
    *state = old * 6364136223846793005ULL + 1;
    uint32_t xor_shifted = ((old >> 18) ^ old) >> 27;
    uint32_t rot = old >> 59;
    return (xor_shifted >> rot) | (xor_shifted << ((0-rot) & 31));
}
