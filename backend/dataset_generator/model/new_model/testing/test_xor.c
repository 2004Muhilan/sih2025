/* Complete XOR Cipher Implementation */
#include <stdio.h>
#include <stdint.h>
#include <string.h>

/* Simple XOR encryption */
void xor_encrypt_simple(const uint8_t *plaintext, uint8_t *ciphertext, 
                        const uint8_t *key, int plaintext_len, int key_len) {
    for (int i = 0; i < plaintext_len; i++) {
        ciphertext[i] = plaintext[i] ^ key[i % key_len];
    }
}

/* XOR with single byte key */
void xor_encrypt_byte(const uint8_t *plaintext, uint8_t *ciphertext, 
                      uint8_t key, int len) {
    for (int i = 0; i < len; i++) {
        ciphertext[i] = plaintext[i] ^ key;
    }
}

/* XOR with repeating key */
void xor_encrypt_repeating(const uint8_t *plaintext, uint8_t *ciphertext,
                           const uint8_t *key, int plaintext_len, int key_len) {
    for (int i = 0; i < plaintext_len; i++) {
        ciphertext[i] = plaintext[i] ^ key[i % key_len];
    }
}

/* XOR with stream (one-time pad style) */
void xor_encrypt_stream(const uint8_t *plaintext, uint8_t *ciphertext,
                        const uint8_t *keystream, int len) {
    for (int i = 0; i < len; i++) {
        ciphertext[i] = plaintext[i] ^ keystream[i];
    }
}

/* XOR decrypt (same as encrypt) */
void xor_decrypt(const uint8_t *ciphertext, uint8_t *plaintext,
                 const uint8_t *key, int ciphertext_len, int key_len) {
    xor_encrypt_simple(ciphertext, plaintext, key, ciphertext_len, key_len);
}

/* XOR with block processing */
void xor_block_encrypt(uint8_t *data, const uint8_t *key, int block_size) {
    for (int i = 0; i < block_size; i++) {
        data[i] ^= key[i];
    }
}

/* XOR with counter mode */
void xor_counter_mode(const uint8_t *plaintext, uint8_t *ciphertext,
                      uint8_t key, uint32_t counter, int len) {
    for (int i = 0; i < len; i++) {
        uint8_t keystream = key ^ ((counter + i) & 0xFF);
        ciphertext[i] = plaintext[i] ^ keystream;
    }
}

/* XOR with feedback */
void xor_encrypt_feedback(const uint8_t *plaintext, uint8_t *ciphertext,
                          uint8_t key, int len) {
    uint8_t feedback = key;
    for (int i = 0; i < len; i++) {
        ciphertext[i] = plaintext[i] ^ feedback;
        feedback = ciphertext[i];
    }
}

/* Multi-byte XOR */
void xor_multibyte(const uint8_t *plaintext, uint8_t *ciphertext,
                   const uint8_t *key, int plaintext_len, int key_len) {
    for (int i = 0; i < plaintext_len; i++) {
        uint8_t k = 0;
        for (int j = 0; j < key_len; j++) {
            k ^= key[j];
        }
        ciphertext[i] = plaintext[i] ^ k ^ key[i % key_len];
    }
}

int main() {
    uint8_t plaintext[] = "Hello XOR Cipher!";
    uint8_t key[] = "SECRET";
    uint8_t ciphertext[sizeof(plaintext)];
    uint8_t decrypted[sizeof(plaintext)];
    
    int plaintext_len = strlen((char*)plaintext);
    int key_len = strlen((char*)key);
    
    printf("=== XOR Cipher ===\n");
    printf("Plaintext: %s\n", plaintext);
    printf("Key: %s\n\n", key);
    
    /* Test 1: Simple XOR */
    printf("Test 1: Simple XOR\n");
    xor_encrypt_simple(plaintext, ciphertext, key, plaintext_len, key_len);
    printf("Ciphertext (hex): ");
    for (int i = 0; i < plaintext_len; i++) {
        printf("%02x ", ciphertext[i]);
    }
    printf("\n");
    
    xor_decrypt(ciphertext, decrypted, key, plaintext_len, key_len);
    decrypted[plaintext_len] = '\0';
    printf("Decrypted: %s\n\n", decrypted);
    
    /* Test 2: Single byte key */
    printf("Test 2: Single byte XOR (key=0x42)\n");
    xor_encrypt_byte(plaintext, ciphertext, 0x42, plaintext_len);
    printf("Ciphertext (hex): ");
    for (int i = 0; i < plaintext_len; i++) {
        printf("%02x ", ciphertext[i]);
    }
    printf("\n");
    
    xor_encrypt_byte(ciphertext, decrypted, 0x42, plaintext_len);
    decrypted[plaintext_len] = '\0';
    printf("Decrypted: %s\n\n", decrypted);
    
    /* Test 3: Counter mode */
    printf("Test 3: XOR Counter Mode\n");
    xor_counter_mode(plaintext, ciphertext, 0xAA, 1000, plaintext_len);
    printf("Ciphertext (hex): ");
    for (int i = 0; i < plaintext_len; i++) {
        printf("%02x ", ciphertext[i]);
    }
    printf("\n");
    
    xor_counter_mode(ciphertext, decrypted, 0xAA, 1000, plaintext_len);
    decrypted[plaintext_len] = '\0';
    printf("Decrypted: %s\n\n", decrypted);
    
    /* Test 4: Feedback mode */
    printf("Test 4: XOR Feedback Mode\n");
    xor_encrypt_feedback(plaintext, ciphertext, 0x5A, plaintext_len);
    printf("Encrypted successfully\n");
    
    return 0;
}