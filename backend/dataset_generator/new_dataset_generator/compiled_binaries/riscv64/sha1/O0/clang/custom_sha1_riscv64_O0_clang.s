	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_sha1.c"
	.globl	sha1_transform                  # -- Begin function sha1_transform
	.p2align	1
	.type	sha1_transform,@function
sha1_transform:                         # @sha1_transform
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -400
	.cfi_def_cfa_offset 400
	sd	ra, 392(sp)                     # 8-byte Folded Spill
	sd	s0, 384(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 400
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a0, 8(a0)
	sw	a0, -44(s0)
	ld	a0, -24(s0)
	lw	a0, 12(a0)
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	lw	a0, 16(a0)
	sw	a0, -52(s0)
	li	a0, 0
	sw	a0, -376(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -376(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -376(s0)
	slliw	a2, a1, 2
	add	a2, a2, a0
	lbu	a0, 0(a2)
	slliw	a0, a0, 24
	lbu	a3, 1(a2)
	slliw	a3, a3, 16
	or	a0, a0, a3
	lbu	a3, 2(a2)
	slliw	a3, a3, 8
	or	a0, a0, a3
	lbu	a2, 3(a2)
	or	a0, a0, a2
	slli	a2, a1, 2
	addi	a1, s0, -372
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -376(s0)
	addiw	a0, a0, 1
	sw	a0, -376(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 16
	sw	a0, -380(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -380(s0)
	li	a0, 79
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a2, -380(s0)
	addiw	a0, a2, -3
	slli	a0, a0, 2
	addi	a1, s0, -372
	add	a0, a0, a1
	lw	a0, 0(a0)
	addiw	a3, a2, -8
	slli	a3, a3, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	xor	a0, a0, a3
	addiw	a3, a2, -14
	slli	a3, a3, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	xor	a0, a0, a3
	addiw	a3, a2, -16
	slli	a3, a3, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	xor	a0, a0, a3
	srliw	a3, a0, 31
	slliw	a0, a0, 1
	or	a0, a0, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -380(s0)
	addiw	a0, a0, 1
	sw	a0, -380(s0)
	j	.LBB0_5
.LBB0_8:
	li	a0, 0
	sw	a0, -384(s0)
	j	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -384(s0)
	li	a0, 79
	blt	a0, a1, .LBB0_21
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a1, -384(s0)
	li	a0, 19
	blt	a0, a1, .LBB0_12
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a1, -40(s0)
	lw	a0, -44(s0)
	and	a0, a0, a1
	not	a1, a1
	lw	a2, -48(s0)
	and	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -388(s0)
	lui	a0, 370728
	addiw	a0, a0, -1639
	sw	a0, -392(s0)
	j	.LBB0_19
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a1, -384(s0)
	li	a0, 39
	blt	a0, a1, .LBB0_14
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	xor	a0, a0, a1
	lw	a1, -48(s0)
	xor	a0, a0, a1
	sw	a0, -388(s0)
	lui	a0, 454047
	addiw	a0, a0, -1119
	sw	a0, -392(s0)
	j	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a1, -384(s0)
	li	a0, 59
	blt	a0, a1, .LBB0_16
	j	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	lw	a2, -48(s0)
	or	a3, a1, a2
	and	a0, a0, a3
	and	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -388(s0)
	lui	a0, 586172
	addiw	a0, a0, -804
	sw	a0, -392(s0)
	j	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	xor	a0, a0, a1
	lw	a1, -48(s0)
	xor	a0, a0, a1
	sw	a0, -388(s0)
	lui	a0, 828972
	addiw	a0, a0, 470
	sw	a0, -392(s0)
	j	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=1
	j	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=1
	j	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -36(s0)
	srliw	a1, a0, 27
	slliw	a0, a0, 5
	or	a0, a0, a1
	lw	a1, -388(s0)
	addw	a0, a0, a1
	lw	a1, -52(s0)
	addw	a0, a0, a1
	lw	a1, -392(s0)
	addw	a0, a0, a1
	lw	a1, -384(s0)
	slli	a2, a1, 2
	addi	a1, s0, -372
	add	a1, a1, a2
	lw	a1, 0(a1)
	addw	a0, a0, a1
	sw	a0, -396(s0)
	lw	a0, -48(s0)
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	sw	a0, -48(s0)
	lw	a0, -40(s0)
	srliw	a1, a0, 2
	slliw	a0, a0, 30
	or	a0, a0, a1
	sw	a0, -44(s0)
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	lw	a0, -396(s0)
	sw	a0, -36(s0)
	j	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -384(s0)
	addiw	a0, a0, 1
	sw	a0, -384(s0)
	j	.LBB0_9
.LBB0_21:
	lw	a2, -36(s0)
	ld	a1, -24(s0)
	lw	a0, 0(a1)
	addw	a0, a0, a2
	sw	a0, 0(a1)
	lw	a2, -40(s0)
	ld	a1, -24(s0)
	lw	a0, 4(a1)
	addw	a0, a0, a2
	sw	a0, 4(a1)
	lw	a2, -44(s0)
	ld	a1, -24(s0)
	lw	a0, 8(a1)
	addw	a0, a0, a2
	sw	a0, 8(a1)
	lw	a2, -48(s0)
	ld	a1, -24(s0)
	lw	a0, 12(a1)
	addw	a0, a0, a2
	sw	a0, 12(a1)
	lw	a2, -52(s0)
	ld	a1, -24(s0)
	lw	a0, 16(a1)
	addw	a0, a0, a2
	sw	a0, 16(a1)
	ld	ra, 392(sp)                     # 8-byte Folded Reload
	ld	s0, 384(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 400
	ret
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cfi_endproc
                                        # -- End function
	.globl	sha1_init                       # -- Begin function sha1_init
	.p2align	1
	.type	sha1_init,@function
sha1_init:                              # @sha1_init
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
	ld	a1, -24(s0)
	lui	a0, 422994
	addiw	a0, a0, 769
	sw	a0, 0(a1)
	ld	a1, -24(s0)
	lui	a0, 982235
	addiw	a0, a0, -1143
	sw	a0, 4(a1)
	ld	a1, -24(s0)
	lui	a0, 625582
	addiw	a0, a0, -770
	sw	a0, 8(a1)
	ld	a1, -24(s0)
	lui	a0, 66341
	addiw	a0, a0, 1142
	sw	a0, 12(a1)
	ld	a1, -24(s0)
	lui	a0, 802094
	addiw	a0, a0, 496
	sw	a0, 16(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
