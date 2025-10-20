	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   # -- Begin function sha256_sigma0
	.p2align	1
	.type	sha256_sigma0,@function
sha256_sigma0:                          # @sha256_sigma0
	.cfi_startproc
# %bb.0:
	srliw	a1, a0, 2
	slliw	a2, a0, 30
	or	a1, a1, a2
	srliw	a2, a0, 13
	slliw	a3, a0, 19
	or	a2, a2, a3
	xor	a1, a1, a2
	srliw	a2, a0, 22
	slliw	a0, a0, 10
	or	a0, a0, a2
	xor	a0, a0, a1
	ret
.Lfunc_end0:
	.size	sha256_sigma0, .Lfunc_end0-sha256_sigma0
	.cfi_endproc
                                        # -- End function
	.globl	sha256_sigma1                   # -- Begin function sha256_sigma1
	.p2align	1
	.type	sha256_sigma1,@function
sha256_sigma1:                          # @sha256_sigma1
	.cfi_startproc
# %bb.0:
	srliw	a1, a0, 6
	slliw	a2, a0, 26
	or	a1, a1, a2
	srliw	a2, a0, 11
	slliw	a3, a0, 21
	or	a2, a2, a3
	xor	a1, a1, a2
	srliw	a2, a0, 25
	slliw	a0, a0, 7
	or	a0, a0, a2
	xor	a0, a0, a1
	ret
.Lfunc_end1:
	.size	sha256_sigma1, .Lfunc_end1-sha256_sigma1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
