	.text
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   # -- Begin function ecc_point_add
	.p2align	4, 0x90
	.type	ecc_point_add,@function
ecc_point_add:                          # @ecc_point_add
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	subq	%rsi, %rax
	subq	%rdx, %rcx
	imulq	%rcx, %rax
	movq	-56(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -72(%rbp)                 # 8-byte Spill
	divq	%rcx
	movq	%rdx, %rax
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	imulq	%rax, %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-56(%rbp), %rcx
	divq	%rcx
	movq	%rdx, %rax
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	subq	%rdi, %rsi
	imulq	%rsi, %rax
	subq	%rcx, %rax
	movq	-56(%rbp), %rcx
	divq	%rcx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
