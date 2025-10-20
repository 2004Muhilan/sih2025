	.text
	.file	"md5_round2.c"
	.globl	md5_round2                      # -- Begin function md5_round2
	.type	md5_round2,@function
md5_round2:                             # @md5_round2
	.cfi_startproc
# %bb.0:
	movl	%esi, %eax
	xorl	%edx, %eax
	andl	%ecx, %eax
	xorl	%edx, %eax
	addl	%r8d, %eax
	addl	8(%rsp), %eax
	addl	(%rdi), %eax
	movl	%r9d, %ecx
	shll	%cl, %eax
	addl	%esi, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end0:
	.size	md5_round2, .Lfunc_end0-md5_round2
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
