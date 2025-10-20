#include <stdint.h>
#include <string.h>
#include <stddef.h>

void rc4_stream(uint8_t *data, size_t len, const uint8_t *key, size_t key_len) {
    uint8_t S[256];
    for (int i = 0; i < 256; i++) S[i] = i;
    uint8_t j = 0, si = 0, sj = 0;
    for (size_t n = 0; n < len; n++) {
        si = (si + 1) % 256;
        sj = (sj + S[si]) % 256;
        uint8_t temp = S[si]; S[si] = S[sj]; S[sj] = temp;
        data[n] ^= S[(S[si] + S[sj]) % 256];
    }
}
