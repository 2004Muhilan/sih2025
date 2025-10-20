#include <stdint.h>
#include <stddef.h>

int32_t array_max(const int32_t *arr, size_t len) {
    if (len == 0) {
        return 0;
    }
    
    int32_t max = arr[0];
    
    for (size_t i = 1; i < len; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    
    return max;
}
