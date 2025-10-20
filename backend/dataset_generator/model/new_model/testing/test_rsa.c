/* Complete RSA Implementation (Simple, for educational purposes) */
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

/* Modular exponentiation: (base^exp) % mod */
uint64_t mod_exp(uint64_t base, uint64_t exp, uint64_t mod) {
    uint64_t result = 1;
    base = base % mod;
    
    while (exp > 0) {
        if (exp % 2 == 1) {
            result = (result * base) % mod;
        }
        exp = exp >> 1;
        base = (base * base) % mod;
    }
    
    return result;
}

/* Extended Euclidean Algorithm */
int64_t extended_gcd(int64_t a, int64_t b, int64_t *x, int64_t *y) {
    if (a == 0) {
        *x = 0;
        *y = 1;
        return b;
    }
    
    int64_t x1, y1;
    int64_t gcd = extended_gcd(b % a, a, &x1, &y1);
    
    *x = y1 - (b/a) * x1;
    *y = x1;
    
    return gcd;
}

/* Modular multiplicative inverse */
uint64_t mod_inverse(uint64_t a, uint64_t m) {
    int64_t x, y;
    int64_t g = extended_gcd(a, m, &x, &y);
    
    if (g != 1) return 0;
    
    return (x % m + m) % m;
}

/* GCD */
uint64_t gcd(uint64_t a, uint64_t b) {
    while (b != 0) {
        uint64_t temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

/* Check if number is prime (simple trial division) */
int is_prime(uint64_t n) {
    if (n < 2) return 0;
    if (n == 2) return 1;
    if (n % 2 == 0) return 0;
    
    for (uint64_t i = 3; i * i <= n; i += 2) {
        if (n % i == 0) return 0;
    }
    return 1;
}

typedef struct {
    uint64_t e;  /* Public exponent */
    uint64_t n;  /* Modulus */
    uint64_t d;  /* Private exponent */
} RSA_KEY;

/* Generate RSA keys (using small primes for demo) */
void rsa_keygen(RSA_KEY *key, uint64_t p, uint64_t q) {
    key->n = p * q;
    uint64_t phi = (p - 1) * (q - 1);
    
    /* Choose e = 65537 (common choice) */
    key->e = 65537;
    
    /* If e doesn't work, try smaller values */
    if (gcd(key->e, phi) != 1) {
        key->e = 3;
        while (gcd(key->e, phi) != 1) {
            key->e += 2;
        }
    }
    
    /* Calculate d = e^(-1) mod phi */
    key->d = mod_inverse(key->e, phi);
}

/* RSA Encrypt */
uint64_t rsa_encrypt(uint64_t plaintext, RSA_KEY *key) {
    return mod_exp(plaintext, key->e, key->n);
}

/* RSA Decrypt */
uint64_t rsa_decrypt(uint64_t ciphertext, RSA_KEY *key) {
    return mod_exp(ciphertext, key->d, key->n);
}

/* RSA Sign */
uint64_t rsa_sign(uint64_t message, RSA_KEY *key) {
    return mod_exp(message, key->d, key->n);
}

/* RSA Verify */
int rsa_verify(uint64_t message, uint64_t signature, RSA_KEY *key) {
    uint64_t decrypted = mod_exp(signature, key->e, key->n);
    return (decrypted == message);
}

int main() {
    RSA_KEY key;
    
    /* Small primes for demonstration */
    uint64_t p = 61;
    uint64_t q = 53;
    
    printf("=== RSA Encryption ===\n");
    printf("p = %llu, q = %llu\n", p, q);
    
    rsa_keygen(&key, p, q);
    printf("n = %llu\n", key.n);
    printf("e = %llu\n", key.e);
    printf("d = %llu\n", key.d);
    
    uint64_t plaintext = 1234;
    printf("\nPlaintext: %llu\n", plaintext);
    
    uint64_t ciphertext = rsa_encrypt(plaintext, &key);
    printf("Ciphertext: %llu\n", ciphertext);
    
    uint64_t decrypted = rsa_decrypt(ciphertext, &key);
    printf("Decrypted: %llu\n", decrypted);
    
    uint64_t signature = rsa_sign(plaintext, &key);
    printf("\nSignature: %llu\n", signature);
    
    int valid = rsa_verify(plaintext, signature, &key);
    printf("Signature valid: %s\n", valid ? "Yes" : "No");
    
    return 0;
}