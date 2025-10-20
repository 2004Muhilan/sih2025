#include <stdint.h>

typedef struct { uint16_t x, y; } point16_avr;

uint16_t ecc_shared_avr(point16_avr public, uint8_t private) {
    return (public.x * private) % 65521;
}
