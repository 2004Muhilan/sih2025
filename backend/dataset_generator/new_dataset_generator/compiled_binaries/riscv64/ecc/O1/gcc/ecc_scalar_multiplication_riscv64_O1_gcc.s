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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	beq	a2,zero,.L2
.L3:
	srli	a2,a2,1
	bne	a2,zero,.L3
.L2:
	li	a0,0
	li	a1,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
