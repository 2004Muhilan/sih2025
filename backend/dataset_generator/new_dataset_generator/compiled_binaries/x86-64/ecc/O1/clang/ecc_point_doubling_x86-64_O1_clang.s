	.text
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                # -- Begin function ecc_point_double
	.p2align	4, 0x90
	.type	ecc_point_double,@function
ecc_point_double:                       # @ecc_point_double
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	imulq	%rdi, %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rsi), %r8
	xorl	%edx, %edx
	divq	%r8
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	movq	%rdx, %rax
	imulq	%rdx, %rax
	subq	%rdi, %rax
	subq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r9
	subq	%rdx, %rdi
	imulq	%rdi, %r8
	subq	%rsi, %r8
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%r9, %rax
	retq
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
