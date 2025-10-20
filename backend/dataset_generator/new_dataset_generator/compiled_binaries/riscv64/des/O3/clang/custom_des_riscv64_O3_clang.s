	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	1
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
	.cfi_startproc
# %bb.0:
	lbu	a3, 0(a0)
	lbu	a4, 1(a0)
	slli	a6, a3, 56
	lbu	a5, 2(a0)
	lbu	a3, 3(a0)
	slli	a4, a4, 48
	or	a6, a4, a6
	slli	a5, a5, 40
	slli	a3, a3, 32
	lbu	a4, 4(a0)
	or	a3, a3, a5
	or	a6, a3, a6
	lbu	a5, 5(a0)
	slli	a4, a4, 24
	lbu	a3, 6(a0)
	lbu	a0, 7(a0)
	slli	a5, a5, 16
	or	a4, a4, a5
	slli	a3, a3, 8
	or	a0, a0, a3
	or	t0, a0, a4
	srli	a6, a6, 32
	lbu	a4, 0(a1)
	lbu	t1, 1(a1)
	lbu	t3, 2(a1)
	lbu	a7, 6(a1)
	lbu	a0, 3(a1)
	lbu	t2, 4(a1)
	lbu	a5, 5(a1)
	xor	a3, t0, a7
	xor	t4, a3, a6
	lbu	a6, 7(a1)
	xor	a1, a4, t3
	xor	a1, a1, a0
	xor	a1, a1, a5
	xor	a3, a6, t1
	xor	a3, a3, t3
	xor	a3, a3, t2
	xor	t0, t0, a3
	xor	a3, a5, a4
	xor	a1, a1, a4
	xor	a1, a1, t1
	xor	a1, t4, a1
	xor	a3, a3, t3
	xor	a3, a3, a0
	xor	a3, t0, a3
	xor	a0, a0, t2
	xor	a0, a0, a1
	slli	a1, a0, 32
	xor	a0, a0, a3
	xor	a5, a5, a0
	or	a0, a0, a1
	srli	a1, a0, 32
	xor	a5, a5, a1
	srli	a3, a5, 24
	sb	a3, 0(a2)
	srli	a3, a5, 16
	sb	a3, 1(a2)
	srli	a3, a5, 8
	sb	a3, 2(a2)
	xor	a3, a7, a5
	sb	a3, 3(a2)
	srli	a3, a0, 56
	sb	a3, 4(a2)
	srli	a3, a0, 48
	sb	a3, 5(a2)
	srli	a0, a0, 40
	sb	a0, 6(a2)
	xor	a0, a7, a6
	xor	a0, a0, a1
	sb	a0, 7(a2)
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
