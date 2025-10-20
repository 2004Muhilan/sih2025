	.file	"binary_tree_search.c"
	.text
	.globl	binary_tree_search
	.type	binary_tree_search, @function
binary_tree_search:
.LFB0:
	.cfi_startproc
	endbr64
.L2:
	testq	%rdi, %rdi
	je	.L5
	cmpl	%esi, (%rdi)
	je	.L6
	movq	16(%rdi), %rax
	cmovg	8(%rdi), %rax
	movq	%rax, %rdi
	jmp	.L2
.L5:
	xorl	%eax, %eax
	ret
.L6:
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
