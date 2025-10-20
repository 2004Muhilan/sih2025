#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

bool hmac_verify(const uint8_t *mac1, const uint8_t *mac2, size_t len) {
    uint8_t diff = 0;
    for (size_t i = 0; i < len; i++) {
        diff |= mac1[i] ^ mac2[i];
    }
    return diff == 0;
}
