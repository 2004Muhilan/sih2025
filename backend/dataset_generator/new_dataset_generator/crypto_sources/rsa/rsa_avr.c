/*
 * RSA for AVR - 32-bit simplified version
 * Suitable for 8-bit microcontrollers
 */
#include <stdint.h>

// 32-bit modular exponentiation (AVR-compatible)
uint32_t rsa_mod_exp_avr(uint32_t base, uint32_t exp, uint32_t mod) {
    uint32_t result = 1;
    base = base % mod;
    while (exp > 0) {
        if (exp & 1) {
            result = (result * base) % mod;
        }
        base = (base * base) % mod;
        exp >>= 1;
    }
    return result;
}

// Simplified key generation for AVR
void rsa_generate_keys_avr(uint32_t *n, uint32_t *e, uint32_t *d) {
    // Use small 16-bit primes suitable for AVR
    uint16_t p = 61;
    uint16_t q = 53;
    *n = (uint32_t)p * q;
    *e = 17;
    *d = 413;  // Pre-calculated for these primes
}

uint32_t rsa_encrypt_avr(uint32_t m, uint32_t e, uint32_t n) {
    return rsa_mod_exp_avr(m, e, n);
}

uint32_t rsa_decrypt_avr(uint32_t c, uint32_t d, uint32_t n) {
    return rsa_mod_exp_avr(c, d, n);
}
