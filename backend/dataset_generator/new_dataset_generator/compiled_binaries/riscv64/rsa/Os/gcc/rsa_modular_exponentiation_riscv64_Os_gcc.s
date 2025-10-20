	.file	"rsa_modular_exponentiation.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_mod_exp
	.type	rsa_mod_exp, @function
rsa_mod_exp:
.LFB0:
	.cfi_startproc
	remu	a5,a0,a2
	li	a0,1
.L2:
	bne	a1,zero,.L4
	ret
.L4:
	andi	a4,a1,1
	beq	a4,zero,.L3
	mul	a0,a5,a0
	remu	a0,a0,a2
.L3:
	srli	a1,a1,1
	mul	a5,a5,a5
	remu	a5,a5,a2
	j	.L2
	.cfi_endproc
.LFE0:
	.size	rsa_mod_exp, .-rsa_mod_exp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
