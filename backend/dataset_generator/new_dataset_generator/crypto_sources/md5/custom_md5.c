#include <stdint.h>
#include <string.h>

#define F(x,y,z) (((x)&(y))|((~x)&(z)))
#define G(x,y,z) (((x)&(z))|((y)&(~z)))
#define H(x,y,z) ((x)^(y)^(z))
#define I(x,y,z) ((y)^((x)|(~z)))
#define ROTLEFT(a,b) ((a<<b)|(a>>(32-b)))

typedef struct {
    uint32_t state[4];
    uint32_t count[2];
    uint8_t buffer[64];
} md5_ctx;

void md5_transform(uint32_t state[4], const uint8_t block[64]) {
    uint32_t a=state[0], b=state[1], c=state[2], d=state[3];
    uint32_t x[16];
    for (int i=0, j=0; i<16; i++, j+=4) {
        x[i] = block[j]|(block[j+1]<<8)|(block[j+2]<<16)|(block[j+3]<<24);
    }
    for (int i=0; i<16; i++) {
        uint32_t f = F(b,c,d);
        uint32_t temp = d;
        d = c; c = b;
        b = b + ROTLEFT((a + f + x[i]), 7);
        a = temp;
    }
    state[0]+=a; state[1]+=b; state[2]+=c; state[3]+=d;
}

void md5_init(md5_ctx *ctx) {
    ctx->state[0]=0x67452301;
    ctx->state[1]=0xefcdab89;
    ctx->state[2]=0x98badcfe;
    ctx->state[3]=0x10325476;
}
