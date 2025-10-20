#include <stdint.h>
#include <string.h>

void sha256_padding(const uint8_t *msg, size_t len, uint8_t *padded) {
    memcpy(padded, msg, len);
    padded[len] = 0x80;
    size_t pad_len = (55 - len % 64) % 64;
    memset(padded + len + 1, 0, pad_len);
    uint64_t bit_len = len * 8;
    for (int i = 0; i < 8; i++) {
        padded[len + 1 + pad_len + i] = (bit_len >> (56 - 8*i)) & 0xFF;
    }
}
