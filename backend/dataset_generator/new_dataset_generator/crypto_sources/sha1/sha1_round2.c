#include <stdint.h>

#define H(b,c,d) ((b)^(c)^(d))

uint32_t sha1_round2(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t w) {
    return ((a << 5) | (a >> 27)) + H(b,c,d) + e + 0x6ED9EBA1 + w;
}
