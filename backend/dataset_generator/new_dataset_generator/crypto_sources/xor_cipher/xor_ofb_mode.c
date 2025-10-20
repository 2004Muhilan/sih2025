#include <stdint.h>
#include <stddef.h>

void xor_ofb_mode(uint8_t *data, size_t len, const uint8_t *key, size_t key_len, uint8_t iv) {
    uint8_t keystream = iv;
    for (size_t i = 0; i < len; i++) {
        keystream ^= key[i % key_len];
        data[i] ^= keystream;
    }
}
