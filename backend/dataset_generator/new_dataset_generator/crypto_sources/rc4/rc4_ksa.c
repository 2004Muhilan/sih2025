#include <stdint.h>
#include <stddef.h>

void rc4_ksa(uint8_t *S, const uint8_t *key, size_t key_len) {
    for (int i = 0; i < 256; i++) S[i] = i;
    uint8_t j = 0;
    for (int i = 0; i < 256; i++) {
        j = (j + S[i] + key[i % key_len]) % 256;
        uint8_t temp = S[i]; S[i] = S[j]; S[j] = temp;
    }
}
