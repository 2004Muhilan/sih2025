	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             # -- Begin function xor_cipher_feedback
	.p2align	1
	.type	xor_cipher_feedback,@function
xor_cipher_feedback:                    # @xor_cipher_feedback
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	ld	a0, -56(s0)
	beqz	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	j	.LBB0_3
.LBB0_2:
	li	a0, 0
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	j	.LBB0_3
.LBB0_3:
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	sb	a0, -57(s0)
	li	a0, 0
	sd	a0, -72(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -72(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_7
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -40(s0)
	ld	a1, -72(s0)
	ld	a2, -48(s0)
	remu	a1, a1, a2
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lbu	a1, -57(s0)
	xor	a0, a0, a1
	sb	a0, -73(s0)
	ld	a0, -24(s0)
	ld	a1, -72(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -74(s0)
	lbu	a2, -73(s0)
	ld	a0, -24(s0)
	ld	a1, -72(s0)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	lbu	a0, -74(s0)
	sb	a0, -57(s0)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -72(s0)
	addi	a0, a0, 1
	sd	a0, -72(s0)
	j	.LBB0_4
.LBB0_7:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	xor_cipher_feedback, .Lfunc_end0-xor_cipher_feedback
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_feedback            # -- Begin function xor_encrypt_feedback
	.p2align	1
	.type	xor_encrypt_feedback,@function
xor_encrypt_feedback:                   # @xor_encrypt_feedback
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
                                        # kill: def $x16 killed $x14
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sb	a4, -49(s0)
	sd	a5, -64(s0)
	ld	a0, -64(s0)
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	call	memcpy
	ld	a0, -64(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	addi	a4, s0, -49
	call	xor_cipher_feedback
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	xor_encrypt_feedback, .Lfunc_end1-xor_encrypt_feedback
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_feedback            # -- Begin function xor_decrypt_feedback
	.p2align	1
	.type	xor_decrypt_feedback,@function
xor_decrypt_feedback:                   # @xor_decrypt_feedback
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
                                        # kill: def $x16 killed $x14
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sb	a4, -49(s0)
	sd	a5, -64(s0)
	lbu	a0, -49(s0)
	sb	a0, -65(s0)
	li	a0, 0
	sd	a0, -80(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -80(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB2_4
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -40(s0)
	ld	a1, -80(s0)
	ld	a2, -48(s0)
	remu	a1, a1, a2
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lbu	a1, -65(s0)
	xor	a0, a0, a1
	sb	a0, -81(s0)
	ld	a0, -24(s0)
	ld	a1, -80(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -65(s0)
	ld	a0, -24(s0)
	ld	a2, -80(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lbu	a1, -81(s0)
	xor	a0, a0, a1
	ld	a1, -64(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -80(s0)
	addi	a0, a0, 1
	sd	a0, -80(s0)
	j	.LBB2_1
.LBB2_4:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_feedback
