#include <stdint.h>
#include <stddef.h>

int base64_char_value(char c) {
    if (c >= 'A' && c <= 'Z') return c - 'A';
    if (c >= 'a' && c <= 'z') return c - 'a' + 26;
    if (c >= '0' && c <= '9') return c - '0' + 52;
    if (c == '+') return 62;
    if (c == '/') return 63;
    return -1;
}

void base64_decode_standard(const char *data, uint8_t *out, size_t *out_len) {
    *out_len = 0;
    for (size_t i = 0; data[i] && data[i] != '='; i += 4) {
        uint32_t v = 0;
        for (int j = 0; j < 4; j++) {
            v = (v << 6) | base64_char_value(data[i+j]);
        }
        out[(*out_len)++] = (v >> 16) & 0xFF;
        out[(*out_len)++] = (v >> 8) & 0xFF;
        out[(*out_len)++] = v & 0xFF;
    }
}
