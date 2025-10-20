	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"fibonacci.c"
	.globl	fibonacci                       # -- Begin function fibonacci
	.p2align	1
	.type	fibonacci,@function
fibonacci:                              # @fibonacci
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
	sw	a0, -24(s0)
	lw	a1, -24(s0)
	li	a0, 1
	bltu	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_2:
	li	a0, 0
	sw	a0, -28(s0)
	li	a0, 1
	sw	a0, -32(s0)
	li	a0, 2
	sw	a0, -36(s0)
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	lw	a0, -24(s0)
	bltu	a0, a1, .LBB0_6
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	addw	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -32(s0)
	sw	a0, -28(s0)
	lw	a0, -40(s0)
	sw	a0, -32(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -36(s0)
	addiw	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_3
.LBB0_6:
	lw	a0, -32(s0)
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_7:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
