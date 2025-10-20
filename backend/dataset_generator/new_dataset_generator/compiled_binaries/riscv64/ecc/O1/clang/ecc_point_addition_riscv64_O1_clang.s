	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   # -- Begin function ecc_point_add
	.p2align	1
	.type	ecc_point_add,@function
ecc_point_add:                          # @ecc_point_add
	.cfi_startproc
# %bb.0:
	sub	a3, a3, a1
	sub	a5, a2, a0
	mul	a3, a3, a5
	remu	a3, a3, a4
	mul	a5, a3, a3
	add	a2, a2, a0
	sub	a5, a5, a2
	remu	a2, a5, a4
	sub	a0, a0, a2
	mul	a0, a0, a3
	sub	a0, a0, a1
	remu	a1, a0, a4
	mv	a0, a2
	ret
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
