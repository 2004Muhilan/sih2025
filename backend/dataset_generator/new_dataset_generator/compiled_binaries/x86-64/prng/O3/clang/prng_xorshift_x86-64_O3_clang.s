	.text
	.file	"prng_xorshift.c"
	.globl	prng_xorshift                   # -- Begin function prng_xorshift
	.p2align	4, 0x90
	.type	prng_xorshift,@function
prng_xorshift:                          # @prng_xorshift
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %eax
	movl	%eax, %ecx
	shll	$13, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$17, %edx
	xorl	%ecx, %edx
	movl	%edx, %eax
	shll	$5, %eax
	xorl	%edx, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end0:
	.size	prng_xorshift, .Lfunc_end0-prng_xorshift
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
