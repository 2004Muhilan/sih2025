#include <stdint.h>
#include <stddef.h>

void hmac_key_derive(const uint8_t *key, size_t key_len, const uint8_t *salt, size_t salt_len, uint8_t *derived) {
    for (size_t i = 0; i < 32; i++) {
        derived[i] = key[i % key_len] ^ salt[i % salt_len];
    }
}
