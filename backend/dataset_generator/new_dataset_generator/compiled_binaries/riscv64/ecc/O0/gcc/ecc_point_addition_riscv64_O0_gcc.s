	.file	"ecc_point_addition.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ecc_point_add
	.type	ecc_point_add, @function
ecc_point_add:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	s0,104(sp)
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-104(s0)
	ld	a4,-88(s0)
	ld	a5,-72(s0)
	sub	a4,a4,a5
	ld	a3,-96(s0)
	ld	a5,-80(s0)
	sub	a5,a3,a5
	mul	a4,a4,a5
	ld	a5,-104(s0)
	remu	a5,a4,a5
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	mul	a4,a5,a5
	ld	a5,-80(s0)
	sub	a4,a4,a5
	ld	a5,-96(s0)
	sub	a4,a4,a5
	ld	a5,-104(s0)
	remu	a5,a4,a5
	sd	a5,-48(s0)
	ld	a4,-80(s0)
	ld	a5,-48(s0)
	sub	a4,a4,a5
	ld	a5,-56(s0)
	mul	a4,a4,a5
	ld	a5,-72(s0)
	sub	a4,a4,a5
	ld	a5,-104(s0)
	remu	a5,a4,a5
	sd	a5,-40(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	ld	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
