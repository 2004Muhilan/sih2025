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
	mv	a5,a0
	sub	a3,a3,a1
	sub	a0,a2,a0
	mul	a3,a3,a0
	add	a2,a5,a2
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	remu	a3,a3,a4
	mul	a0,a3,a3
	sub	a0,a0,a2
	remu	a0,a0,a4
	sub	a5,a5,a0
	mul	a5,a5,a3
	sub	a1,a5,a1
	remu	a1,a1,a4
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
