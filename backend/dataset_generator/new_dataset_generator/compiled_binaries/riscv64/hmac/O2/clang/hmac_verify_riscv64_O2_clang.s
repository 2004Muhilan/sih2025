	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"hmac_verify.c"
	.globl	hmac_verify                     # -- Begin function hmac_verify
	.p2align	1
	.type	hmac_verify,@function
hmac_verify:                            # @hmac_verify
	.cfi_startproc
# %bb.0:
	beqz	a2, .LBB0_4
# %bb.1:
	li	a3, 0
	add	a2, a2, a1
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a0)
	lbu	a5, 0(a1)
	xor	a4, a4, a5
	or	a3, a3, a4
	addi	a1, a1, 1
	addi	a0, a0, 1
	bne	a1, a2, .LBB0_2
# %bb.3:
	andi	a0, a3, 255
	seqz	a0, a0
	ret
.LBB0_4:
	li	a0, 1
	ret
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
