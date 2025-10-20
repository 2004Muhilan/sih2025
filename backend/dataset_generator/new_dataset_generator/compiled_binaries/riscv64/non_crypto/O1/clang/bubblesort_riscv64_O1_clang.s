	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"bubblesort.c"
	.globl	bubblesort                      # -- Begin function bubblesort
	.p2align	1
	.type	bubblesort,@function
bubblesort:                             # @bubblesort
	.cfi_startproc
# %bb.0:
	addi	a6, a1, -1
	beqz	a6, .LBB0_7
# %bb.1:
	li	a3, 0
	addi	a7, a1, -1
	addi	t0, a0, 4
	mv	a2, a6
	j	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi	a3, a3, 1
	addi	a2, a2, -1
	beq	a3, a6, .LBB0_7
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	mv	a5, t0
	mv	a4, a2
	bne	a3, a7, .LBB0_5
	j	.LBB0_2
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	a4, a4, -1
	addi	a5, a5, 4
	beqz	a4, .LBB0_2
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -4(a5)
	lw	a0, 0(a5)
	bge	a0, a1, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	sw	a0, -4(a5)
	sw	a1, 0(a5)
	j	.LBB0_4
.LBB0_7:
	ret
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
