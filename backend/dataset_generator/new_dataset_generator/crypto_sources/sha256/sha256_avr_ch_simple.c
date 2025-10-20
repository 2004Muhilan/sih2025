#include <stdint.h>

uint32_t sha256_ch_avr(uint32_t x, uint32_t y, uint32_t z) {
    return (x & y) ^ ((~x) & z);
}
