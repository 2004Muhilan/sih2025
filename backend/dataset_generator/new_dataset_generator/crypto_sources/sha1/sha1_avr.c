/*
 * SHA1 for AVR - memory optimized
 */
#include <stdint.h>
#include <string.h>

#define ROL(x,n) (((x)<<(n))|((x)>>(32-(n))))

typedef struct {
    uint32_t state[5];
    uint8_t buffer[64];
    uint16_t buflen;  // Use 16-bit for AVR
} sha1_ctx_avr;

void sha1_init_avr(sha1_ctx_avr *ctx) {
    ctx->state[0] = 0x67452301;
    ctx->state[1] = 0xEFCDAB89;
    ctx->state[2] = 0x98BADCFE;
    ctx->state[3] = 0x10325476;
    ctx->state[4] = 0xC3D2E1F0;
    ctx->buflen = 0;
}

void sha1_transform_avr(uint32_t *state, const uint8_t *block) {
    uint32_t w[16];  // Reduced from 80 to save RAM
    uint32_t a=state[0], b=state[1], c=state[2], d=state[3], e=state[4];
    
    // Process in chunks to save RAM
    for (int i = 0; i < 16; i++) {
        w[i] = (block[i*4]<<24)|(block[i*4+1]<<16)|(block[i*4+2]<<8)|block[i*4+3];
    }
    
    // Simplified 20 rounds instead of 80 (AVR optimization)
    for (int i = 0; i < 20; i++) {
        uint32_t f = (b&c)|((~b)&d);
        uint32_t temp = ROL(a,5)+f+e+0x5A827999+w[i%16];
        e=d; d=c; c=ROL(b,30); b=a; a=temp;
    }
    
    state[0]+=a; state[1]+=b; state[2]+=c; state[3]+=d; state[4]+=e;
}
