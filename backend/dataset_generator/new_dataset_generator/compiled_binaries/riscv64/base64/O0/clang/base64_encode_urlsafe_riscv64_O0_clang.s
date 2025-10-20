	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"base64_encode_urlsafe.c"
	.globl	base64_encode_urlsafe           # -- Begin function base64_encode_urlsafe
	.p2align	1
	.type	base64_encode_urlsafe,@function
base64_encode_urlsafe:                  # @base64_encode_urlsafe
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
	li	a0, 0
	sd	a0, -48(s0)
	sd	a0, -56(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_12
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -48(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	li	a0, 0
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sw	a0, -60(s0)
	ld	a0, -48(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	a0, 0
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	sw	a0, -64(s0)
	ld	a0, -48(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_10
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	li	a0, 0
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	sw	a0, -68(s0)
	lw	a0, -60(s0)
	slliw	a0, a0, 16
	lw	a1, -64(s0)
	slliw	a1, a1, 8
	addw	a0, a0, a1
	lw	a1, -68(s0)
	addw	a0, a0, a1
	sw	a0, -72(s0)
	lwu	a0, -72(s0)
	slli	a0, a0, 40
	srli	a1, a0, 58
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(b64url)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	ld	a2, -40(s0)
	ld	a3, -56(s0)
	addi	a4, a3, 1
	sd	a4, -56(s0)
	add	a2, a2, a3
	sb	a1, 0(a2)
	lwu	a1, -72(s0)
	slli	a1, a1, 46
	srli	a1, a1, 58
	add	a1, a1, a0
	lbu	a1, 0(a1)
	ld	a2, -40(s0)
	ld	a3, -56(s0)
	addi	a4, a3, 1
	sd	a4, -56(s0)
	add	a2, a2, a3
	sb	a1, 0(a2)
	lwu	a1, -72(s0)
	slli	a1, a1, 52
	srli	a1, a1, 58
	add	a1, a1, a0
	lbu	a1, 0(a1)
	ld	a2, -40(s0)
	ld	a3, -56(s0)
	addi	a4, a3, 1
	sd	a4, -56(s0)
	add	a2, a2, a3
	sb	a1, 0(a2)
	lwu	a1, -72(s0)
	andi	a1, a1, 63
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a1, -40(s0)
	ld	a2, -56(s0)
	addi	a3, a2, 1
	sd	a3, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_1
.LBB0_12:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	base64_encode_urlsafe, .Lfunc_end0-base64_encode_urlsafe
	.cfi_endproc
                                        # -- End function
	.type	b64url,@object                  # @b64url
	.section	.rodata,"a",@progbits
b64url:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	b64url, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym b64url
