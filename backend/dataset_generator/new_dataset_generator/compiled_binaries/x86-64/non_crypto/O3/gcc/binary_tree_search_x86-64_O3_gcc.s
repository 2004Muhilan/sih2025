	.file	"binary_tree_search.c"
	.text
	.p2align 4
	.globl	binary_tree_search
	.type	binary_tree_search, @function
binary_tree_search:
.LFB0:
	.cfi_startproc
	endbr64
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	%esi, (%rdi)
	je	.L8
	movq	8(%rdi), %rax
	cmovle	16(%rdi), %rax
	movq	%rax, %rdi
.L9:
	testq	%rdi, %rdi
	jne	.L3
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
