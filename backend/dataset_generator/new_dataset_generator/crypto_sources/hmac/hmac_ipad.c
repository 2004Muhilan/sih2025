#include <stdint.h>
#include <stddef.h>

void hmac_create_ipad(const uint8_t *key, size_t key_len, uint8_t *ipad) {
    for (size_t i = 0; i < 64; i++) {
        ipad[i] = (i < key_len ? key[i] : 0x00) ^ 0x36;
    }
}
