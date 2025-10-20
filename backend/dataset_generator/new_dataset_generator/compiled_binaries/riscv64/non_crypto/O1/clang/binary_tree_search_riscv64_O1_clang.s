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
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	add	a0, a0, a2
	ld	a0, 0(a0)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	beqz	a0, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	lw	a3, 0(a0)
	beq	a3, a1, .LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	li	a2, 8
	blt	a1, a3, .LBB0_1
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	li	a2, 16
	j	.LBB0_1
.LBB0_6:
	li	a0, 1
.LBB0_7:
	ret
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
