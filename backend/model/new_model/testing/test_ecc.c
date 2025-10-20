/* Complete ECC Implementation (Simple prime curve) */
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

/* Elliptic curve: y^2 = x^3 + ax + b (mod p) */
typedef struct {
    int64_t a;
    int64_t b;
    int64_t p;  /* Prime modulus */
} EC_CURVE;

typedef struct {
    int64_t x;
    int64_t y;
    int is_infinity;
} EC_POINT;

/* Modular inverse using Extended Euclidean Algorithm */
int64_t mod_inverse_ecc(int64_t a, int64_t m) {
    int64_t m0 = m, x0 = 0, x1 = 1;
    
    if (m == 1) return 0;
    
    while (a > 1) {
        int64_t q = a / m;
        int64_t t = m;
        
        m = a % m;
        a = t;
        t = x0;
        
        x0 = x1 - q * x0;
        x1 = t;
    }
    
    if (x1 < 0) x1 += m0;
    
    return x1;
}

/* Modular arithmetic helper */
int64_t mod(int64_t a, int64_t m) {
    int64_t result = a % m;
    return result < 0 ? result + m : result;
}

/* Check if point is on curve */
int ec_point_is_on_curve(const EC_POINT *p, const EC_CURVE *curve) {
    if (p->is_infinity) return 1;
    
    int64_t lhs = mod(p->y * p->y, curve->p);
    int64_t rhs = mod(p->x * p->x * p->x + curve->a * p->x + curve->b, curve->p);
    
    return lhs == rhs;
}

/* Point doubling */
void ec_point_double(EC_POINT *result, const EC_POINT *p, const EC_CURVE *curve) {
    if (p->is_infinity) {
        result->is_infinity = 1;
        return;
    }
    
    int64_t s = mod((3 * p->x * p->x + curve->a) * mod_inverse_ecc(2 * p->y, curve->p), curve->p);
    
    result->x = mod(s * s - 2 * p->x, curve->p);
    result->y = mod(s * (p->x - result->x) - p->y, curve->p);
    result->is_infinity = 0;
}

/* Point addition */
void ec_point_add(EC_POINT *result, const EC_POINT *p1, const EC_POINT *p2, const EC_CURVE *curve) {
    if (p1->is_infinity) {
        *result = *p2;
        return;
    }
    
    if (p2->is_infinity) {
        *result = *p1;
        return;
    }
    
    if (p1->x == p2->x) {
        if (p1->y == p2->y) {
            ec_point_double(result, p1, curve);
        } else {
            result->is_infinity = 1;
        }
        return;
    }
    
    int64_t s = mod((p2->y - p1->y) * mod_inverse_ecc(mod(p2->x - p1->x, curve->p), curve->p), curve->p);
    
    result->x = mod(s * s - p1->x - p2->x, curve->p);
    result->y = mod(s * (p1->x - result->x) - p1->y, curve->p);
    result->is_infinity = 0;
}

/* Scalar multiplication (double-and-add) */
void ec_point_mul(EC_POINT *result, const EC_POINT *p, int64_t k, const EC_CURVE *curve) {
    EC_POINT temp = *p;
    result->is_infinity = 1;
    
    while (k > 0) {
        if (k & 1) {
            EC_POINT sum;
            ec_point_add(&sum, result, &temp, curve);
            *result = sum;
        }
        
        EC_POINT doubled;
        ec_point_double(&doubled, &temp, curve);
        temp = doubled;
        
        k >>= 1;
    }
}

/* ECC Key Generation */
void ecc_keygen(EC_POINT *public_key, int64_t *private_key, const EC_POINT *base, const EC_CURVE *curve) {
    *private_key = rand() % 100 + 1;  /* Random private key (small for demo) */
    ec_point_mul(public_key, base, *private_key, curve);
}

/* ECC Shared Secret (ECDH) */
void ecc_shared_secret(EC_POINT *shared, const EC_POINT *public_key, int64_t private_key, const EC_CURVE *curve) {
    ec_point_mul(shared, public_key, private_key, curve);
}

int main() {
    /* Define a simple curve: y^2 = x^3 + 2x + 3 (mod 97) */
    EC_CURVE curve = {.a = 2, .b = 3, .p = 97};
    
    /* Base point G */
    EC_POINT G = {.x = 3, .y = 6, .is_infinity = 0};
    
    printf("=== Elliptic Curve Cryptography ===\n");
    printf("Curve: y^2 = x^3 + %lldx + %lld (mod %lld)\n", curve.a, curve.b, curve.p);
    printf("Base point G: (%lld, %lld)\n\n", G.x, G.y);
    
    /* Alice's keys */
    EC_POINT alice_public;
    int64_t alice_private;
    ecc_keygen(&alice_public, &alice_private, &G, &curve);
    printf("Alice private key: %lld\n", alice_private);
    printf("Alice public key: (%lld, %lld)\n\n", alice_public.x, alice_public.y);
    
    /* Bob's keys */
    EC_POINT bob_public;
    int64_t bob_private;
    ecc_keygen(&bob_public, &bob_private, &G, &curve);
    printf("Bob private key: %lld\n", bob_private);
    printf("Bob public key: (%lld, %lld)\n\n", bob_public.x, bob_public.y);
    
    /* Compute shared secrets */
    EC_POINT alice_shared, bob_shared;
    ecc_shared_secret(&alice_shared, &bob_public, alice_private, &curve);
    ecc_shared_secret(&bob_shared, &alice_public, bob_private, &curve);
    
    printf("Alice's shared secret: (%lld, %lld)\n", alice_shared.x, alice_shared.y);
    printf("Bob's shared secret: (%lld, %lld)\n", bob_shared.x, bob_shared.y);
    
    if (alice_shared.x == bob_shared.x && alice_shared.y == bob_shared.y) {
        printf("\n✓ Shared secrets match!\n");
    }
    
    return 0;
}