	.file	"binary_tree_search.c"
	.text
	.globl	binary_tree_search
	.type	binary_tree_search, @function
binary_tree_search:
.LFB0:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L4
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	(%rdi), %edx
	movl	$1, %eax
	cmpl	%esi, %edx
	je	.L1
	jle	.L3
	movq	8(%rdi), %rdi
	call	binary_tree_search
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L3:
	.cfi_restore_state
	movq	16(%rdi), %rdi
	call	binary_tree_search
	jmp	.L1
.L4:
	.cfi_def_cfa_offset 8
	movl	$0, %eax
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
