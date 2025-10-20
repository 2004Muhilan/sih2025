	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               # -- Begin function aes_key_expansion
	.p2align	1
	.type	aes_key_expansion,@function
aes_key_expansion:                      # @aes_key_expansion
	.cfi_startproc
# %bb.0:
	lbu	a2, 0(a0)
	sb	a2, 0(a1)
	lbu	a2, 1(a0)
	sb	a2, 1(a1)
	lbu	a2, 2(a0)
	sb	a2, 2(a1)
	lbu	a2, 3(a0)
	sb	a2, 3(a1)
	lbu	a2, 4(a0)
	sb	a2, 4(a1)
	lbu	a2, 5(a0)
	sb	a2, 5(a1)
	lbu	a2, 6(a0)
	sb	a2, 6(a1)
	lbu	a2, 7(a0)
	sb	a2, 7(a1)
	lbu	a2, 8(a0)
	sb	a2, 8(a1)
	lbu	a2, 9(a0)
	sb	a2, 9(a1)
	lbu	a2, 10(a0)
	sb	a2, 10(a1)
	lbu	a2, 11(a0)
	sb	a2, 11(a1)
	lbu	a2, 12(a0)
	sb	a2, 12(a1)
	lbu	a2, 13(a0)
	sb	a2, 13(a1)
	lbu	a2, 14(a0)
	sb	a2, 14(a1)
	lbu	a0, 15(a0)
	addi	a2, a1, 15
	sb	a0, 15(a1)
	addi	a6, a1, 175
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(rcon)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi0)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a1)
	lbu	a4, -2(a2)
	lbu	t0, -3(a2)
	lbu	a5, -1(a2)
	lb	a0, 0(a2)
	slli	a4, a4, 8
	or	a4, a4, t0
	slli	a5, a5, 16
	slli	a0, a0, 24
	or	a0, a0, a5
	or	a0, a0, a4
	srliw	a4, a0, 8
	xor	a5, a7, a4
	lbu	a4, -15(a2)
	srliw	a7, a0, 24
	srliw	a0, a0, 16
	lbu	a3, -14(a2)
	xor	a4, a4, a5
	sb	a4, 1(a2)
	lbu	a4, -13(a2)
	xor	a3, a3, a0
	sb	a3, 2(a2)
	lbu	a3, -12(a2)
	xor	a4, a4, a7
	sb	a4, 3(a2)
	lbu	a4, -11(a2)
	xor	a3, a3, t0
	sb	a3, 4(a2)
	lbu	a3, -10(a2)
	xor	a4, a4, a5
	sb	a4, 5(a2)
	lbu	a4, -9(a2)
	xor	a3, a3, a0
	sb	a3, 6(a2)
	lbu	a3, -8(a2)
	xor	a4, a4, a7
	sb	a4, 7(a2)
	lbu	a4, -7(a2)
	xor	a3, a3, t0
	sb	a3, 8(a2)
	lbu	a3, -6(a2)
	xor	a4, a4, a5
	sb	a4, 9(a2)
	lbu	a4, -5(a2)
	xor	a3, a3, a0
	sb	a3, 10(a2)
	lbu	a3, -4(a2)
	xor	a4, a4, a7
	sb	a4, 11(a2)
	lbu	a4, -3(a2)
	xor	a3, a3, t0
	sb	a3, 12(a2)
	lbu	a3, -2(a2)
	xor	a4, a4, a5
	sb	a4, 13(a2)
	lbu	a4, -1(a2)
	xor	a0, a0, a3
	lbu	a3, 0(a2)
	sb	a0, 14(a2)
	xor	a0, a4, a7
	sb	a0, 15(a2)
	xor	a0, a3, t0
	addi	a3, a2, 16
	sb	a0, 16(a2)
	addi	a1, a1, 1
	mv	a2, a3
	bne	a3, a6, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
