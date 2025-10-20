#include <stdint.h>
#include <stddef.h>

typedef struct {
    uint8_t pool[32];
    uint32_t counter;
} fortuna_ctx;

void prng_fortuna_reseed(fortuna_ctx *ctx, const uint8_t *seed, size_t len) {
    for (size_t i = 0; i < len && i < 32; i++) {
        ctx->pool[i] ^= seed[i];
    }
    ctx->counter = 0;
}

uint32_t prng_fortuna_generate(fortuna_ctx *ctx) {
    uint32_t result = 0;
    for (int i = 0; i < 4; i++) {
        result = (result << 8) | ctx->pool[(ctx->counter + i) % 32];
    }
    ctx->counter += 4;
    return result;
}
