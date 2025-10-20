	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_mersenne.c"
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0                          # -- Begin function prng_mersenne_twist
.LCPI0_0:
	.quad	945986875574848801              # 0xd20d20d20d20d21
	.text
	.globl	prng_mersenne_twist
	.p2align	1
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    # @prng_mersenne_twist
	.cfi_startproc
# %bb.0:
	addi	t6, a0, 1588
	li	a5, 397
	li	a3, 1
.Lpcrel_hi0:
	auipc	a4, %pcrel_hi(.LCPI0_0)
	ld	a7, %pcrel_lo(.Lpcrel_hi0)(a4)
	lui	a4, 1048575
	addiw	t0, a4, 1600
	lui	a6, 524288
	addiw	t2, a6, -2
	lui	a4, 626827
	addi	t3, a4, 223
	li	t1, 625
	mv	a4, a0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	srli	a2, a5, 4
	mulhu	a2, a2, a7
	srli	a2, a2, 1
	mul	t4, a2, t0
	lwu	t5, 0(a4)
	addi	a2, a3, -624
	seqz	a2, a2
	addi	a2, a2, -1
	and	a2, a2, a3
	slli	a2, a2, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	add	t4, t4, t6
	and	t5, t5, a6
	lw	t4, 0(t4)
	and	a1, a2, t2
	or	a1, a1, t5
	srli	a1, a1, 1
	xor	a1, a1, t4
	slli	a2, a2, 63
	srai	a2, a2, 63
	and	a2, a2, t3
	xor	a1, a1, a2
	sw	a1, 0(a4)
	addi	t6, t6, 4
	addi	a5, a5, 1
	addi	a3, a3, 1
	addi	a4, a4, 4
	bne	a3, t1, .LBB0_1
# %bb.2:
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
