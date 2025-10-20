#include <stdint.h>
#include <string.h>

void md5_padding(uint8_t *msg, size_t len, uint8_t *padded) {
    memcpy(padded, msg, len);
    padded[len] = 0x80;
    size_t pad_len = (55 - len % 64) % 64;
    memset(padded + len + 1, 0, pad_len);
    uint64_t bit_len = len * 8;
    memcpy(padded + len + 1 + pad_len, &bit_len, 8);
}
