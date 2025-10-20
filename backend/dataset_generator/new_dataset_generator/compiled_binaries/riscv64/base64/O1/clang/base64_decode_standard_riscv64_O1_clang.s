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
	li	t0, 0
	sd	zero, 0(a2)
	li	a6, 61
	li	t3, 25
	li	t2, 9
	li	a7, 43
	mv	t1, a0
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	ld	a5, 0(a2)
	srli	t4, t5, 16
	addi	a4, a5, 1
	sd	a4, 0(a2)
	add	a5, a5, a1
	sb	t4, 0(a5)
	ld	a5, 0(a2)
	srli	t4, t5, 8
	addi	a4, a5, 1
	sd	a4, 0(a2)
	add	a5, a5, a1
	sb	t4, 0(a5)
	ld	a4, 0(a2)
	addi	a5, a4, 1
	sd	a5, 0(a2)
	add	a4, a4, a1
	sb	t5, 0(a4)
	addi	t0, t0, 4
	addi	t1, t1, 4
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	add	t4, a0, t0
	lbu	a3, 0(t4)
	beqz	a3, .LBB1_15
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	beq	a3, a6, .LBB1_15
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	li	t5, 0
	addi	t4, t4, 4
	mv	a5, t1
	j	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=2
	addi	a4, a4, -65
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=2
	slli	t5, t5, 6
	addi	a5, a5, 1
	or	t5, a4, t5
	beq	a5, t4, .LBB1_1
.LBB1_7:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a4, 0(a5)
	addi	a3, a4, -65
	andi	a3, a3, 255
	bgeu	t3, a3, .LBB1_5
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	addi	a3, a4, -97
	andi	a3, a3, 255
	bltu	t3, a3, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	addi	a4, a4, -71
	j	.LBB1_6
.LBB1_10:                               #   in Loop: Header=BB1_7 Depth=2
	addi	a3, a4, -48
	andi	a3, a3, 255
	bltu	t2, a3, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_7 Depth=2
	addi	a4, a4, 4
	j	.LBB1_6
.LBB1_12:                               #   in Loop: Header=BB1_7 Depth=2
	bne	a4, a7, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_7 Depth=2
	li	a4, 62
	j	.LBB1_6
.LBB1_14:                               #   in Loop: Header=BB1_7 Depth=2
	addi	a3, a4, -47
	seqz	a3, a3
	addi	a3, a3, -1
	ori	a4, a3, 63
	j	.LBB1_6
.LBB1_15:
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
