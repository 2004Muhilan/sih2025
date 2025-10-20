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
	beqz	a4, .LBB0_2
# %bb.1:
	lbu	a6, 0(a4)
	bnez	a1, .LBB0_3
	j	.LBB0_5
.LBB0_2:
	li	a6, 0
	beqz	a1, .LBB0_5
.LBB0_3:
	li	a5, 0
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	remu	a4, a5, a3
	add	a7, a2, a4
	add	t0, a0, a5
	lbu	t1, 0(t0)
	lbu	a7, 0(a7)
	xor	a4, a6, t1
	xor	a4, a7, a4
	addi	a5, a5, 1
	sb	a4, 0(t0)
	mv	a6, t1
	bne	a1, a5, .LBB0_4
.LBB0_5:
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
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	mv	s3, a5
	mv	s1, a4
	mv	s2, a3
	mv	s4, a2
	mv	s0, a1
	mv	a1, a0
	mv	a0, a5
	mv	a2, s0
	call	memcpy
	beqz	s0, .LBB1_3
# %bb.1:
	li	a0, 0
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	remu	a1, a0, s2
	add	a1, a1, s4
	add	a2, s3, a0
	lbu	a3, 0(a2)
	lbu	a1, 0(a1)
	xor	s1, s1, a3
	xor	a1, a1, s1
	addi	a0, a0, 1
	sb	a1, 0(a2)
	mv	s1, a3
	bne	s0, a0, .LBB1_2
.LBB1_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
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
	beqz	a1, .LBB2_3
# %bb.1:
	li	a6, 0
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	remu	a7, a6, a3
	add	a7, a7, a2
	add	t0, a0, a6
	lbu	t0, 0(t0)
	lbu	a7, 0(a7)
	xor	a4, a4, t0
	xor	a7, a7, a4
	add	a4, a5, a6
	addi	a6, a6, 1
	sb	a7, 0(a4)
	mv	a4, t0
	bne	a1, a6, .LBB2_2
.LBB2_3:
	ret
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
