	.text
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                # -- Begin function rsa_extended_gcd
	.p2align	4, 0x90
	.type	rsa_extended_gcd,@function
rsa_extended_gcd:                       # @rsa_extended_gcd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	callq	rsa_extended_gcd
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	imulq	-48(%rbp), %rax
	subq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rsa_extended_gcd
