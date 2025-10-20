#include <stdint.h>

typedef struct { uint16_t x, y; } point16_avr;

point16_avr ecc_double_16bit_avr(point16_avr P) {
    point16_avr R;
    R.x = (2 * P.x) % 65521;
    R.y = (2 * P.y) % 65521;
    return R;
}
