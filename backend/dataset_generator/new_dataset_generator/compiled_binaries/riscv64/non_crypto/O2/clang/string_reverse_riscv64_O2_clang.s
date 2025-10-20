	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"string_reverse.c"
	.globl	string_reverse                  # -- Begin function string_reverse
	.p2align	1
	.type	string_reverse,@function
string_reverse:                         # @string_reverse
	.cfi_startproc
# %bb.0:
	addi	a1, a1, -1
	beqz	a1, .LBB0_3
# %bb.1:
	li	a2, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	add	a3, a0, a1
	lbu	a4, 0(a3)
	add	a5, a0, a2
	lbu	a6, 0(a5)
	sb	a4, 0(a5)
	addi	a2, a2, 1
	addi	a1, a1, -1
	sb	a6, 0(a3)
	bltu	a2, a1, .LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	string_reverse, .Lfunc_end0-string_reverse
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
