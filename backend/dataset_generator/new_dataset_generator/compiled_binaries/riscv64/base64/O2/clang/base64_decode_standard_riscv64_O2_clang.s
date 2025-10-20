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
	addi	a1, a0, -65
	andi	a2, a1, 255
	li	a1, 25
	bltu	a1, a2, .LBB0_2
# %bb.1:
	addi	a0, a0, -65
	ret
.LBB0_2:
	addi	a2, a0, -97
	andi	a2, a2, 255
	bltu	a1, a2, .LBB0_4
# %bb.3:
	addi	a0, a0, -71
	ret
.LBB0_4:
	addi	a1, a0, -48
	andi	a1, a1, 255
	li	a2, 9
	bltu	a2, a1, .LBB0_6
# %bb.5:
	addi	a0, a0, 4
	ret
.LBB0_6:
	li	a1, 43
	bne	a0, a1, .LBB0_8
# %bb.7:
	li	a0, 62
	ret
.LBB0_8:
	addi	a0, a0, -47
	seqz	a0, a0
	addi	a0, a0, -1
	ori	a0, a0, 63
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
	sd	zero, 0(a2)
	addi	t6, a0, 3
	li	t2, 61
	li	t3, 26
	li	t1, 10
	li	a6, 43
	li	a7, 25
	li	t0, 9
	j	.LBB1_3
.LBB1_1:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a5, a5, -65
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	slli	t4, t4, 12
	slli	t5, t5, 6
	or	a3, t4, t5
	or	a3, a3, a4
	ld	a0, 0(a2)
	slli	a3, a3, 6
	or	a3, a3, a5
	srli	a5, a3, 16
	addi	a4, a0, 1
	sd	a4, 0(a2)
	add	a0, a0, a1
	sb	a5, 0(a0)
	ld	a0, 0(a2)
	srli	a4, a3, 8
	addi	a5, a0, 1
	sd	a5, 0(a2)
	add	a0, a0, a1
	sb	a4, 0(a0)
	ld	a0, 0(a2)
	addi	a4, a0, 1
	sd	a4, 0(a2)
	add	a0, a0, a1
	sb	a3, 0(a0)
	addi	t6, t6, 4
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	lbu	a5, -3(t6)
	beqz	a5, .LBB1_40
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	beq	a5, t2, .LBB1_40
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -65
	andi	a3, a3, 255
	bgeu	a3, t3, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	addi	t4, a5, -65
	j	.LBB1_14
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -97
	andi	a3, a3, 255
	bltu	a7, a3, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	addi	t4, a5, -71
	j	.LBB1_14
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -48
	andi	a3, a3, 255
	bltu	t0, a3, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	addi	t4, a5, 4
	j	.LBB1_14
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	bne	a5, a6, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_3 Depth=1
	li	t4, 62
	j	.LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -47
	seqz	a3, a3
	addi	a3, a3, -1
	ori	t4, a3, 63
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	lbu	a3, -2(t6)
	addi	a4, a3, -65
	andi	a4, a4, 255
	bgeu	a4, t3, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	addi	t5, a3, -65
	j	.LBB1_23
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a4, a3, -97
	andi	a4, a4, 255
	bgeu	a4, t3, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_3 Depth=1
	addi	t5, a3, -71
	j	.LBB1_23
.LBB1_18:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a4, a3, -48
	andi	a4, a4, 255
	bgeu	a4, t1, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	addi	t5, a3, 4
	j	.LBB1_23
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=1
	bne	a3, a6, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_3 Depth=1
	li	t5, 62
	j	.LBB1_23
.LBB1_22:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a3, -47
	seqz	a3, a3
	addi	a3, a3, -1
	ori	t5, a3, 63
.LBB1_23:                               #   in Loop: Header=BB1_3 Depth=1
	lbu	a4, -1(t6)
	addi	a5, a4, -65
	andi	a5, a5, 255
	bgeu	a5, t3, .LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a4, a4, -65
	j	.LBB1_32
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a5, a4, -97
	andi	a5, a5, 255
	bgeu	a5, t3, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a4, a4, -71
	j	.LBB1_32
.LBB1_27:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a5, a4, -48
	andi	a5, a5, 255
	bgeu	a5, t1, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a4, a4, 4
	j	.LBB1_32
.LBB1_29:                               #   in Loop: Header=BB1_3 Depth=1
	bne	a4, a6, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=1
	li	a4, 62
	j	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a4, a4, -47
	seqz	a4, a4
	addi	a4, a4, -1
	ori	a4, a4, 63
.LBB1_32:                               #   in Loop: Header=BB1_3 Depth=1
	lbu	a5, 0(t6)
	addi	a3, a5, -65
	andi	a3, a3, 255
	bltu	a3, t3, .LBB1_1
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -97
	andi	a3, a3, 255
	bgeu	a3, t3, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a5, a5, -71
	j	.LBB1_2
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -48
	andi	a3, a3, 255
	bgeu	a3, t1, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a5, a5, 4
	j	.LBB1_2
.LBB1_37:                               #   in Loop: Header=BB1_3 Depth=1
	bne	a5, a6, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_3 Depth=1
	li	a5, 62
	j	.LBB1_2
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=1
	addi	a3, a5, -47
	seqz	a3, a3
	addi	a3, a3, -1
	ori	a5, a3, 63
	j	.LBB1_2
.LBB1_40:
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
