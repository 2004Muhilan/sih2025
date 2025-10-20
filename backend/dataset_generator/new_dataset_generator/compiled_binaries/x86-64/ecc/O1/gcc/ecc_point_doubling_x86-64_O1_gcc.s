	.file	"ecc_point_doubling.c"
	.text
	.globl	ecc_point_double
	.type	ecc_point_double, @function
ecc_point_double:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	imulq	%rdi, %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rsi), %r8
	movl	$0, %edx
	divq	%r8
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %r8
	movq	%rdx, %rax
	imulq	%rdx, %rax
	leaq	(%rdi,%rdi), %rdx
	subq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %r9
	movq	%rdi, %rax
	subq	%rdx, %rax
	imulq	%r8, %rax
	subq	%rsi, %rax
	movl	$0, %edx
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
