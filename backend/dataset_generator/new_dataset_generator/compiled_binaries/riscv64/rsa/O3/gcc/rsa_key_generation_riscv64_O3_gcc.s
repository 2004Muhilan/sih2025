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
	li	a5,4096
	addi	a5,a5,-863
	sd	a5,0(a0)
	li	a5,17
	sd	a5,0(a1)
	sd	zero,0(a2)
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
