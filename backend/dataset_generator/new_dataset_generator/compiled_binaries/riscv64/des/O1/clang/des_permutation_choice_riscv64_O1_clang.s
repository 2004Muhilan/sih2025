	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         # -- Begin function des_pc1
	.p2align	1
	.type	des_pc1,@function
des_pc1:                                # @des_pc1
	.cfi_startproc
# %bb.0:
	li	a1, 0
	li	a2, 55
	li	a3, -1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi	a4, a2, 9
	srl	a4, a0, a4
	andi	a4, a4, 1
	sll	a4, a4, a2
	addi	a2, a2, -1
	or	a1, a1, a4
	bne	a2, a3, .LBB0_1
# %bb.2:
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
