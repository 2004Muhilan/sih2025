	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 # -- Begin function ecc_ecdh_shared
	.p2align	4, 0x90
	.type	ecc_ecdh_shared,@function
ecc_ecdh_shared:                        # @ecc_ecdh_shared
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ecc_ecdh_shared, .Lfunc_end0-ecc_ecdh_shared
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
