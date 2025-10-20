	.file	"ecc_point_doubling.c"
	.text
	.globl	ecc_point_double
	.type	ecc_point_double, @function
ecc_point_double:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	leaq	(%rsi,%rsi), %r8
	imulq	%rdi, %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	xorl	%edx, %edx
	divq	%r8
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	movq	%rdx, %r8
	imulq	%rdx, %rax
	leaq	(%rdi,%rdi), %rdx
	subq	%rdx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdi, %rax
	subq	%rdx, %rax
	movq	%rdx, %r9
	xorl	%edx, %edx
	imulq	%r8, %rax
	subq	%rsi, %rax
	divq	%rcx
	movq	%r9, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_point_double, .-ecc_point_double
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
