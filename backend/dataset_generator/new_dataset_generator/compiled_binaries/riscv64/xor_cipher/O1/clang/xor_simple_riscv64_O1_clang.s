	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               # -- Begin function xor_cipher_simple
	.p2align	1
	.type	xor_cipher_simple,@function
xor_cipher_simple:                      # @xor_cipher_simple
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_3
# %bb.1:
	li	a4, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	remu	a5, a4, a3
	add	a5, a5, a2
	lbu	a6, 0(a5)
	add	a7, a0, a4
	lbu	a5, 0(a7)
	xor	a5, a5, a6
	addi	a4, a4, 1
	sb	a5, 0(a7)
	bne	a1, a4, .LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_cipher_simple, .Lfunc_end0-xor_cipher_simple
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_simple              # -- Begin function xor_encrypt_simple
	.p2align	1
	.type	xor_encrypt_simple,@function
xor_encrypt_simple:                     # @xor_encrypt_simple
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s0, a4
	mv	s2, a3
	mv	s3, a2
	mv	s1, a1
	mv	a1, a0
	mv	a0, a4
	mv	a2, s1
	call	memcpy
	beqz	s1, .LBB1_3
# %bb.1:
	li	a0, 0
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	remu	a1, a0, s2
	add	a1, a1, s3
	lbu	a1, 0(a1)
	add	a2, s0, a0
	lbu	a3, 0(a2)
	xor	a1, a1, a3
	addi	a0, a0, 1
	sb	a1, 0(a2)
	bne	s1, a0, .LBB1_2
.LBB1_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	xor_encrypt_simple, .Lfunc_end1-xor_encrypt_simple
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_simple              # -- Begin function xor_decrypt_simple
	.p2align	1
	.type	xor_decrypt_simple,@function
xor_decrypt_simple:                     # @xor_decrypt_simple
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s0, a4
	mv	s2, a3
	mv	s3, a2
	mv	s1, a1
	mv	a1, a0
	mv	a0, a4
	mv	a2, s1
	call	memcpy
	beqz	s1, .LBB2_3
# %bb.1:
	li	a0, 0
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	remu	a1, a0, s2
	add	a1, a1, s3
	lbu	a1, 0(a1)
	add	a2, s0, a0
	lbu	a3, 0(a2)
	xor	a1, a1, a3
	addi	a0, a0, 1
	sb	a1, 0(a2)
	bne	s1, a0, .LBB2_2
.LBB2_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	xor_decrypt_simple, .Lfunc_end2-xor_decrypt_simple
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
