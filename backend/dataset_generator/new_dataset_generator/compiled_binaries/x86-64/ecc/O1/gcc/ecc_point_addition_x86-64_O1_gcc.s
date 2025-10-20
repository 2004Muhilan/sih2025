	.file	"ecc_point_addition.c"
	.text
	.globl	ecc_point_add
	.type	ecc_point_add, @function
ecc_point_add:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdx, %rsi
	movq	%rcx, %rax
	subq	%r9, %rax
	subq	%rdi, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	%r8
	movq	%rdx, %rcx
	movq	%rdx, %rax
	imulq	%rdx, %rax
	addq	%rdi, %rsi
	subq	%rsi, %rax
	movl	$0, %edx
	divq	%r8
	movq	%rdx, %rsi
	movq	%rdi, %rax
	subq	%rdx, %rax
	imulq	%rcx, %rax
	subq	%r9, %rax
	movl	$0, %edx
	divq	%r8
	movq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_point_add, .-ecc_point_add
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
