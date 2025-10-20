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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x13
                                        # kill: def $x15 killed $x12
                                        # kill: def $x15 killed $x11
                                        # kill: def $x15 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
	sd	a4, -72(s0)
	ld	a0, -56(s0)
	ld	a1, -40(s0)
	sub	a0, a0, a1
	ld	a1, -64(s0)
	ld	a2, -48(s0)
	sub	a1, a1, a2
	mul	a0, a0, a1
	ld	a1, -72(s0)
	remu	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -80(s0)
	mul	a0, a0, a0
	ld	a1, -48(s0)
	sub	a0, a0, a1
	ld	a1, -64(s0)
	sub	a0, a0, a1
	ld	a1, -72(s0)
	remu	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -80(s0)
	ld	a1, -48(s0)
	ld	a2, -32(s0)
	sub	a1, a1, a2
	mul	a0, a0, a1
	ld	a1, -40(s0)
	sub	a0, a0, a1
	ld	a1, -72(s0)
	remu	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
