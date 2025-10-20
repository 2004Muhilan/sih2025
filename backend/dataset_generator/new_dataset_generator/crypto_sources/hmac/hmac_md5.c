#include <stdint.h>
#include <stddef.h>

void hmac_md5(const uint8_t *key, size_t key_len, const uint8_t *msg, size_t msg_len, uint8_t *mac) {
    uint8_t ipad[64], opad[64];
    for (size_t i = 0; i < 64; i++) {
        ipad[i] = (i < key_len ? key[i] : 0) ^ 0x36;
        opad[i] = (i < key_len ? key[i] : 0) ^ 0x5C;
    }
    for (int i = 0; i < 16; i++) mac[i] = ipad[i] ^ opad[i];
}
