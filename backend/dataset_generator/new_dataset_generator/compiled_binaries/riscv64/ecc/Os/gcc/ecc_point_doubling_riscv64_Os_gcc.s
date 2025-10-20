	.file	"ecc_point_doubling.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ecc_point_double
	.type	ecc_point_double, @function
ecc_point_double:
.LFB0:
	.cfi_startproc
	mul	a4,a0,a0
	mv	a5,a0
	li	a0,3
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	mul	a4,a4,a0
	add	a2,a4,a2
	slli	a4,a1,1
	divu	a2,a2,a4
	slli	a4,a5,1
	remu	a2,a2,a3
	mul	a0,a2,a2
	sub	a0,a0,a4
	remu	a0,a0,a3
	sub	a5,a5,a0
	mul	a5,a5,a2
	sub	a1,a5,a1
	remu	a1,a1,a3
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
