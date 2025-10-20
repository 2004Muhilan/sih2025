	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     # -- Begin function hmac_sha256
	.p2align	1
	.type	hmac_sha256,@function
hmac_sha256:                            # @hmac_sha256
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -224
	.cfi_def_cfa_offset 224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 224
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	li	a0, 0
	sd	a0, -192(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a1, -192(s0)
	li	a0, 63
	bltu	a0, a1, .LBB0_10
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -192(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -192(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sd	a0, -208(s0)                    # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	li	a0, 0
	sd	a0, -208(s0)                    # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -208(s0)                    # 8-byte Folded Reload
	xori	a0, a0, 54
	ld	a2, -192(s0)
	addi	a1, s0, -120
	add	a1, a1, a2
	sb	a0, 0(a1)
	ld	a0, -192(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -192(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sd	a0, -216(s0)                    # 8-byte Folded Spill
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	a0, 0
	sd	a0, -216(s0)                    # 8-byte Folded Spill
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -216(s0)                    # 8-byte Folded Reload
	xori	a0, a0, 92
	ld	a2, -192(s0)
	addi	a1, s0, -184
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -192(s0)
	addi	a0, a0, 1
	sd	a0, -192(s0)
	j	.LBB0_1
.LBB0_10:
	li	a0, 0
	sw	a0, -196(s0)
	j	.LBB0_11
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -196(s0)
	li	a0, 31
	blt	a0, a1, .LBB0_14
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	lw	a2, -196(s0)
	addi	a0, s0, -120
	add	a0, a0, a2
	lbu	a0, 0(a0)
	addi	a1, s0, -184
	add	a1, a1, a2
	lbu	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	lw	a0, -196(s0)
	addiw	a0, a0, 1
	sw	a0, -196(s0)
	j	.LBB0_11
.LBB0_14:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
