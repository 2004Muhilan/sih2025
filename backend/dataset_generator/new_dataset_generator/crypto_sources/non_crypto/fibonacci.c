#include <stdint.h>

uint32_t fibonacci(uint32_t n) {
    if (n <= 1) {
        return n;
    }
    
    uint32_t a = 0, b = 1;
    for (uint32_t i = 2; i <= n; i++) {
        uint32_t temp = a + b;
        a = b;
        b = temp;
    }
    
    return b;
}
