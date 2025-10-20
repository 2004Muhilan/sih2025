#include <stdint.h>

uint8_t rc4_prga(uint8_t *S, uint8_t *i, uint8_t *j) {
    *i = (*i + 1) % 256;
    *j = (*j + S[*i]) % 256;
    uint8_t temp = S[*i]; S[*i] = S[*j]; S[*j] = temp;
    return S[(S[*i] + S[*j]) % 256];
}
