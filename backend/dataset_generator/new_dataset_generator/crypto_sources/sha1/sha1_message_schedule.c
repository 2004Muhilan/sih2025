#include <stdint.h>

#define ROL(x,n) (((x)<<(n))|((x)>>(32-(n))))

void sha1_message_schedule(const uint32_t *block, uint32_t *w) {
    for (int i = 0; i < 16; i++) {
        w[i] = block[i];
    }
    for (int i = 16; i < 80; i++) {
        w[i] = ROL(w[i-3] ^ w[i-8] ^ w[i-14] ^ w[i-16], 1);
    }
}
