	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"hmac_opad.c"
	.globl	hmac_create_opad                # -- Begin function hmac_create_opad
	.p2align	1
	.type	hmac_create_opad,@function
hmac_create_opad:                       # @hmac_create_opad
	.cfi_startproc
# %bb.0:
	li	a3, 0
	li	a6, 64
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	bgeu	a3, a1, .LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	add	a5, a0, a3
	lbu	a5, 0(a5)
	j	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	li	a5, 0
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	xori	a5, a5, 92
	add	a4, a2, a3
	addi	a3, a3, 1
	sb	a5, 0(a4)
	bne	a3, a6, .LBB0_1
# %bb.5:
	ret
.Lfunc_end0:
	.size	hmac_create_opad, .Lfunc_end0-hmac_create_opad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
