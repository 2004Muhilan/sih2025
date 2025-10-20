	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_md5.c"
	.globl	md5_transform                   # -- Begin function md5_transform
	.p2align	1
	.type	md5_transform,@function
md5_transform:                          # @md5_transform
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 144
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a0, 8(a0)
	sw	a0, -44(s0)
	ld	a0, -24(s0)
	lw	a0, 12(a0)
	sw	a0, -48(s0)
	li	a0, 0
	sw	a0, -116(s0)
	sw	a0, -120(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -116(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a1, -32(s0)
	lw	a2, -120(s0)
	add	a0, a1, a2
	lbu	a0, 0(a0)
	addiw	a3, a2, 1
	add	a3, a3, a1
	lbu	a3, 0(a3)
	slliw	a3, a3, 8
	or	a0, a0, a3
	addiw	a3, a2, 2
	add	a3, a3, a1
	lbu	a3, 0(a3)
	slliw	a3, a3, 16
	or	a0, a0, a3
	addiw	a2, a2, 3
	add	a1, a1, a2
	lbu	a1, 0(a1)
	slliw	a1, a1, 24
	or	a0, a0, a1
	lw	a1, -116(s0)
	slli	a2, a1, 2
	addi	a1, s0, -112
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -116(s0)
	addiw	a0, a0, 1
	sw	a0, -116(s0)
	lw	a0, -120(s0)
	addiw	a0, a0, 4
	sw	a0, -120(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 0
	sw	a0, -124(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -124(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a1, -40(s0)
	lw	a0, -44(s0)
	and	a0, a0, a1
	not	a1, a1
	lw	a2, -48(s0)
	and	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -128(s0)
	lw	a0, -48(s0)
	sw	a0, -132(s0)
	lw	a0, -44(s0)
	sw	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -44(s0)
	lw	a0, -40(s0)
	lw	a1, -36(s0)
	lw	a2, -128(s0)
	addw	a1, a1, a2
	lw	a2, -124(s0)
	slli	a3, a2, 2
	addi	a2, s0, -112
	add	a2, a2, a3
	lw	a2, 0(a2)
	addw	a1, a1, a2
	srliw	a2, a1, 25
	slliw	a1, a1, 7
	or	a1, a1, a2
	addw	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -132(s0)
	sw	a0, -36(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -124(s0)
	addiw	a0, a0, 1
	sw	a0, -124(s0)
	j	.LBB0_5
.LBB0_8:
	lw	a2, -36(s0)
	ld	a1, -24(s0)
	lw	a0, 0(a1)
	addw	a0, a0, a2
	sw	a0, 0(a1)
	lw	a2, -40(s0)
	ld	a1, -24(s0)
	lw	a0, 4(a1)
	addw	a0, a0, a2
	sw	a0, 4(a1)
	lw	a2, -44(s0)
	ld	a1, -24(s0)
	lw	a0, 8(a1)
	addw	a0, a0, a2
	sw	a0, 8(a1)
	lw	a2, -48(s0)
	ld	a1, -24(s0)
	lw	a0, 12(a1)
	addw	a0, a0, a2
	sw	a0, 12(a1)
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cfi_endproc
                                        # -- End function
	.globl	md5_init                        # -- Begin function md5_init
	.p2align	1
	.type	md5_init,@function
md5_init:                               # @md5_init
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
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	lui	a0, 422994
	addiw	a0, a0, 769
	sw	a0, 0(a1)
	ld	a1, -24(s0)
	lui	a0, 982235
	addiw	a0, a0, -1143
	sw	a0, 4(a1)
	ld	a1, -24(s0)
	lui	a0, 625582
	addiw	a0, a0, -770
	sw	a0, 8(a1)
	ld	a1, -24(s0)
	lui	a0, 66341
	addiw	a0, a0, 1142
	sw	a0, 12(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
