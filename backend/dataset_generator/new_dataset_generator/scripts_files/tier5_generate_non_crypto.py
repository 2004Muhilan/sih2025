# scripts/tier5_generate_non_crypto.py
#!/usr/bin/env python3
"""
Generate non-crypto C source files for balanced dataset
Target: 10 files → ~650 assemblies
"""
from pathlib import Path

# Non-crypto C functions - simple, no dependencies, pure logic
NON_CRYPTO_FUNCTIONS = {
    # Sorting Algorithms (2 files)
    "quicksort.c": '''#include <stdint.h>
#include <stddef.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    
    for (int j = low; j < high; j++) {
        if (arr[j] < pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return i + 1;
}

void quicksort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quicksort(arr, low, pi - 1);
        quicksort(arr, pi + 1, high);
    }
}
''',
    
    "bubblesort.c": '''#include <stdint.h>
#include <stddef.h>

void bubblesort(int arr[], size_t n) {
    for (size_t i = 0; i < n - 1; i++) {
        for (size_t j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}
''',
    
    # String Operations (2 files)
    "string_reverse.c": '''#include <stdint.h>
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
''',
    
    "string_concat.c": '''#include <stdint.h>
#include <stddef.h>

void string_concat(char *dest, const char *src, size_t dest_size) {
    size_t dest_len = 0;
    
    // Find end of dest
    while (dest_len < dest_size && dest[dest_len] != '\\0') {
        dest_len++;
    }
    
    // Copy src to end of dest
    size_t i = 0;
    while (dest_len < dest_size - 1 && src[i] != '\\0') {
        dest[dest_len] = src[i];
        dest_len++;
        i++;
    }
    
    dest[dest_len] = '\\0';
}
''',
    
    # Math Functions (2 files)
    "factorial.c": '''#include <stdint.h>

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
''',
    
    "fibonacci.c": '''#include <stdint.h>

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
''',
    
    # Array Operations (2 files)
    "array_sum.c": '''#include <stdint.h>
#include <stddef.h>

int32_t array_sum(const int32_t *arr, size_t len) {
    int32_t sum = 0;
    
    for (size_t i = 0; i < len; i++) {
        sum += arr[i];
    }
    
    return sum;
}
''',
    
    "array_max.c": '''#include <stdint.h>
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
''',
    
    # Data Structures (2 files)
    "linked_list_insert.c": '''#include <stdint.h>
#include <stddef.h>

typedef struct Node {
    int data;
    struct Node *next;
} Node;

void linked_list_insert(Node **head, int data) {
    // This is a simplified version - no malloc in this example
    // Just demonstrates list traversal logic
    Node *current = *head;
    
    if (current == NULL) {
        return;  // Would normally create new node
    }
    
    while (current->next != NULL) {
        current = current->next;
    }
    
    // Would normally: current->next = new_node;
}
''',
    
    "binary_tree_search.c": '''#include <stdint.h>
#include <stddef.h>

typedef struct TreeNode {
    int data;
    struct TreeNode *left;
    struct TreeNode *right;
} TreeNode;

int binary_tree_search(TreeNode *root, int target) {
    if (root == NULL) {
        return 0;  // Not found
    }
    
    if (root->data == target) {
        return 1;  // Found
    }
    
    if (target < root->data) {
        return binary_tree_search(root->left, target);
    } else {
        return binary_tree_search(root->right, target);
    }
}
'''
}

def main():
    print("="*70)
    print("TIER 5: GENERATING NON-CRYPTO SOURCE FILES")
    print("="*70)
    print()
    
    # Create non_crypto directory
    non_crypto_dir = Path("crypto_sources/non_crypto")
    non_crypto_dir.mkdir(parents=True, exist_ok=True)
    
    print(f"📁 Creating directory: {non_crypto_dir}")
    print()
    
    created_count = 0
    
    # Generate each file
    for filename, content in NON_CRYPTO_FUNCTIONS.items():
        file_path = non_crypto_dir / filename
        
        with open(file_path, 'w') as f:
            f.write(content)
        
        print(f"✅ Created: {filename}")
        created_count += 1
    
    print()
    print("="*70)
    print("SUMMARY")
    print("="*70)
    print(f"✅ Created: {created_count} non-crypto C files")
    print(f"📂 Location: crypto_sources/non_crypto/")
    print()
    
    print("📊 EXPECTED OUTPUT")
    print("-"*70)
    print(f"Source files: {created_count}")
    print(f"Expected assemblies: {created_count * 65} (~10 files × 65 per file)")
    print(f"  - Per architecture: ~93 assemblies each")
    print(f"  - 7 architectures × 5 opts × ~1.86 compilers")
    print()
    
    print("📌 NEXT STEP")
    print("-"*70)
    print("Compile non-crypto files:")
    print("  ./scripts/tier5_compile_non_crypto.sh")
    print()
    print("="*70)

if __name__ == "__main__":
    main()