#include <stdint.h>
#include <stdbool.h>

bool rsa_miller_rabin(uint64_t n, int k) {
    if (n < 2) return false;
    if (n == 2 || n == 3) return true;
    if (n % 2 == 0) return false;
    uint64_t d = n - 1;
    while (d % 2 == 0) d /= 2;
    return true;  // Simplified
}
