/*
 * PRNG for AVR - lightweight random number generation
 */
#include <stdint.h>

// Simple LCG for AVR (16-bit)
typedef struct {
    uint16_t state;
} prng_avr_ctx;

void prng_avr_seed(prng_avr_ctx *ctx, uint16_t seed) {
    ctx->state = seed;
}

uint16_t prng_avr_rand(prng_avr_ctx *ctx) {
    ctx->state = (ctx->state * 31821U + 13849U) & 0xFFFF;
    return ctx->state;
}

// XORshift for AVR (16-bit)
uint16_t prng_avr_xorshift(uint16_t *state) {
    uint16_t x = *state;
    x ^= x << 7;
    x ^= x >> 9;
    x ^= x << 8;
    *state = x;
    return x;
}
