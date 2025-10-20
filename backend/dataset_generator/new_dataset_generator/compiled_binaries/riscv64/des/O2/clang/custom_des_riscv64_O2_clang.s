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
	lbu	a4, 0(a0)
	li	a3, 0
	lbu	a5, 1(a0)
	slli	a4, a4, 56
	lbu	a6, 2(a0)
	lbu	a7, 3(a0)
	slli	a5, a5, 48
	or	t0, a5, a4
	slli	a6, a6, 40
	slli	a7, a7, 32
	lbu	a5, 4(a0)
	or	a4, a7, a6
	lbu	a6, 5(a0)
	or	a7, a4, t0
	slli	a5, a5, 24
	lbu	a4, 6(a0)
	slli	a6, a6, 16
	or	a5, a6, a5
	lbu	a0, 7(a0)
	slli	a4, a4, 8
	or	a4, a4, a5
	or	a4, a4, a7
	or	a4, a4, a0
	li	a6, 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mv	t1, a4
	srli	a7, a4, 32
	andi	a0, a3, 7
	add	a0, a0, a1
	lbu	a4, 0(a0)
	slli	a5, t1, 32
	srli	a0, a5, 32
	xor	t0, a0, a7
	xor	a7, t0, a4
	addiw	a3, a3, 1
	or	a4, a7, a5
	bne	a3, a6, .LBB0_1
# %bb.2:
	srli	a1, a5, 56
	sb	a1, 0(a2)
	srli	a1, a5, 48
	sb	a1, 1(a2)
	srli	a0, a5, 40
	sb	a0, 2(a2)
	sb	t1, 3(a2)
	srli	a0, t0, 24
	sb	a0, 4(a2)
	srli	a0, t0, 16
	sb	a0, 5(a2)
	srli	a0, t0, 8
	sb	a0, 6(a2)
	sb	a7, 7(a2)
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
