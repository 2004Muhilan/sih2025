	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_xorshift.c"
	.globl	prng_xorshift                   # -- Begin function prng_xorshift
	.p2align	1
	.type	prng_xorshift,@function
prng_xorshift:                          # @prng_xorshift
	.cfi_startproc
# %bb.0:
	lw	a1, 0(a0)
	slliw	a2, a1, 13
	xor	a1, a1, a2
	srliw	a2, a1, 17
	xor	a1, a1, a2
	slliw	a2, a1, 5
	xor	a1, a1, a2
	sw	a1, 0(a0)
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	prng_xorshift, .Lfunc_end0-prng_xorshift
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
