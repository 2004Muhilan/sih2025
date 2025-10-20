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
	li	a3, 0
	li	a4, 56
	li	a6, -8
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a0)
	sll	a5, a5, a4
	or	a3, a3, a5
	addi	a4, a4, -8
	addi	a0, a0, 1
	bne	a4, a6, .LBB0_1
# %bb.2:
	li	a4, 0
	li	a6, 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	srli	a7, a3, 32
	andi	a0, a4, 7
	add	a0, a0, a1
	lbu	a0, 0(a0)
	slli	a5, a3, 32
	srli	a3, a5, 32
	xor	a3, a3, a7
	xor	a0, a0, a3
	addiw	a4, a4, 1
	or	a3, a0, a5
	bne	a4, a6, .LBB0_3
# %bb.4:
	li	a0, 56
	li	a1, -8
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	srl	a4, a3, a0
	sb	a4, 0(a2)
	addi	a0, a0, -8
	addi	a2, a2, 1
	bne	a0, a1, .LBB0_5
# %bb.6:
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
