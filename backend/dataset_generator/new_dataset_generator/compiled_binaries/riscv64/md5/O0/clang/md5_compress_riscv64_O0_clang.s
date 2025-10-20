	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"md5_compress.c"
	.globl	md5_compress                    # -- Begin function md5_compress
	.p2align	1
	.type	md5_compress,@function
md5_compress:                           # @md5_compress
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
	sw	a0, -52(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -52(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a1, -40(s0)
	lw	a0, -44(s0)
	and	a0, a0, a1
	not	a1, a1
	lw	a2, -48(s0)
	and	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -56(s0)
	lw	a0, -48(s0)
	sw	a0, -60(s0)
	lw	a0, -44(s0)
	sw	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -44(s0)
	lw	a0, -40(s0)
	lw	a1, -36(s0)
	lw	a2, -56(s0)
	addw	a1, a1, a2
	ld	a2, -32(s0)
	lw	a3, -52(s0)
	slli	a3, a3, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	addw	a1, a1, a2
	slliw	a1, a1, 7
	addw	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -60(s0)
	sw	a0, -36(s0)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -52(s0)
	addiw	a0, a0, 1
	sw	a0, -52(s0)
	j	.LBB0_1
.LBB0_4:
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
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
