#include <stdint.h>

typedef struct { uint16_t x, y; } point16_avr;

uint8_t ecc_verify_avr(point16_avr P, point16_avr Q) {
    return (P.x == Q.x && P.y == Q.y);
}
