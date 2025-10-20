#include <stdint.h>

int64_t rsa_extended_gcd(int64_t a, int64_t b, int64_t *x, int64_t *y) {
    if (a == 0) { *x = 0; *y = 1; return b; }
    int64_t x1, y1;
    int64_t gcd = rsa_extended_gcd(b % a, a, &x1, &y1);
    *x = y1 - (b / a) * x1;
    *y = x1;
    return gcd;
}
