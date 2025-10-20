	.text
	.file	"sha256_ch.c"
	.globl	sha256_ch                       # -- Begin function sha256_ch
	.type	sha256_ch,@function
sha256_ch:                              # @sha256_ch
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	xorl	%edx, %eax
	andl	%edi, %eax
	xorl	%edx, %eax
	retq
.Lfunc_end0:
	.size	sha256_ch, .Lfunc_end0-sha256_ch
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
