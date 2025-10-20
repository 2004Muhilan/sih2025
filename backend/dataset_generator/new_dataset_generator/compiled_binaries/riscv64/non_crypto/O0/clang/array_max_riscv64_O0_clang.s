	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"array_max.c"
	.globl	array_max                       # -- Begin function array_max
	.p2align	1
	.type	array_max,@function
array_max:                              # @array_max
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
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -40(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_9
.LBB0_2:
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	sw	a0, -44(s0)
	li	a0, 1
	sd	a0, -56(s0)
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	ld	a1, -40(s0)
	bgeu	a0, a1, .LBB0_8
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, -32(s0)
	ld	a1, -56(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, -44(s0)
	bge	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, -32(s0)
	ld	a1, -56(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -44(s0)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB0_3
.LBB0_8:
	lw	a0, -44(s0)
	sw	a0, -20(s0)
	j	.LBB0_9
.LBB0_9:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
