	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             # -- Begin function prng_mersenne_twist
	.p2align	1
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    # @prng_mersenne_twist
	.cfi_startproc
# %bb.0:
	li	a3, 0
	lui	a6, 524288
	addiw	t2, a6, -2
	li	a1, 1
	slli	a1, a1, 32
	addi	t0, a1, -227
	li	a7, 227
	lui	a1, 626827
	addi	t3, a1, 223
	li	t1, 624
	mv	a4, a0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	li	a1, 397
	bltu	a3, a7, .LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	mv	a1, t0
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lwu	a2, 0(a4)
	and	t4, a2, a6
	addi	a5, a3, 1
	addi	a2, a3, -623
	seqz	a2, a2
	addi	a2, a2, -1
	and	a2, a2, a5
	slli	a2, a2, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	add	a1, a1, a3
	slli	a1, a1, 32
	srli	a1, a1, 30
	add	a1, a1, a0
	lw	a1, 0(a1)
	and	a3, a2, t2
	or	a3, a3, t4
	srli	a3, a3, 1
	xor	a1, a1, a3
	slli	a2, a2, 63
	srai	a2, a2, 63
	and	a2, a2, t3
	xor	a1, a1, a2
	sw	a1, 0(a4)
	addi	a4, a4, 4
	mv	a3, a5
	bne	a5, t1, .LBB0_1
# %bb.4:
	addi	a0, a0, 2047
	sw	zero, 449(a0)
	ret
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
