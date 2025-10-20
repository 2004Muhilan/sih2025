	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_ch.c"
	.globl	sha256_ch                       # -- Begin function sha256_ch
	.p2align	1
	.type	sha256_ch,@function
sha256_ch:                              # @sha256_ch
	.cfi_startproc
# %bb.0:
	and	a1, a1, a0
	not	a0, a0
	and	a0, a0, a2
	or	a0, a0, a1
	ret
.Lfunc_end0:
	.size	sha256_ch, .Lfunc_end0-sha256_ch
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
