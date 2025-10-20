#include <stdint.h>

#define G(b,c,d) (((b)&(c))|((b)&(d))|((c)&(d)))

uint32_t sha1_round3(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t w) {
    return ((a << 5) | (a >> 27)) + G(b,c,d) + e + 0x8F1BBCDC + w;
}
