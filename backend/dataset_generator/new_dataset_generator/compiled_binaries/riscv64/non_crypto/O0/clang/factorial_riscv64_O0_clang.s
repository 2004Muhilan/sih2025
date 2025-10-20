	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	1
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x11 killed $x10
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	beqz	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -28(s0)
	li	a1, 1
	bne	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	li	a0, 1
	sd	a0, -24(s0)
	j	.LBB0_8
.LBB0_3:
	li	a0, 1
	sd	a0, -40(s0)
	li	a0, 2
	sw	a0, -44(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -44(s0)
	lw	a0, -28(s0)
	bltu	a0, a1, .LBB0_7
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	lwu	a1, -44(s0)
	ld	a0, -40(s0)
	mul	a0, a0, a1
	sd	a0, -40(s0)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -44(s0)
	addiw	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB0_4
.LBB0_7:
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB0_8
.LBB0_8:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
