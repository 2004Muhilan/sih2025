#include <stdint.h>

typedef struct { uint16_t x, y; } point16_avr;

point16_avr ecc_add_16bit_avr(point16_avr P, point16_avr Q) {
    point16_avr R;
    R.x = (P.x + Q.x) % 65521;
    R.y = (P.y + Q.y) % 65521;
    return R;
}
