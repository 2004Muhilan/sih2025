#include <stdint.h>
#include <stddef.h>

void hmac_create_opad(const uint8_t *key, size_t key_len, uint8_t *opad) {
    for (size_t i = 0; i < 64; i++) {
        opad[i] = (i < key_len ? key[i] : 0x00) ^ 0x5C;
    }
}
