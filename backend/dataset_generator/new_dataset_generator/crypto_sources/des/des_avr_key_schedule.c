#include <stdint.h>

void des_key_schedule_avr(const uint8_t *key, uint8_t subkeys[16][8]) {
    for (int round = 0; round < 16; round++) {
        for (int i = 0; i < 8; i++) {
            subkeys[round][i] = key[i] ^ round;
        }
    }
}
