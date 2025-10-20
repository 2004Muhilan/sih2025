	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_compress.c"
	.globl	sha256_compress                 # -- Begin function sha256_compress
	.p2align	1
	.type	sha256_compress,@function
sha256_compress:                        # @sha256_compress
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -368
	.cfi_def_cfa_offset 368
	sd	ra, 360(sp)                     # 8-byte Folded Spill
	sd	s0, 352(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 368
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sw	a0, -292(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -292(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -292(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	addi	a1, s0, -288
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -292(s0)
	addiw	a0, a0, 1
	sw	a0, -292(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 16
	sw	a0, -296(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -296(s0)
	li	a0, 63
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -296(s0)
	addiw	a0, a0, -15
	slli	a0, a0, 2
	addi	a1, s0, -288
	add	a0, a0, a1
	lw	a2, 0(a0)
	srliw	a3, a2, 7
	slliw	a0, a2, 25
	or	a0, a0, a3
	srliw	a4, a2, 18
	slliw	a3, a2, 14
	or	a3, a3, a4
	xor	a0, a0, a3
	srliw	a2, a2, 3
	xor	a0, a0, a2
	sw	a0, -300(s0)
	lw	a0, -296(s0)
	addiw	a0, a0, -2
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a2, 0(a0)
	srliw	a3, a2, 17
	slliw	a0, a2, 15
	or	a0, a0, a3
	srliw	a4, a2, 19
	slliw	a3, a2, 13
	or	a3, a3, a4
	xor	a0, a0, a3
	srliw	a2, a2, 10
	xor	a0, a0, a2
	sw	a0, -304(s0)
	lw	a2, -296(s0)
	addiw	a0, a2, -16
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a3, -300(s0)
	addw	a0, a0, a3
	addiw	a3, a2, -7
	slli	a3, a3, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addw	a0, a0, a3
	lw	a3, -304(s0)
	addw	a0, a0, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -296(s0)
	addiw	a0, a0, 1
	sw	a0, -296(s0)
	j	.LBB0_5
.LBB0_8:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -308(s0)
	ld	a0, -24(s0)
	lw	a0, 4(a0)
	sw	a0, -312(s0)
	ld	a0, -24(s0)
	lw	a0, 8(a0)
	sw	a0, -316(s0)
	ld	a0, -24(s0)
	lw	a0, 12(a0)
	sw	a0, -320(s0)
	ld	a0, -24(s0)
	lw	a0, 16(a0)
	sw	a0, -324(s0)
	ld	a0, -24(s0)
	lw	a0, 20(a0)
	sw	a0, -328(s0)
	ld	a0, -24(s0)
	lw	a0, 24(a0)
	sw	a0, -332(s0)
	ld	a0, -24(s0)
	lw	a0, 28(a0)
	sw	a0, -336(s0)
	li	a0, 0
	sw	a0, -340(s0)
	j	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -340(s0)
	li	a0, 63
	blt	a0, a1, .LBB0_12
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a1, -324(s0)
	srliw	a2, a1, 6
	slliw	a0, a1, 26
	or	a0, a0, a2
	srliw	a3, a1, 11
	slliw	a2, a1, 21
	or	a2, a2, a3
	xor	a0, a0, a2
	srliw	a2, a1, 25
	slliw	a1, a1, 7
	or	a1, a1, a2
	xor	a0, a0, a1
	sw	a0, -344(s0)
	lw	a0, -336(s0)
	lw	a1, -344(s0)
	addw	a0, a0, a1
	lw	a2, -324(s0)
	lw	a1, -328(s0)
	and	a1, a1, a2
	not	a2, a2
	lw	a3, -332(s0)
	and	a2, a2, a3
	or	a1, a1, a2
	addw	a0, a0, a1
	lw	a1, -340(s0)
	slli	a2, a1, 2
	addi	a1, s0, -288
	add	a1, a1, a2
	lw	a1, 0(a1)
	addw	a0, a0, a1
	lui	a1, 272547
	addiw	a1, a1, -104
	addw	a0, a0, a1
	sw	a0, -348(s0)
	lw	a1, -308(s0)
	srliw	a2, a1, 2
	slliw	a0, a1, 30
	or	a0, a0, a2
	srliw	a3, a1, 13
	slliw	a2, a1, 19
	or	a2, a2, a3
	xor	a0, a0, a2
	srliw	a2, a1, 22
	slliw	a1, a1, 10
	or	a1, a1, a2
	xor	a0, a0, a1
	sw	a0, -352(s0)
	lw	a0, -352(s0)
	lw	a4, -308(s0)
	lw	a2, -312(s0)
	and	a1, a4, a2
	lw	a3, -316(s0)
	and	a4, a4, a3
	xor	a1, a1, a4
	and	a2, a2, a3
	xor	a1, a1, a2
	addw	a0, a0, a1
	sw	a0, -356(s0)
	lw	a0, -332(s0)
	sw	a0, -336(s0)
	lw	a0, -328(s0)
	sw	a0, -332(s0)
	lw	a0, -324(s0)
	sw	a0, -328(s0)
	lw	a0, -320(s0)
	lw	a1, -348(s0)
	addw	a0, a0, a1
	sw	a0, -324(s0)
	lw	a0, -316(s0)
	sw	a0, -320(s0)
	lw	a0, -312(s0)
	sw	a0, -316(s0)
	lw	a0, -308(s0)
	sw	a0, -312(s0)
	lw	a0, -348(s0)
	lw	a1, -356(s0)
	addw	a0, a0, a1
	sw	a0, -308(s0)
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -340(s0)
	addiw	a0, a0, 1
	sw	a0, -340(s0)
	j	.LBB0_9
.LBB0_12:
	lw	a2, -308(s0)
	ld	a1, -24(s0)
	lw	a0, 0(a1)
	addw	a0, a0, a2
	sw	a0, 0(a1)
	lw	a2, -312(s0)
	ld	a1, -24(s0)
	lw	a0, 4(a1)
	addw	a0, a0, a2
	sw	a0, 4(a1)
	lw	a2, -316(s0)
	ld	a1, -24(s0)
	lw	a0, 8(a1)
	addw	a0, a0, a2
	sw	a0, 8(a1)
	lw	a2, -320(s0)
	ld	a1, -24(s0)
	lw	a0, 12(a1)
	addw	a0, a0, a2
	sw	a0, 12(a1)
	lw	a2, -324(s0)
	ld	a1, -24(s0)
	lw	a0, 16(a1)
	addw	a0, a0, a2
	sw	a0, 16(a1)
	lw	a2, -328(s0)
	ld	a1, -24(s0)
	lw	a0, 20(a1)
	addw	a0, a0, a2
	sw	a0, 20(a1)
	lw	a2, -332(s0)
	ld	a1, -24(s0)
	lw	a0, 24(a1)
	addw	a0, a0, a2
	sw	a0, 24(a1)
	lw	a2, -336(s0)
	ld	a1, -24(s0)
	lw	a0, 28(a1)
	addw	a0, a0, a2
	sw	a0, 28(a1)
	ld	ra, 360(sp)                     # 8-byte Folded Reload
	ld	s0, 352(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 368
	ret
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
