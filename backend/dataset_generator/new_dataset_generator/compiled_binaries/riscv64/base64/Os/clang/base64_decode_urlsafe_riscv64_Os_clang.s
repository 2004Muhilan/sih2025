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
	lbu	a2, 0(a0)
	beqz	a2, .LBB1_4
# %bb.1:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	mv	s0, a1
	addi	s1, a0, 1
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	andi	a0, a2, 255
	call	base64_url_char_value
	sb	a0, 0(s0)
	lbu	a2, 0(s1)
	addi	s0, s0, 1
	addi	s1, s1, 1
	bnez	a2, .LBB1_2
# %bb.3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB1_4:
	ret
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
