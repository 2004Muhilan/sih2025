#include <stdint.h>

uint64_t factorial(uint32_t n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    
    uint64_t result = 1;
    for (uint32_t i = 2; i <= n; i++) {
        result *= i;
    }
    
    return result;
}
