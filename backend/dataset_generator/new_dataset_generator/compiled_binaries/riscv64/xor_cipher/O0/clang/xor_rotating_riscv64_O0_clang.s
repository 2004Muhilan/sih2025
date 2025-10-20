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
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	li	a0, 0
	sd	a0, -56(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	ld	a2, -48(s0)
	remu	a1, a1, a2
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -57(s0)
	lbu	a2, -57(s0)
	ld	a0, -24(s0)
	ld	a1, -56(s0)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	lbu	a0, -57(s0)
	li	a1, 1
	call	rotate_left
	ld	a1, -40(s0)
	ld	a2, -56(s0)
	ld	a3, -48(s0)
	remu	a2, a2, a3
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB0_1
.LBB0_4:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function rotate_left
	.type	rotate_left,@function
rotate_left:                            # @rotate_left
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
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sb	a0, -17(s0)
	sw	a1, -24(s0)
	lbu	a1, -17(s0)
	lwu	a3, -24(s0)
	sllw	a0, a1, a3
	li	a2, 8
	subw	a2, a2, a3
	srlw	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	rotate_left, .Lfunc_end1-rotate_left
	.cfi_endproc
                                        # -- End function
	.globl	xor_encrypt_rotating            # -- Begin function xor_encrypt_rotating
	.p2align	1
	.type	xor_encrypt_rotating,@function
xor_encrypt_rotating:                   # @xor_encrypt_rotating
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)                     # 8-byte Folded Spill
	sd	s0, 304(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	ld	a0, -56(s0)
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	call	memcpy
	ld	a1, -40(s0)
	ld	a2, -48(s0)
	addi	a0, s0, -312
	sd	a0, -320(s0)                    # 8-byte Folded Spill
	call	memcpy
	ld	a2, -320(s0)                    # 8-byte Folded Reload
	ld	a0, -56(s0)
	ld	a1, -32(s0)
	ld	a3, -48(s0)
	call	xor_cipher_rotating
	ld	ra, 312(sp)                     # 8-byte Folded Reload
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 320
	ret
.Lfunc_end2:
	.size	xor_encrypt_rotating, .Lfunc_end2-xor_encrypt_rotating
	.cfi_endproc
                                        # -- End function
	.globl	xor_decrypt_rotating            # -- Begin function xor_decrypt_rotating
	.p2align	1
	.type	xor_decrypt_rotating,@function
xor_decrypt_rotating:                   # @xor_decrypt_rotating
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	ld	a4, -56(s0)
	call	xor_encrypt_rotating
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	xor_decrypt_rotating, .Lfunc_end3-xor_decrypt_rotating
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_rotating
	.addrsig_sym rotate_left
	.addrsig_sym xor_encrypt_rotating
