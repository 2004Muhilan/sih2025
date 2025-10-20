	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   # -- Begin function rc4_drop_init
	.p2align	1
	.type	rc4_drop_init,@function
rc4_drop_init:                          # @rc4_drop_init
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	li	a0, 0
	sw	a0, -52(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -52(s0)
	li	a0, 255
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -52(s0)
	ld	a1, -24(s0)
	add	a1, a1, a0
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -52(s0)
	addiw	a0, a0, 1
	sw	a0, -52(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 0
	sb	a0, -53(s0)
	sw	a0, -60(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -60(s0)
	li	a0, 255
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lbu	a0, -53(s0)
	ld	a1, -24(s0)
	lw	a2, -60(s0)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	addw	a0, a0, a1
	ld	a1, -32(s0)
	ld	a3, -40(s0)
	remu	a2, a2, a3
	add	a1, a1, a2
	lbu	a1, 0(a1)
	addw	a0, a0, a1
	sb	a0, -53(s0)
	ld	a0, -24(s0)
	lw	a1, -60(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -61(s0)
	ld	a1, -24(s0)
	lbu	a0, -53(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a2, -60(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -61(s0)
	ld	a1, -24(s0)
	lbu	a2, -53(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -60(s0)
	addiw	a0, a0, 1
	sw	a0, -60(s0)
	j	.LBB0_5
.LBB0_8:
	ld	a1, -24(s0)
	li	a0, 0
	sb	a0, 256(a1)
	ld	a1, -24(s0)
	sb	a0, 257(a1)
	sd	a0, -72(s0)
	j	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -72(s0)
	ld	a1, -48(s0)
	bgeu	a0, a1, .LBB0_12
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	ld	a1, -24(s0)
	lbu	a0, 256(a1)
	addiw	a0, a0, 1
	sb	a0, 256(a1)
	ld	a1, -24(s0)
	lbu	a0, 257(a1)
	lbu	a2, 256(a1)
	add	a2, a2, a1
	lbu	a2, 0(a2)
	addw	a0, a0, a2
	sb	a0, 257(a1)
	ld	a0, -24(s0)
	lbu	a1, 256(a0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -73(s0)
	ld	a1, -24(s0)
	lbu	a0, 257(a1)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lbu	a2, 256(a1)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -73(s0)
	ld	a1, -24(s0)
	lbu	a2, 257(a1)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	ld	a0, -72(s0)
	addi	a0, a0, 1
	sd	a0, -72(s0)
	j	.LBB0_9
.LBB0_12:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_crypt                  # -- Begin function rc4_drop_crypt
	.p2align	1
	.type	rc4_drop_crypt,@function
rc4_drop_crypt:                         # @rc4_drop_crypt
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
	li	a0, 0
	sd	a0, -48(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	bgeu	a0, a1, .LBB1_4
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a1, -24(s0)
	lbu	a0, 256(a1)
	addiw	a0, a0, 1
	sb	a0, 256(a1)
	ld	a1, -24(s0)
	lbu	a0, 257(a1)
	lbu	a2, 256(a1)
	add	a2, a2, a1
	lbu	a2, 0(a2)
	addw	a0, a0, a2
	sb	a0, 257(a1)
	ld	a0, -24(s0)
	lbu	a1, 256(a0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -49(s0)
	ld	a1, -24(s0)
	lbu	a0, 257(a1)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lbu	a2, 256(a1)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -49(s0)
	ld	a1, -24(s0)
	lbu	a2, 257(a1)
	add	a1, a1, a2
	sb	a0, 0(a1)
	ld	a0, -24(s0)
	lbu	a1, 256(a0)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	lbu	a2, 257(a0)
	add	a2, a2, a0
	lbu	a2, 0(a2)
	addw	a1, a1, a2
	andi	a1, a1, 255
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -50(s0)
	lbu	a2, -50(s0)
	ld	a0, -32(s0)
	ld	a1, -48(s0)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB1_1
.LBB1_4:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.p2align	1
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       # @rc4_drop_encrypt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -336
	.cfi_def_cfa_offset 336
	sd	ra, 328(sp)                     # 8-byte Folded Spill
	sd	s0, 320(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 336
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	addi	a0, s0, -314
	sd	a0, -328(s0)                    # 8-byte Folded Spill
	li	a3, 768
	call	rc4_drop_init
	ld	a0, -56(s0)
	ld	a1, -40(s0)
	ld	a2, -48(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	ld	a0, -328(s0)                    # 8-byte Folded Reload
	ld	a1, -56(s0)
	ld	a2, -48(s0)
	call	rc4_drop_crypt
	ld	ra, 328(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rc4_drop_init
	.addrsig_sym rc4_drop_crypt
