#include <stdint.h>
#include <string.h>

void rsa_pkcs1_pad(const uint8_t *msg, size_t msg_len, uint8_t *padded, size_t padded_len) {
    padded[0] = 0x00;
    padded[1] = 0x02;
    for (size_t i = 2; i < padded_len - msg_len - 1; i++) {
        padded[i] = 0xFF;
    }
    padded[padded_len - msg_len - 1] = 0x00;
    memcpy(padded + padded_len - msg_len, msg, msg_len);
}
