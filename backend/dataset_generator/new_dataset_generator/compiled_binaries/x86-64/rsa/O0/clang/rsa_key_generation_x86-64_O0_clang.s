	.text
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               # -- Begin function rsa_generate_keys
	.p2align	4, 0x90
	.type	rsa_generate_keys,@function
rsa_generate_keys:                      # @rsa_generate_keys
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$61, -32(%rbp)
	movq	$53, -40(%rbp)
	movq	-32(%rbp), %rcx
	imulq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	imulq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	$17, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rsa_generate_keys, .Lfunc_end0-rsa_generate_keys
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
