#include <stdint.h>
#include <stddef.h>

void rc4_drop3072_init(uint8_t *S, const uint8_t *key, size_t key_len) {
    for (int i = 0; i < 256; i++) S[i] = i;
    uint8_t j = 0;
    for (int i = 0; i < 256; i++) {
        j = (j + S[i] + key[i % key_len]) % 256;
        uint8_t temp = S[i]; S[i] = S[j]; S[j] = temp;
    }
    // Drop first 3072 bytes
    for (int n = 0; n < 3072; n++) {
        uint8_t dummy = S[n % 256];
    }
}
