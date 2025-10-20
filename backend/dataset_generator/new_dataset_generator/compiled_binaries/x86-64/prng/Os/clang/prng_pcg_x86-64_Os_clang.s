	.text
	.file	"prng_pcg.c"
	.globl	prng_pcg                        # -- Begin function prng_pcg
	.type	prng_pcg,@function
prng_pcg:                               # @prng_pcg
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rcx
	movabsq	$6364136223846793005, %rax      # imm = 0x5851F42D4C957F2D
	imulq	%rcx, %rax
	incq	%rax
	movq	%rax, (%rdi)
	movq	%rcx, %rax
	shrq	$45, %rax
	movq	%rcx, %rdx
	shrq	$27, %rdx
	xorl	%edx, %eax
	shrq	$59, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	rorl	%cl, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
