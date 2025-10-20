	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 # -- Begin function hmac_key_derive
	.p2align	1
	.type	hmac_key_derive,@function
hmac_key_derive:                        # @hmac_key_derive
	.cfi_startproc
# %bb.0:
	li	a7, 0
	li	a6, 32
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	remu	a5, a7, a1
	add	a5, a5, a0
	lbu	t0, 0(a5)
	remu	a5, a7, a3
	add	a5, a5, a2
	lbu	a5, 0(a5)
	xor	t0, a5, t0
	add	a5, a4, a7
	addi	a7, a7, 1
	sb	t0, 0(a5)
	bne	a7, a6, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
