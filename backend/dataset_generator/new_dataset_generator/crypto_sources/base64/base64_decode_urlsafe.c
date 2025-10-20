#include <stdint.h>
#include <stddef.h>

int base64_url_char_value(char c) {
    if (c >= 'A' && c <= 'Z') return c - 'A';
    if (c >= 'a' && c <= 'z') return c - 'a' + 26;
    if (c >= '0' && c <= '9') return c - '0' + 52;
    if (c == '-') return 62;
    if (c == '_') return 63;
    return -1;
}

void base64_decode_urlsafe(const char *data, uint8_t *out) {
    for (size_t i = 0; data[i]; i++) {
        out[i] = base64_url_char_value(data[i]);
    }
}
