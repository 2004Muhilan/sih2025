	.text
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   # -- Begin function ecc_point_add
	.type	ecc_point_add,@function
ecc_point_add:                          # @ecc_point_add
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r9
	subq	%rsi, %rcx
	movq	%rdx, %rax
	subq	%rdi, %rax
	imulq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r8
	movq	%rdx, %rcx
	movq	%rdx, %rax
	imulq	%rdx, %rax
	addq	%rdi, %r9
	subq	%r9, %rax
	xorl	%edx, %edx
	divq	%r8
	movq	%rdx, %r9
	subq	%rdx, %rdi
	imulq	%rdi, %rcx
	subq	%rsi, %rcx
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r8
	movq	%r9, %rax
	retq
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
