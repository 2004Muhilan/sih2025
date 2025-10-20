	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             # -- Begin function xor_cipher_rotating
	.p2align	1
	.type	xor_cipher_rotating,@function
xor_cipher_rotating:                    # @xor_cipher_rotating
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_3
# %bb.1:
	li	a4, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	remu	a5, a4, a3
	add	a6, a2, a5
	lbu	t0, 0(a6)
	add	a7, a0, a4
	lbu	a5, 0(a7)
	xor	a5, a5, t0
	sb	a5, 0(a7)
	srli	a5, t0, 7
	slli	t0, t0, 1
	or	a5, t0, a5
	addi	a4, a4, 1
	sb	a5, 0(a6)
	bne	a1, a4, .LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_rotating            # -- Begin function xor_encrypt_rotating
	.p2align	1
	.type	xor_encrypt_rotating,@function
xor_encrypt_rotating:                   # @xor_encrypt_rotating
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -304
	.cfi_def_cfa_offset 304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	mv	s2, a4
	mv	s1, a3
	mv	s3, a2
	mv	s0, a1
	mv	a1, a0
	mv	a0, a4
	mv	a2, s0
	call	memcpy
	mv	a0, sp
	mv	s4, sp
	mv	a1, s3
	mv	a2, s1
	call	memcpy
	beqz	s0, .LBB1_3
# %bb.1:
	li	a0, 0
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	remu	a1, a0, s1
	add	a1, a1, s4
	lbu	a2, 0(a1)
	add	a3, s2, a0
	lbu	a4, 0(a3)
	xor	a4, a4, a2
	sb	a4, 0(a3)
	srli	a3, a2, 7
	slli	a2, a2, 1
	or	a2, a2, a3
	addi	a0, a0, 1
	sb	a2, 0(a1)
	bne	s0, a0, .LBB1_2
.LBB1_3:
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end1:
	.size	xor_encrypt_rotating, .Lfunc_end1-xor_encrypt_rotating
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_rotating            # -- Begin function xor_decrypt_rotating
	.p2align	1
	.type	xor_decrypt_rotating,@function
xor_decrypt_rotating:                   # @xor_decrypt_rotating
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -304
	.cfi_def_cfa_offset 304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	mv	s2, a4
	mv	s1, a3
	mv	s3, a2
	mv	s0, a1
	mv	a1, a0
	mv	a0, a4
	mv	a2, s0
	call	memcpy
	mv	a0, sp
	mv	s4, sp
	mv	a1, s3
	mv	a2, s1
	call	memcpy
	beqz	s0, .LBB2_3
# %bb.1:
	li	a0, 0
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	remu	a1, a0, s1
	add	a1, a1, s4
	lbu	a2, 0(a1)
	add	a3, s2, a0
	lbu	a4, 0(a3)
	xor	a4, a4, a2
	sb	a4, 0(a3)
	srli	a3, a2, 7
	slli	a2, a2, 1
	or	a2, a2, a3
	addi	a0, a0, 1
	sb	a2, 0(a1)
	bne	s0, a0, .LBB2_2
.LBB2_3:
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end2:
	.size	xor_decrypt_rotating, .Lfunc_end2-xor_decrypt_rotating
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
