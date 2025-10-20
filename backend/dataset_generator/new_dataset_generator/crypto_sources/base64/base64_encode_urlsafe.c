#include <stdint.h>
#include <stddef.h>

static const char b64url[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

void base64_encode_urlsafe(const uint8_t *data, size_t len, char *out) {
    for (size_t i=0, j=0; i<len;) {
        uint32_t a = i<len ? data[i++] : 0;
        uint32_t b = i<len ? data[i++] : 0;
        uint32_t c = i<len ? data[i++] : 0;
        uint32_t triple = (a<<16)+(b<<8)+c;
        out[j++] = b64url[(triple>>18)&0x3F];
        out[j++] = b64url[(triple>>12)&0x3F];
        out[j++] = b64url[(triple>>6)&0x3F];
        out[j++] = b64url[triple&0x3F];
    }
}
