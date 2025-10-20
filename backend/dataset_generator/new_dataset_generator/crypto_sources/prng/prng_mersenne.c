#include <stdint.h>

#define N 624

typedef struct {
    uint32_t mt[N];
    int index;
} mt_ctx;

void prng_mersenne_twist(mt_ctx *ctx) {
    for (int i = 0; i < N; i++) {
        uint32_t x = (ctx->mt[i] & 0x80000000) + (ctx->mt[(i+1)%N] & 0x7FFFFFFF);
        ctx->mt[i] = ctx->mt[(i+397)%N] ^ (x >> 1);
        if (x & 1) ctx->mt[i] ^= 0x9908B0DF;
    }
    ctx->index = 0;
}
