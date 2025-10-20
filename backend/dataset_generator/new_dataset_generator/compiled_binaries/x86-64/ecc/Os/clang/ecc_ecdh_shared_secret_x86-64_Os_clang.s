	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 # -- Begin function ecc_ecdh_shared
	.type	ecc_ecdh_shared,@function
ecc_ecdh_shared:                        # @ecc_ecdh_shared
	.cfi_startproc
# %bb.0:
	imulq	%rdx, %rdi
	movabsq	$-9223372034707292159, %rcx     # imm = 0x8000000080000001
	movq	%rdi, %rax
	mulq	%rcx
	shrq	$31, %rdx
	movq	%rdx, %rax
	shlq	$32, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdi), %rax
	retq
.Lfunc_end0:
	.size	ecc_ecdh_shared, .Lfunc_end0-ecc_ecdh_shared
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
