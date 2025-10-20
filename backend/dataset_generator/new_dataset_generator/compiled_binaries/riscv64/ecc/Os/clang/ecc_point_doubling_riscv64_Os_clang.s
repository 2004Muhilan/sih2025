	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                # -- Begin function ecc_point_double
	.p2align	1
	.type	ecc_point_double,@function
ecc_point_double:                       # @ecc_point_double
	.cfi_startproc
# %bb.0:
	mul	a4, a0, a0
	slli	a5, a4, 1
	add	a2, a2, a4
	add	a2, a2, a5
	slli	a4, a1, 1
	divu	a2, a2, a4
	remu	a4, a2, a3
	mul	a2, a4, a4
	slli	a5, a0, 1
	sub	a2, a2, a5
	remu	a2, a2, a3
	sub	a0, a0, a2
	mul	a0, a0, a4
	sub	a0, a0, a1
	remu	a1, a0, a3
	mv	a0, a2
	ret
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
