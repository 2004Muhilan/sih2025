	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_maj.c"
	.globl	sha256_maj                      # -- Begin function sha256_maj
	.p2align	1
	.type	sha256_maj,@function
sha256_maj:                             # @sha256_maj
	.cfi_startproc
# %bb.0:
	xor	a3, a2, a1
	and	a0, a0, a3
	and	a1, a1, a2
	xor	a0, a0, a1
	ret
.Lfunc_end0:
	.size	sha256_maj, .Lfunc_end0-sha256_maj
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
