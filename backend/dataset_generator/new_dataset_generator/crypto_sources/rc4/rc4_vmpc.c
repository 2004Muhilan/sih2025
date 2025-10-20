#include <stdint.h>
#include <stddef.h>

void rc4_vmpc_variant(uint8_t *data, size_t len, const uint8_t *key) {
    uint8_t S[256];
    for (int i = 0; i < 256; i++) S[i] = i;
    uint8_t n = 0;
    for (size_t i = 0; i < len; i++) {
        n = S[(n + S[data[i] & 0xFF]) % 256];
        data[i] ^= S[(S[S[n]] + 1) % 256];
    }
}
