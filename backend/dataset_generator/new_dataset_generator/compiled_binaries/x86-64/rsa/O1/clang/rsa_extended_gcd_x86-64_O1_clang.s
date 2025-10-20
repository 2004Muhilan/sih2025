	.text
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                # -- Begin function rsa_extended_gcd
	.p2align	4, 0x90
	.type	rsa_extended_gcd,@function
rsa_extended_gcd:                       # @rsa_extended_gcd
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %rax
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %rsi
	cqto
	idivq	%rdi
	movq	%rax, %r15
	movq	%rdx, %rdi
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	callq	rsa_extended_gcd
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	imulq	%rdx, %r15
	subq	%r15, %rcx
	movq	%rcx, (%r14)
	movq	%rdx, (%rbx)
	jmp	.LBB0_3
.LBB0_1:
	movq	$0, (%r14)
	movq	$1, (%rbx)
.LBB0_3:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
