#include <stdint.h>
#include <stddef.h>

void xor_multi_key(uint8_t *data, size_t len, const uint8_t *key1, const uint8_t *key2, size_t key_len) {
    for (size_t i = 0; i < len; i++) {
        data[i] ^= key1[i % key_len];
        data[i] ^= key2[i % key_len];
    }
}
