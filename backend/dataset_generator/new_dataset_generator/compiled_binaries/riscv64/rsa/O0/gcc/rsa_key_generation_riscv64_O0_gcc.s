	.file	"rsa_key_generation.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_generate_keys
	.type	rsa_generate_keys, @function
rsa_generate_keys:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	li	a5,61
	sd	a5,-40(s0)
	li	a5,53
	sd	a5,-32(s0)
	ld	a4,-40(s0)
	ld	a5,-32(s0)
	mul	a4,a4,a5
	ld	a5,-56(s0)
	sd	a4,0(a5)
	ld	a5,-40(s0)
	addi	a4,a5,-1
	ld	a5,-32(s0)
	addi	a5,a5,-1
	mul	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-64(s0)
	li	a4,17
	sd	a4,0(a5)
	ld	a5,-72(s0)
	sd	zero,0(a5)
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
