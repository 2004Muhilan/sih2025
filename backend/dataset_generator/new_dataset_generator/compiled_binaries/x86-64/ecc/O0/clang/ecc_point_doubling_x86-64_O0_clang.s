	.text
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                # -- Begin function ecc_point_double
	.p2align	4, 0x90
	.type	ecc_point_double,@function
ecc_point_double:                       # @ecc_point_double
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	imulq	%rax, %rax
	leaq	(%rax,%rax,2), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	addq	%rcx, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -64(%rbp)                 # 8-byte Spill
	divq	%rcx
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	-48(%rbp), %rcx
	divq	%rcx
	movq	%rdx, %rax
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	imulq	%rax, %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rcx
	subq	%rcx, %rax
	movq	-48(%rbp), %rcx
	divq	%rcx
	movq	%rdx, %rax
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	subq	%rdi, %rsi
	imulq	%rsi, %rax
	subq	%rcx, %rax
	movq	-48(%rbp), %rcx
	divq	%rcx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
