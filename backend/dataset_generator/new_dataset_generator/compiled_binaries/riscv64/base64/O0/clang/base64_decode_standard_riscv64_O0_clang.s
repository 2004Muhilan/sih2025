	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               # -- Begin function base64_char_value
	.p2align	1
	.type	base64_char_value,@function
base64_char_value:                      # @base64_char_value
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
                                        # kill: def $x11 killed $x10
	sb	a0, -21(s0)
	lbu	a0, -21(s0)
	li	a1, 65
	blt	a0, a1, .LBB0_3
	j	.LBB0_1
.LBB0_1:
	lbu	a1, -21(s0)
	li	a0, 90
	blt	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	lbu	a0, -21(s0)
	addiw	a0, a0, -65
	sw	a0, -20(s0)
	j	.LBB0_14
.LBB0_3:
	lbu	a0, -21(s0)
	li	a1, 97
	blt	a0, a1, .LBB0_6
	j	.LBB0_4
.LBB0_4:
	lbu	a1, -21(s0)
	li	a0, 122
	blt	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:
	lbu	a0, -21(s0)
	addiw	a0, a0, -71
	sw	a0, -20(s0)
	j	.LBB0_14
.LBB0_6:
	lbu	a0, -21(s0)
	li	a1, 48
	blt	a0, a1, .LBB0_9
	j	.LBB0_7
.LBB0_7:
	lbu	a1, -21(s0)
	li	a0, 57
	blt	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:
	lbu	a0, -21(s0)
	addiw	a0, a0, 4
	sw	a0, -20(s0)
	j	.LBB0_14
.LBB0_9:
	lbu	a0, -21(s0)
	li	a1, 43
	bne	a0, a1, .LBB0_11
	j	.LBB0_10
.LBB0_10:
	li	a0, 62
	sw	a0, -20(s0)
	j	.LBB0_14
.LBB0_11:
	lbu	a0, -21(s0)
	li	a1, 47
	bne	a0, a1, .LBB0_13
	j	.LBB0_12
.LBB0_12:
	li	a0, 63
	sw	a0, -20(s0)
	j	.LBB0_14
.LBB0_13:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB0_14
.LBB0_14:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	base64_char_value, .Lfunc_end0-base64_char_value
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode_standard          # -- Begin function base64_decode_standard
	.p2align	1
	.type	base64_decode_standard,@function
base64_decode_standard:                 # @base64_decode_standard
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a1, -40(s0)
	li	a0, 0
	sd	a0, 0(a1)
	sd	a0, -48(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a0, a0, -61
	snez	a0, a0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB1_10
	j	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	li	a0, 0
	sw	a0, -52(s0)
	sw	a0, -56(s0)
	j	.LBB1_5
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -56(s0)
	li	a0, 3
	blt	a0, a1, .LBB1_8
	j	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=2
	lw	a0, -52(s0)
	slliw	a0, a0, 6
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	lw	a2, -56(s0)
	add	a1, a1, a2
	add	a0, a0, a1
	lbu	a0, 0(a0)
	call	base64_char_value
	mv	a1, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	or	a0, a0, a1
	sw	a0, -52(s0)
	j	.LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=2
	lw	a0, -56(s0)
	addiw	a0, a0, 1
	sw	a0, -56(s0)
	j	.LBB1_5
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	lbu	a0, -50(s0)
	ld	a1, -32(s0)
	ld	a4, -40(s0)
	ld	a2, 0(a4)
	addi	a3, a2, 1
	sd	a3, 0(a4)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -51(s0)
	ld	a1, -32(s0)
	ld	a4, -40(s0)
	ld	a2, 0(a4)
	addi	a3, a2, 1
	sd	a3, 0(a4)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -52(s0)
	ld	a1, -32(s0)
	ld	a4, -40(s0)
	ld	a2, 0(a4)
	addi	a3, a2, 1
	sd	a3, 0(a4)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB1_9
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -48(s0)
	addi	a0, a0, 4
	sd	a0, -48(s0)
	j	.LBB1_1
.LBB1_10:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_char_value
