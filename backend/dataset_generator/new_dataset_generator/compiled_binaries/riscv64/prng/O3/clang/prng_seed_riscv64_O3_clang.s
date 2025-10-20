	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_seed.c"
	.globl	prng_seed                       # -- Begin function prng_seed
	.p2align	1
	.type	prng_seed,@function
prng_seed:                              # @prng_seed
	.cfi_startproc
# %bb.0:
	sw	a1, 0(a0)
	lui	a2, 442489
	addi	a2, a2, -1691
	xor	a2, a2, a1
	sw	a2, 4(a0)
	lui	a2, 200520
	addi	a2, a2, -624
	xor	a2, a2, a1
	sw	a2, 8(a0)
	lui	a2, 389974
	addi	a2, a2, 1173
	xor	a1, a1, a2
	sw	a1, 12(a0)
	ret
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
