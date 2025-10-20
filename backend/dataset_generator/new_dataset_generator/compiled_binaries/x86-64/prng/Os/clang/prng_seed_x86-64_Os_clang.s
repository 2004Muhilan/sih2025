	.text
	.file	"prng_seed.c"
	.globl	prng_seed                       # -- Begin function prng_seed
	.type	prng_seed,@function
prng_seed:                              # @prng_seed
	.cfi_startproc
# %bb.0:
	movl	%esi, (%rdi)
	movl	%esi, %eax
	xorl	$1812433253, %eax               # imm = 0x6C078965
	movl	%eax, 4(%rdi)
	movl	%esi, %eax
	xorl	$821329296, %eax                # imm = 0x30F47D90
	movl	%eax, 8(%rdi)
	xorl	$1597334677, %esi               # imm = 0x5F356495
	movl	%esi, 12(%rdi)
	retq
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
