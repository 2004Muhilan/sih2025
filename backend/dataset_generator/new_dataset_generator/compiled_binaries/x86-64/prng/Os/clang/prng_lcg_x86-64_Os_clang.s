	.text
	.file	"prng_lcg.c"
	.globl	prng_lcg                        # -- Begin function prng_lcg
	.type	prng_lcg,@function
prng_lcg:                               # @prng_lcg
	.cfi_startproc
# %bb.0:
	imull	$1103515245, (%rdi), %eax       # imm = 0x41C64E6D
	addl	$12345, %eax                    # imm = 0x3039
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	movl	%eax, (%rdi)
	retq
.Lfunc_end0:
	.size	prng_lcg, .Lfunc_end0-prng_lcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
