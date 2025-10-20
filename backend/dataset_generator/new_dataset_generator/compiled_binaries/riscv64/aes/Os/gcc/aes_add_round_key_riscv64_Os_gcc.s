	.file	"aes_add_round_key.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
.LFB0:
	.cfi_startproc
	li	a5,0
	li	a2,16
.L2:
	add	a3,a0,a5
	add	a4,a1,a5
	lbu	a4,0(a4)
	lbu	a6,0(a3)
	addi	a5,a5,1
	xor	a4,a4,a6
	sb	a4,0(a3)
	bne	a5,a2,.L2
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
