#include <stdint.h>

void des_permute_avr(uint8_t *data) {
    uint8_t temp = data[0];
    data[0] = data[7];
    data[7] = temp;
    temp = data[1];
    data[1] = data[6];
    data[6] = temp;
}
