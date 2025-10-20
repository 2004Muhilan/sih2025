#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))

uint32_t sha256_sigma0(uint32_t x) {
    return ROTR(x, 2) ^ ROTR(x, 13) ^ ROTR(x, 22);
}

uint32_t sha256_sigma1(uint32_t x) {
    return ROTR(x, 6) ^ ROTR(x, 11) ^ ROTR(x, 25);
}
