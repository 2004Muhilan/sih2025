	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  # -- Begin function aes_shift_rows
	.p2align	1
	.type	aes_shift_rows,@function
aes_shift_rows:                         # @aes_shift_rows
	.cfi_startproc
# %bb.0:
	lbu	a1, 5(a0)
	lbu	a2, 9(a0)
	lbu	a3, 13(a0)
	lbu	a4, 1(a0)
	sb	a1, 1(a0)
	sb	a2, 5(a0)
	sb	a3, 9(a0)
	sb	a4, 13(a0)
	lbu	a1, 10(a0)
	lbu	a2, 2(a0)
	lbu	a3, 14(a0)
	lbu	a4, 6(a0)
	sb	a1, 2(a0)
	sb	a2, 10(a0)
	sb	a3, 6(a0)
	sb	a4, 14(a0)
	lbu	a1, 11(a0)
	lbu	a2, 7(a0)
	lbu	a3, 3(a0)
	lbu	a4, 15(a0)
	sb	a1, 15(a0)
	sb	a2, 11(a0)
	sb	a3, 7(a0)
	sb	a4, 3(a0)
	ret
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
