#include <stdint.h>
#include <stddef.h>

void string_reverse(char *str, size_t len) {
    size_t start = 0;
    size_t end = len - 1;
    
    while (start < end) {
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;
        start++;
        end--;
    }
}
