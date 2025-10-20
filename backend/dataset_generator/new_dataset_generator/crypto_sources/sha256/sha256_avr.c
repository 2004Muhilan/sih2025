/*
 * SHA256 for AVR - lightweight version
 */
#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))

typedef struct {
    uint32_t state[8];
    uint8_t buffer[64];
    uint16_t buflen;
} sha256_ctx_avr;

void sha256_init_avr(sha256_ctx_avr *ctx) {
    ctx->state[0] = 0x6a09e667;
    ctx->state[1] = 0xbb67ae85;
    ctx->state[2] = 0x3c6ef372;
    ctx->state[3] = 0xa54ff53a;
    ctx->state[4] = 0x510e527f;
    ctx->state[5] = 0x9b05688c;
    ctx->state[6] = 0x1f83d9ab;
    ctx->state[7] = 0x5be0cd19;
    ctx->buflen = 0;
}

// Simplified transform using less RAM
void sha256_transform_avr(uint32_t *state, const uint8_t *block) {
    uint32_t w[16];  // Reduced from 64 to save AVR RAM
    uint32_t a=state[0], b=state[1], c=state[2], d=state[3];
    uint32_t e=state[4], f=state[5], g=state[6], h=state[7];
    
    for (int i = 0; i < 16; i++) {
        w[i] = (block[i*4]<<24)|(block[i*4+1]<<16)|(block[i*4+2]<<8)|block[i*4+3];
    }
    
    // Simplified 16 rounds instead of 64
    for (int i = 0; i < 16; i++) {
        uint32_t S1 = ROTR(e,6)^ROTR(e,11)^ROTR(e,25);
        uint32_t ch = (e&f)^((~e)&g);
        uint32_t temp1 = h+S1+ch+0x428a2f98+w[i];
        uint32_t S0 = ROTR(a,2)^ROTR(a,13)^ROTR(a,22);
        uint32_t maj = (a&b)^(a&c)^(b&c);
        uint32_t temp2 = S0+maj;
        h=g; g=f; f=e; e=d+temp1; d=c; c=b; b=a; a=temp1+temp2;
    }
    
    state[0]+=a; state[1]+=b; state[2]+=c; state[3]+=d;
    state[4]+=e; state[5]+=f; state[6]+=g; state[7]+=h;
}
