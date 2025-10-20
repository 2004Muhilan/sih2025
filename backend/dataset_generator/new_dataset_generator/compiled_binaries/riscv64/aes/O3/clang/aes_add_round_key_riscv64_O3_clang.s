	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	1
	.type	aes_add_round_key,@function
aes_add_round_key:                      # @aes_add_round_key
	.cfi_startproc
# %bb.0:
	lbu	a2, 0(a1)
	lbu	a3, 0(a0)
	xor	a2, a2, a3
	sb	a2, 0(a0)
	lbu	a2, 1(a1)
	lbu	a3, 1(a0)
	xor	a2, a2, a3
	sb	a2, 1(a0)
	lbu	a2, 2(a1)
	lbu	a3, 2(a0)
	xor	a2, a2, a3
	sb	a2, 2(a0)
	lbu	a2, 3(a1)
	lbu	a3, 3(a0)
	xor	a2, a2, a3
	sb	a2, 3(a0)
	lbu	a2, 4(a1)
	lbu	a3, 4(a0)
	xor	a2, a2, a3
	sb	a2, 4(a0)
	lbu	a2, 5(a1)
	lbu	a3, 5(a0)
	xor	a2, a2, a3
	sb	a2, 5(a0)
	lbu	a2, 6(a1)
	lbu	a3, 6(a0)
	xor	a2, a2, a3
	sb	a2, 6(a0)
	lbu	a2, 7(a1)
	lbu	a3, 7(a0)
	xor	a2, a2, a3
	sb	a2, 7(a0)
	lbu	a2, 8(a1)
	lbu	a3, 8(a0)
	xor	a2, a2, a3
	sb	a2, 8(a0)
	lbu	a2, 9(a1)
	lbu	a3, 9(a0)
	xor	a2, a2, a3
	sb	a2, 9(a0)
	lbu	a2, 10(a1)
	lbu	a3, 10(a0)
	xor	a2, a2, a3
	sb	a2, 10(a0)
	lbu	a2, 11(a1)
	lbu	a3, 11(a0)
	xor	a2, a2, a3
	sb	a2, 11(a0)
	lbu	a2, 12(a1)
	lbu	a3, 12(a0)
	xor	a2, a2, a3
	sb	a2, 12(a0)
	lbu	a2, 13(a1)
	lbu	a3, 13(a0)
	xor	a2, a2, a3
	sb	a2, 13(a0)
	lbu	a2, 14(a1)
	lbu	a3, 14(a0)
	xor	a2, a2, a3
	sb	a2, 14(a0)
	lbu	a1, 15(a1)
	lbu	a2, 15(a0)
	xor	a1, a1, a2
	sb	a1, 15(a0)
	ret
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
