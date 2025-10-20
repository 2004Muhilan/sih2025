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
	addi	a7, a1, -1
	beqz	a7, .LBB0_9
# %bb.1:
	li	a3, 0
	addi	t0, a1, -1
	addi	a6, a0, 4
	mv	t1, a7
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	beq	a3, t0, .LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	lw	a1, 0(a0)
	mv	a4, a6
	mv	a5, t1
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a4)
	bge	a2, a1, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	sw	a2, -4(a4)
	sw	a1, 0(a4)
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=2
	mv	a1, a2
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=2
	addi	a5, a5, -1
	addi	a4, a4, 4
	bnez	a5, .LBB0_4
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	addi	a3, a3, 1
	addi	t1, t1, -1
	bne	a3, a7, .LBB0_2
.LBB0_9:
	ret
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
