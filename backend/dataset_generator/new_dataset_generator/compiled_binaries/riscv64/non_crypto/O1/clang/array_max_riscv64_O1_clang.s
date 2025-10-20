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
	beqz	a1, .LBB0_6
# %bb.1:
	lw	a3, 0(a0)
	addi	a1, a1, -1
	beqz	a1, .LBB0_8
# %bb.2:
	addi	a2, a0, 4
	j	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addi	a1, a1, -1
	addi	a2, a2, 4
	mv	a3, a0
	beqz	a1, .LBB0_7
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 0(a2)
	blt	a3, a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	mv	a0, a3
	j	.LBB0_3
.LBB0_6:
	li	a0, 0
.LBB0_7:
	ret
.LBB0_8:
	mv	a0, a3
	ret
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
