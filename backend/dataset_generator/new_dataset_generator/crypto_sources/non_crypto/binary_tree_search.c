#include <stdint.h>
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
