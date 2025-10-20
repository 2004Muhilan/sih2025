	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_ksa.c"
	.globl	rc4_ksa                         # -- Begin function rc4_ksa
	.p2align	1
	.type	rc4_ksa,@function
rc4_ksa:                                # @rc4_ksa
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
	sw	a0, -44(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -44(s0)
	li	a0, 255
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -44(s0)
	ld	a1, -24(s0)
	add	a1, a1, a0
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -44(s0)
	addiw	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 0
	sb	a0, -45(s0)
	sw	a0, -52(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -52(s0)
	li	a0, 255
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lbu	a0, -45(s0)
	ld	a1, -24(s0)
	lw	a2, -52(s0)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	addw	a0, a0, a1
	ld	a1, -32(s0)
	ld	a3, -40(s0)
	remu	a2, a2, a3
	add	a1, a1, a2
	lbu	a1, 0(a1)
	addw	a0, a0, a1
	sb	a0, -45(s0)
	ld	a0, -24(s0)
	lw	a1, -52(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -53(s0)
	ld	a1, -24(s0)
	lbu	a0, -45(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a2, -52(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -53(s0)
	ld	a1, -24(s0)
	lbu	a2, -45(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -52(s0)
	addiw	a0, a0, 1
	sw	a0, -52(s0)
	j	.LBB0_5
.LBB0_8:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	rc4_ksa, .Lfunc_end0-rc4_ksa
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
