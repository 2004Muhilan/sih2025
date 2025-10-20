	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           # -- Begin function base64_url_char_value
	.p2align	1
	.type	base64_url_char_value,@function
base64_url_char_value:                  # @base64_url_char_value
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
	li	a1, 45
	bne	a0, a1, .LBB0_8
# %bb.7:
	li	a0, 62
	ret
.LBB0_8:
	addi	a0, a0, -95
	seqz	a0, a0
	addi	a0, a0, -1
	ori	a0, a0, 63
	ret
.Lfunc_end0:
	.size	base64_url_char_value, .Lfunc_end0-base64_url_char_value
	.cfi_endproc
                                        # -- End function
	.globl	base64_decode_urlsafe           # -- Begin function base64_decode_urlsafe
	.p2align	1
	.type	base64_decode_urlsafe,@function
base64_decode_urlsafe:                  # @base64_decode_urlsafe
	.cfi_startproc
# %bb.0:
	lbu	a5, 0(a0)
	beqz	a5, .LBB1_11
# %bb.1:
	addi	a0, a0, 1
	li	a2, 26
	li	t0, 25
	li	a7, 9
	li	a6, 45
	j	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	addi	a4, a5, -71
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	sb	a4, 0(a1)
	lbu	a5, 0(a0)
	addi	a1, a1, 1
	addi	a0, a0, 1
	beqz	a5, .LBB1_11
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	addi	a4, a5, -65
	andi	a3, a4, 255
	bltu	a3, a2, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	addi	a3, a5, -97
	andi	a3, a3, 255
	bgeu	t0, a3, .LBB1_2
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	addi	a3, a5, -48
	andi	a3, a3, 255
	bltu	a7, a3, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	addi	a4, a5, 4
	j	.LBB1_3
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	andi	a4, a5, 255
	bne	a4, a6, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	li	a4, 62
	j	.LBB1_3
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	addi	a3, a4, -95
	seqz	a3, a3
	addi	a3, a3, -1
	ori	a4, a3, 63
	j	.LBB1_3
.LBB1_11:
	ret
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
