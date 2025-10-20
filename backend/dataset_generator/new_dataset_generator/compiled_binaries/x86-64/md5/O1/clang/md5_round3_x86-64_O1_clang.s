	.text
	.file	"md5_round3.c"
	.globl	md5_round3                      # -- Begin function md5_round3
	.p2align	4, 0x90
	.type	md5_round3,@function
md5_round3:                             # @md5_round3
	.cfi_startproc
# %bb.0:
	xorl	%ecx, %edx
	xorl	%esi, %edx
	addl	%r8d, %edx
	addl	8(%rsp), %edx
	addl	(%rdi), %edx
	movl	%r9d, %ecx
	shll	%cl, %edx
	addl	%esi, %edx
	movl	%edx, (%rdi)
	retq
.Lfunc_end0:
	.size	md5_round3, .Lfunc_end0-md5_round3
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
