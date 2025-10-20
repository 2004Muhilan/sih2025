	.file	"ecc_ecdh_shared_secret.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ecc_ecdh_shared
	.type	ecc_ecdh_shared, @function
ecc_ecdh_shared:
.LFB0:
	.cfi_startproc
	mul	a0,a2,a0
	li	a5,-1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	srli	a5,a5,32
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	remu	a0,a0,a5
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
