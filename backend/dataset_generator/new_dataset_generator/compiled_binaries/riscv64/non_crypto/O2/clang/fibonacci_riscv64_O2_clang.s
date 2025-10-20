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
	li	a1, 2
	bltu	a0, a1, .LBB0_5
# %bb.1:
	addiw	a0, a0, 1
	li	a1, 3
	bltu	a1, a0, .LBB0_3
# %bb.2:
	li	a0, 3
.LBB0_3:
	li	a2, 0
	addi	a1, a0, -2
	li	a0, 1
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	mv	a3, a0
	addiw	a1, a1, -1
	addw	a0, a0, a2
	mv	a2, a3
	bnez	a1, .LBB0_4
.LBB0_5:
	ret
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
