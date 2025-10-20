#include <stdint.h>
#include <stddef.h>

void xor_cbc_mode(uint8_t *data, size_t len, const uint8_t *key, size_t key_len, uint8_t iv) {
    uint8_t prev = iv;
    for (size_t i = 0; i < len; i++) {
        data[i] ^= prev ^ key[i % key_len];
        prev = data[i];
    }
}
