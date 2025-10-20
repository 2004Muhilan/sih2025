	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha1_round3.c"
	.globl	sha1_round3                     # -- Begin function sha1_round3
	.p2align	1
	.type	sha1_round3,@function
sha1_round3:                            # @sha1_round3
	.cfi_startproc
# %bb.0:
	srliw	a6, a0, 27
	slli	a0, a0, 5
	or	a6, a0, a6
	or	a0, a3, a2
	and	a0, a0, a1
	and	a2, a2, a3
	or	a0, a0, a2
	add	a4, a4, a5
	add	a4, a4, a6
	add	a0, a0, a4
	lui	a1, 586172
	addi	a1, a1, -804
	addw	a0, a0, a1
	ret
.Lfunc_end0:
	.size	sha1_round3, .Lfunc_end0-sha1_round3
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
