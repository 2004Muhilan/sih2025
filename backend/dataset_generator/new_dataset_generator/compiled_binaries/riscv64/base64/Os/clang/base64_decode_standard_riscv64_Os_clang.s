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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	mv	s7, a2
	mv	s3, a1
	mv	s2, a0
	li	s5, 0
	sd	zero, 0(a2)
	li	s4, 61
	mv	s6, a0
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	add	s1, s2, s5
	lbu	a0, 0(s1)
	beqz	a0, .LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	beq	a0, s4, .LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	li	a1, 0
	addi	s8, s1, 4
	mv	s0, s6
.LBB1_4:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s0)
	slli	s1, a1, 6
	call	base64_char_value
	addi	s0, s0, 1
	or	a1, a0, s1
	bne	s0, s8, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, 0(s7)
	srli	a2, a1, 16
	addi	a3, a0, 1
	sd	a3, 0(s7)
	add	a0, a0, s3
	sb	a2, 0(a0)
	ld	a0, 0(s7)
	srli	a2, a1, 8
	addi	a3, a0, 1
	sd	a3, 0(s7)
	add	a0, a0, s3
	sb	a2, 0(a0)
	ld	a0, 0(s7)
	addi	a2, a0, 1
	sd	a2, 0(s7)
	add	a0, a0, s3
	sb	a1, 0(a0)
	addi	s5, s5, 4
	addi	s6, s6, 4
	j	.LBB1_1
.LBB1_6:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
