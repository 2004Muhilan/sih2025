	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"hmac_md5.c"
	.globl	hmac_md5                        # -- Begin function hmac_md5
	.p2align	1
	.type	hmac_md5,@function
hmac_md5:                               # @hmac_md5
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	li	a5, 0
	addi	a6, sp, 64
	mv	a7, sp
	li	t0, 64
	j	.LBB0_3
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	add	a3, a0, a5
	lbu	a3, 0(a3)
	xori	t1, a3, 54
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add	a2, a6, a5
	sb	t1, 0(a2)
	xori	a2, a3, 92
	add	a3, a7, a5
	addi	a5, a5, 1
	sb	a2, 0(a3)
	beq	a5, t0, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	bltu	a5, a1, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	li	a3, 0
	li	t1, 54
	j	.LBB0_2
.LBB0_5:
	lbu	a0, 64(sp)
	lbu	a1, 0(sp)
	lbu	a2, 65(sp)
	lbu	a3, 1(sp)
	xor	a0, a0, a1
	sb	a0, 0(a4)
	xor	a2, a2, a3
	lbu	a0, 66(sp)
	lbu	a1, 2(sp)
	lbu	a3, 67(sp)
	lbu	a5, 3(sp)
	sb	a2, 1(a4)
	xor	a0, a0, a1
	sb	a0, 2(a4)
	xor	a3, a3, a5
	lbu	a0, 68(sp)
	lbu	a1, 4(sp)
	lbu	a2, 69(sp)
	lbu	a5, 5(sp)
	sb	a3, 3(a4)
	xor	a0, a0, a1
	sb	a0, 4(a4)
	xor	a2, a2, a5
	lbu	a0, 70(sp)
	lbu	a1, 6(sp)
	lbu	a3, 71(sp)
	lbu	a5, 7(sp)
	sb	a2, 5(a4)
	xor	a0, a0, a1
	sb	a0, 6(a4)
	xor	a3, a3, a5
	lbu	a0, 72(sp)
	lbu	a1, 8(sp)
	lbu	a2, 73(sp)
	lbu	a5, 9(sp)
	sb	a3, 7(a4)
	xor	a0, a0, a1
	sb	a0, 8(a4)
	xor	a2, a2, a5
	lbu	a0, 74(sp)
	lbu	a1, 10(sp)
	lbu	a3, 75(sp)
	lbu	a5, 11(sp)
	sb	a2, 9(a4)
	xor	a0, a0, a1
	sb	a0, 10(a4)
	xor	a3, a3, a5
	lbu	a0, 76(sp)
	lbu	a1, 12(sp)
	lbu	a2, 77(sp)
	lbu	a5, 13(sp)
	sb	a3, 11(a4)
	xor	a0, a0, a1
	sb	a0, 12(a4)
	xor	a2, a2, a5
	lbu	a0, 78(sp)
	lbu	a1, 14(sp)
	lbu	a3, 79(sp)
	lbu	a5, 15(sp)
	sb	a2, 13(a4)
	xor	a0, a0, a1
	sb	a0, 14(a4)
	xor	a3, a3, a5
	sb	a3, 15(a4)
	addi	sp, sp, 128
	ret
.Lfunc_end0:
	.size	hmac_md5, .Lfunc_end0-hmac_md5
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
