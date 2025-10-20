#include <stdint.h>

void des_key_schedule(uint64_t key, uint64_t *subkeys) {
    for (int round = 0; round < 16; round++) {
        subkeys[round] = (key >> (4 * round)) & 0xFFFFFFFFFFFF;
    }
}
