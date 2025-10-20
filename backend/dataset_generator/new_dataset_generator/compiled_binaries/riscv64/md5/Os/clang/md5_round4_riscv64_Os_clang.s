	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"md5_round4.c"
	.globl	md5_round4                      # -- Begin function md5_round4
	.p2align	1
	.type	md5_round4,@function
md5_round4:                             # @md5_round4
	.cfi_startproc
# %bb.0:
	lw	a7, 0(a0)
	not	a3, a3
	or	a3, a3, a1
	xor	a2, a2, a3
	add	a4, a4, a6
	add	a2, a2, a4
	add	a2, a2, a7
	sllw	a2, a2, a5
	add	a1, a1, a2
	sw	a1, 0(a0)
	ret
.Lfunc_end0:
	.size	md5_round4, .Lfunc_end0-md5_round4
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
