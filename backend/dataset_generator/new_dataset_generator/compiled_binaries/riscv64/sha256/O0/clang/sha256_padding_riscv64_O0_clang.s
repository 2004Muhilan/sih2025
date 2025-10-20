	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_padding.c"
	.globl	sha256_padding                  # -- Begin function sha256_padding
	.p2align	1
	.type	sha256_padding,@function
sha256_padding:                         # @sha256_padding
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
	ld	a0, -40(s0)
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	call	memcpy
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	add	a1, a1, a0
	li	a0, 128
	sb	a0, 0(a1)
	ld	a1, -32(s0)
	li	a0, 55
	subw	a0, a0, a1
	andi	a0, a0, 63
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	add	a0, a0, a1
	addi	a0, a0, 1
	ld	a2, -48(s0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	call	memset
                                        # kill: def $x11 killed $x10
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)
	slli	a1, a1, 3
	sd	a1, -56(s0)
	sw	a0, -60(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -60(s0)
	li	a0, 7
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -56(s0)
	lw	a3, -60(s0)
	slliw	a2, a3, 3
	li	a1, 56
	subw	a1, a1, a2
	srl	a0, a0, a1
	ld	a2, -40(s0)
	ld	a1, -32(s0)
	ld	a4, -48(s0)
	add	a1, a1, a4
	add	a1, a1, a3
	add	a1, a1, a2
	sb	a0, 1(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -60(s0)
	addiw	a0, a0, 1
	sw	a0, -60(s0)
	j	.LBB0_1
.LBB0_4:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	sha256_padding, .Lfunc_end0-sha256_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
