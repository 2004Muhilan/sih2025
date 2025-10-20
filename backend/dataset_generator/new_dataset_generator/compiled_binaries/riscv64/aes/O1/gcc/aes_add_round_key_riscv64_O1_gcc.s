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
	mv	a5,a0
	addi	a2,a0,16
.L2:
	lbu	a4,0(a5)
	lbu	a3,0(a1)
	xor	a4,a4,a3
	sb	a4,0(a5)
	addi	a5,a5,1
	addi	a1,a1,1
	bne	a5,a2,.L2
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
