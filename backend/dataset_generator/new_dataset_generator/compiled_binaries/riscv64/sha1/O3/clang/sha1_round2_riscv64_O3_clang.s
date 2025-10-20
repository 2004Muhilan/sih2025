	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha1_round2.c"
	.globl	sha1_round2                     # -- Begin function sha1_round2
	.p2align	1
	.type	sha1_round2,@function
sha1_round2:                            # @sha1_round2
	.cfi_startproc
# %bb.0:
	srliw	a6, a0, 27
	slli	a0, a0, 5
	or	a0, a0, a6
	xor	a1, a1, a2
	xor	a1, a1, a3
	add	a0, a0, a1
	add	a4, a4, a5
	lui	a1, 454047
	addi	a1, a1, -1119
	add	a1, a1, a4
	addw	a0, a0, a1
	ret
.Lfunc_end0:
	.size	sha1_round2, .Lfunc_end0-sha1_round2
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
