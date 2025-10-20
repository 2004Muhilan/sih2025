#include <stdint.h>

static const uint8_t rcon[10] = {
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36
};

void aes_key_expansion(const uint8_t *key, uint8_t *round_keys) {
    // Copy original key
    for (int i = 0; i < 16; i++) {
        round_keys[i] = key[i];
    }
    
    // Expand key for 10 rounds
    for (int round = 1; round <= 10; round++) {
        uint8_t temp[4];
        for (int i = 0; i < 4; i++) {
            temp[i] = round_keys[(round-1)*16 + 12 + i];
        }
        
        // RotWord and SubWord
        uint8_t t = temp[0];
        temp[0] = temp[1];
        temp[1] = temp[2];
        temp[2] = temp[3];
        temp[3] = t;
        
        temp[0] ^= rcon[round-1];
        
        // XOR with previous round
        for (int i = 0; i < 16; i++) {
            round_keys[round*16 + i] = round_keys[(round-1)*16 + i] ^ temp[i%4];
        }
    }
}
