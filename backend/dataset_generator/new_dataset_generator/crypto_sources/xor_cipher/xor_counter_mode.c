#include <stdint.h>
#include <stddef.h>

void xor_counter_mode(uint8_t *data, size_t len, const uint8_t *key, size_t key_len, uint64_t counter) {
    for (size_t i = 0; i < len; i++) {
        uint8_t keystream = key[i % key_len] ^ (uint8_t)((counter + i) & 0xFF);
        data[i] ^= keystream;
    }
}
