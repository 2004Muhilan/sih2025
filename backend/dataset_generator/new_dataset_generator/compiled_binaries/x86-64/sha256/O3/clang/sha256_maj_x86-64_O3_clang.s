	.text
	.file	"sha256_maj.c"
	.globl	sha256_maj                      # -- Begin function sha256_maj
	.p2align	4, 0x90
	.type	sha256_maj,@function
sha256_maj:                             # @sha256_maj
	.cfi_startproc
# %bb.0:
	movl	%edx, %eax
	xorl	%esi, %eax
	andl	%edi, %eax
	andl	%esi, %edx
	xorl	%edx, %eax
	retq
.Lfunc_end0:
	.size	sha256_maj, .Lfunc_end0-sha256_maj
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
