	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              # -- Begin function binary_tree_search
	.p2align	1
	.type	binary_tree_search,@function
binary_tree_search:                     # @binary_tree_search
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
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	ld	a0, -32(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_2:
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	lw	a1, -36(s0)
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_4:
	lw	a0, -36(s0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:
	ld	a0, -32(s0)
	ld	a0, 8(a0)
	lw	a1, -36(s0)
	call	binary_tree_search
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_6:
	ld	a0, -32(s0)
	ld	a0, 16(a0)
	lw	a1, -36(s0)
	call	binary_tree_search
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_7:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binary_tree_search
