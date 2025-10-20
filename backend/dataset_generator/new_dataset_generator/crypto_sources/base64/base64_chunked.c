#include <stdint.h>
#include <stddef.h>

static const char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void base64_encode_chunked(const uint8_t *data, size_t len, char *out, int line_len) {
    size_t j = 0, line_pos = 0;
    for (size_t i = 0; i < len; i += 3) {
        uint32_t triple = (data[i]<<16);
        if (i+1<len) triple |= (data[i+1]<<8);
        if (i+2<len) triple |= data[i+2];
        out[j++] = b64[(triple>>18)&0x3F];
        out[j++] = b64[(triple>>12)&0x3F];
        out[j++] = b64[(triple>>6)&0x3F];
        out[j++] = b64[triple&0x3F];
        line_pos += 4;
        if (line_pos >= line_len) {
            out[j++] = '
';
            line_pos = 0;
        }
    }
}
