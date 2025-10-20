#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))

uint32_t sha256_sigma1_avr(uint32_t x) {
    return ROTR(x,6) ^ ROTR(x,11) ^ ROTR(x,25);
}
