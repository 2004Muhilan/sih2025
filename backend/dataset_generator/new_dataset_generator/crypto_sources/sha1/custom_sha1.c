#include <stdint.h>
#include <string.h>

#define ROL(x,n) (((x)<<(n))|((x)>>(32-(n))))

typedef struct {
    uint32_t state[5];
    uint32_t count[2];
    uint8_t buffer[64];
} sha1_ctx;

void sha1_transform(uint32_t state[5], const uint8_t block[64]) {
    uint32_t a=state[0], b=state[1], c=state[2], d=state[3], e=state[4];
    uint32_t w[80];
    for (int i=0; i<16; i++) {
        w[i] = (block[i*4]<<24)|(block[i*4+1]<<16)|(block[i*4+2]<<8)|block[i*4+3];
    }
    for (int i=16; i<80; i++) {
        w[i] = ROL(w[i-3]^w[i-8]^w[i-14]^w[i-16], 1);
    }
    for (int i=0; i<80; i++) {
        uint32_t f, k;
        if (i<20) {
            f = (b&c)|((~b)&d);
            k = 0x5A827999;
        } else if (i<40) {
            f = b^c^d;
            k = 0x6ED9EBA1;
        } else if (i<60) {
            f = (b&c)|(b&d)|(c&d);
            k = 0x8F1BBCDC;
        } else {
            f = b^c^d;
            k = 0xCA62C1D6;
        }
        uint32_t temp = ROL(a,5)+f+e+k+w[i];
        e=d; d=c; c=ROL(b,30); b=a; a=temp;
    }
    state[0]+=a; state[1]+=b; state[2]+=c; state[3]+=d; state[4]+=e;
}

void sha1_init(sha1_ctx *ctx) {
    ctx->state[0]=0x67452301;
    ctx->state[1]=0xEFCDAB89;
    ctx->state[2]=0x98BADCFE;
    ctx->state[3]=0x10325476;
    ctx->state[4]=0xC3D2E1F0;
}
