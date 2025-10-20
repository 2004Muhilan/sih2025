#include <stdint.h>

#define I(x,y,z) ((y)^((x)|(~z)))

void md5_round4(uint32_t *a, uint32_t b, uint32_t c, uint32_t d, uint32_t x, uint32_t s, uint32_t t) {
    *a = b + ((*a + I(b,c,d) + x + t) << s);
}
