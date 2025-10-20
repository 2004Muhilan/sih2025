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
	li	a1, 1
	bgeu	a1, a0, .LBB0_5
# %bb.1:
	addiw	a0, a0, 1
	li	a1, 3
	bltu	a1, a0, .LBB0_3
# %bb.2:
	li	a0, 3
.LBB0_3:
	slli	a0, a0, 32
	srli	a0, a0, 32
	li	a1, 1
	li	a2, 2
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	mul	a1, a1, a2
	addi	a2, a2, 1
	bne	a0, a2, .LBB0_4
.LBB0_5:
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
