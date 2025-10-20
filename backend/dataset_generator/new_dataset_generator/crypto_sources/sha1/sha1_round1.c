#include <stdint.h>

#define F(b,c,d) (((b)&(c))|((~b)&(d)))

uint32_t sha1_round1(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t w) {
    return ((a << 5) | (a >> 27)) + F(b,c,d) + e + 0x5A827999 + w;
}
