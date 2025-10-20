	.file	"ecc_scalar_multiplication.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ecc_scalar_mult
	.type	ecc_scalar_mult, @function
ecc_scalar_mult:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,88(sp)
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	sd	zero,-64(s0)
	sd	zero,-56(s0)
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	j	.L2
.L5:
	ld	a5,-88(s0)
	srli	a5,a5,1
	sd	a5,-88(s0)
.L2:
	ld	a5,-88(s0)
	bne	a5,zero,.L5
	ld	a5,-64(s0)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	ld	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
