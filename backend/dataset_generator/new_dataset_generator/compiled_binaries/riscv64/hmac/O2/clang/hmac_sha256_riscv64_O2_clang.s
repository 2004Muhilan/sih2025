	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     # -- Begin function hmac_sha256
	.p2align	1
	.type	hmac_sha256,@function
hmac_sha256:                            # @hmac_sha256
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
	addi	a0, a4, 32
	mv	a1, sp
	addi	a2, sp, 64
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a2)
	lbu	a5, 0(a1)
	xor	a3, a3, a5
	sb	a3, 0(a4)
	addi	a4, a4, 1
	addi	a1, a1, 1
	addi	a2, a2, 1
	bne	a4, a0, .LBB0_6
# %bb.7:
	addi	sp, sp, 128
	ret
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
