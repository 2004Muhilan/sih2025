#include <stdint.h>

uint32_t prng_lcg(uint32_t *state) {
    *state = (*state * 1103515245 + 12345) & 0x7FFFFFFF;
    return *state;
}
