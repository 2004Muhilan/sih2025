	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_lcg.c"
	.globl	prng_lcg                        # -- Begin function prng_lcg
	.p2align	1
	.type	prng_lcg,@function
prng_lcg:                               # @prng_lcg
	.cfi_startproc
# %bb.0:
	lw	a1, 0(a0)
	lui	a2, 269413
	addi	a2, a2, -403
	mul	a1, a1, a2
	lui	a2, 3
	addi	a2, a2, 57
	add	a1, a1, a2
	slli	a1, a1, 33
	srli	a1, a1, 33
	sw	a1, 0(a0)
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	prng_lcg, .Lfunc_end0-prng_lcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
