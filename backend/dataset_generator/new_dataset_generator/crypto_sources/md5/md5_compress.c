#include <stdint.h>

#define F(x,y,z) (((x)&(y))|((~x)&(z)))

void md5_compress(uint32_t *state, const uint32_t *block) {
    uint32_t a = state[0], b = state[1], c = state[2], d = state[3];
    for (int i = 0; i < 16; i++) {
        uint32_t f = F(b, c, d);
        uint32_t temp = d;
        d = c; c = b;
        b = b + ((a + f + block[i]) << 7);
        a = temp;
    }
    state[0] += a; state[1] += b; state[2] += c; state[3] += d;
}
