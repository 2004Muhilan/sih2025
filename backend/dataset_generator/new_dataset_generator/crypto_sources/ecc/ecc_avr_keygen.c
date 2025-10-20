#include <stdint.h>

typedef struct { uint16_t x, y; } point16_avr;

point16_avr ecc_keygen_avr(uint8_t private_key) {
    point16_avr public_key;
    public_key.x = private_key * 123;
    public_key.y = private_key * 456;
    return public_key;
}
