#include <stdint.h>

typedef struct {
    uint32_t state[4];
} prng_ctx;

void prng_seed(prng_ctx *ctx, uint32_t seed) {
    ctx->state[0] = seed;
    ctx->state[1] = seed ^ 0x6C078965;
    ctx->state[2] = seed ^ 0x30F47D90;
    ctx->state[3] = seed ^ 0x5F356495;
}
