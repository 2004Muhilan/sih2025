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
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -28(s0)
	li	a0, 623
	blt	a0, a1, .LBB0_6
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	slli	a0, a2, 2
	add	a0, a0, a1
	lwu	a0, 0(a0)
	lui	a3, 524288
	and	a0, a0, a3
	addiw	a2, a2, 1
	lui	a3, 860370
	addiw	a3, a3, 211
	mul	a4, a2, a3
	srli	a4, a4, 32
	addw	a4, a4, a2
	srliw	a5, a4, 31
	sraiw	a4, a4, 9
	addw	a5, a5, a4
	li	a4, 624
	mulw	a5, a5, a4
	subw	a2, a2, a5
	slli	a2, a2, 2
	add	a1, a1, a2
	lwu	a1, 0(a1)
	slli	a1, a1, 33
	srli	a1, a1, 33
	or	a0, a0, a1
	sw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	addiw	a0, a2, 397
	mul	a3, a0, a3
	srli	a3, a3, 32
	addw	a3, a3, a0
	srliw	a5, a3, 31
	sraiw	a3, a3, 9
	addw	a3, a3, a5
	mulw	a3, a3, a4
	subw	a0, a0, a3
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lwu	a3, -32(s0)
	srli	a3, a3, 1
	xor	a0, a0, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lbu	a0, -32(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a0, 0(a1)
	lui	a2, 626827
	addiw	a2, a2, 223
	xor	a0, a0, a2
	sw	a0, 0(a1)
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_6:
	ld	a0, -24(s0)
	addi	a1, a0, 2047
	li	a0, 0
	sw	a0, 449(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
