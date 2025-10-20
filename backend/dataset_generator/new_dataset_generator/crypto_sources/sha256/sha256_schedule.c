#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))

void sha256_message_schedule(const uint32_t *block, uint32_t *w) {
    for (int i = 0; i < 16; i++) w[i] = block[i];
    for (int i = 16; i < 64; i++) {
        uint32_t s0 = ROTR(w[i-15],7) ^ ROTR(w[i-15],18) ^ (w[i-15]>>3);
        uint32_t s1 = ROTR(w[i-2],17) ^ ROTR(w[i-2],19) ^ (w[i-2]>>10);
        w[i] = w[i-16] + s0 + w[i-7] + s1;
    }
}
