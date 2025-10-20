	.text
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   # -- Begin function sha256_sigma0
	.p2align	4, 0x90
	.type	sha256_sigma0,@function
sha256_sigma0:                          # @sha256_sigma0
	.cfi_startproc
# %bb.0:
	movl	%edi, %ecx
	roll	$30, %ecx
	movl	%edi, %eax
	roll	$19, %eax
	xorl	%ecx, %eax
	roll	$10, %edi
	xorl	%edi, %eax
	retq
.Lfunc_end0:
	.size	sha256_sigma0, .Lfunc_end0-sha256_sigma0
	.cfi_endproc
                                        # -- End function
	.globl	sha256_sigma1                   # -- Begin function sha256_sigma1
	.p2align	4, 0x90
	.type	sha256_sigma1,@function
sha256_sigma1:                          # @sha256_sigma1
	.cfi_startproc
# %bb.0:
	movl	%edi, %ecx
	roll	$26, %ecx
	movl	%edi, %eax
	roll	$21, %eax
	xorl	%ecx, %eax
	roll	$7, %edi
	xorl	%edi, %eax
	retq
.Lfunc_end1:
	.size	sha256_sigma1, .Lfunc_end1-sha256_sigma1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
