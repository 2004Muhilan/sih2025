#include <stdint.h>
#include <stddef.h>

int32_t array_sum(const int32_t *arr, size_t len) {
    int32_t sum = 0;
    
    for (size_t i = 0; i < len; i++) {
        sum += arr[i];
    }
    
    return sum;
}
