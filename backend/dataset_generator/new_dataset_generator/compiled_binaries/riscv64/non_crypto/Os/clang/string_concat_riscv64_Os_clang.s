	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"string_concat.c"
	.globl	string_concat                   # -- Begin function string_concat
	.p2align	1
	.type	string_concat,@function
string_concat:                          # @string_concat
	.cfi_startproc
# %bb.0:
	li	a3, 0
	beqz	a2, .LBB0_4
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a4, a0, a3
	lbu	a4, 0(a4)
	beqz	a4, .LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addi	a3, a3, 1
	bne	a2, a3, .LBB0_1
# %bb.3:
	mv	a3, a2
.LBB0_4:
	addi	a2, a2, -1
	bgeu	a3, a2, .LBB0_7
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a1)
	beqz	a4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	add	a5, a0, a3
	sb	a4, 0(a5)
	addi	a3, a3, 1
	addi	a1, a1, 1
	bne	a2, a3, .LBB0_5
.LBB0_7:
	add	a0, a0, a3
	sb	zero, 0(a0)
	ret
.Lfunc_end0:
	.size	string_concat, .Lfunc_end0-string_concat
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
