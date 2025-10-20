#include <stdint.h>

#define G(x,y,z) (((x)&(z))|((y)&(~z)))

void md5_round2(uint32_t *a, uint32_t b, uint32_t c, uint32_t d, uint32_t x, uint32_t s, uint32_t t) {
    *a = b + ((*a + G(b,c,d) + x + t) << s);
}
