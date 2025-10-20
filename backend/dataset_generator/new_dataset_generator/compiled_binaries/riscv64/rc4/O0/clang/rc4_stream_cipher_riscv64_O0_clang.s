	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      # -- Begin function rc4_stream
	.p2align	1
	.type	rc4_stream,@function
rc4_stream:                             # @rc4_stream
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
	li	a0, 0
	sw	a0, -308(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -308(s0)
	li	a0, 255
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -308(s0)
	addi	a1, s0, -304
	add	a1, a1, a0
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -308(s0)
	addiw	a0, a0, 1
	sw	a0, -308(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 0
	sb	a0, -309(s0)
	sb	a0, -310(s0)
	sb	a0, -311(s0)
	sd	a0, -320(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -320(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lbu	a0, -310(s0)
	addiw	a0, a0, 1
	sb	a0, -310(s0)
	lbu	a1, -311(s0)
	lbu	a2, -310(s0)
	addi	a0, s0, -304
	sd	a0, -336(s0)                    # 8-byte Folded Spill
	add	a2, a2, a0
	lbu	a2, 0(a2)
	addw	a1, a1, a2
	sb	a1, -311(s0)
	lbu	a1, -310(s0)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	sb	a1, -321(s0)
	lbu	a1, -311(s0)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	lbu	a2, -310(s0)
	add	a2, a2, a0
	sb	a1, 0(a2)
	lbu	a1, -321(s0)
	lbu	a2, -311(s0)
	add	a2, a2, a0
	sb	a1, 0(a2)
	lbu	a1, -310(s0)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	lbu	a2, -311(s0)
	add	a2, a2, a0
	lbu	a2, 0(a2)
	addw	a1, a1, a2
	andi	a1, a1, 255
	add	a0, a0, a1
	lbu	a2, 0(a0)
	ld	a0, -24(s0)
	ld	a1, -320(s0)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	ld	a0, -320(s0)
	addi	a0, a0, 1
	sd	a0, -320(s0)
	j	.LBB0_5
.LBB0_8:
	ld	ra, 328(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.Lfunc_end0:
	.size	rc4_stream, .Lfunc_end0-rc4_stream
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
