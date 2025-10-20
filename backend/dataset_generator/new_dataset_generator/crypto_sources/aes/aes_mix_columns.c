#include <stdint.h>

static uint8_t gf_mul(uint8_t a, uint8_t b) {
    uint8_t p = 0;
    for (int i = 0; i < 8; i++) {
        if (b & 1) p ^= a;
        uint8_t hi = a & 0x80;
        a <<= 1;
        if (hi) a ^= 0x1b;
        b >>= 1;
    }
    return p;
}

void aes_mix_columns(uint8_t *state) {
    for (int i = 0; i < 4; i++) {
        uint8_t *col = state + i*4;
        uint8_t a = col[0], b = col[1], c = col[2], d = col[3];
        col[0] = gf_mul(a, 2) ^ gf_mul(b, 3) ^ c ^ d;
        col[1] = a ^ gf_mul(b, 2) ^ gf_mul(c, 3) ^ d;
        col[2] = a ^ b ^ gf_mul(c, 2) ^ gf_mul(d, 3);
        col[3] = gf_mul(a, 3) ^ b ^ c ^ gf_mul(d, 2);
    }
}
