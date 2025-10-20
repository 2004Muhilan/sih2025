#include <stdint.h>
#include <stddef.h>

void string_concat(char *dest, const char *src, size_t dest_size) {
    size_t dest_len = 0;
    
    // Find end of dest
    while (dest_len < dest_size && dest[dest_len] != '\0') {
        dest_len++;
    }
    
    // Copy src to end of dest
    size_t i = 0;
    while (dest_len < dest_size - 1 && src[i] != '\0') {
        dest[dest_len] = src[i];
        dest_len++;
        i++;
    }
    
    dest[dest_len] = '\0';
}
