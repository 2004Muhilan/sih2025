	.file	"ecc_point_doubling.c"
	.text
	.globl	ecc_point_double
	.type	ecc_point_double, @function
ecc_point_double:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	imulq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	(%rdx,%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	imulq	%rax, %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rdx
	subq	%rdx, %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	imulq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa 7, 8
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
