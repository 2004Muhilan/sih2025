	.file	"rc4_ksa.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_ksa
	.type	rc4_ksa, @function
rc4_ksa:
.LFB0:
	.cfi_startproc
	li	a5,0
	li	a4,256
.L2:
	add	a3,a0,a5
	sb	a5,0(a3)
	addi	a5,a5,1
	bne	a5,a4,.L2
	li	a5,0
	li	a4,0
	li	t1,256
.L3:
	remu	a3,a5,a2
	add	a7,a0,a5
	lbu	a6,0(a7)
	addi	a5,a5,1
	addw	a4,a4,a6
	add	a3,a1,a3
	lbu	a3,0(a3)
	addw	a4,a3,a4
	andi	a4,a4,0xff
	add	a3,a0,a4
	lbu	t3,0(a3)
	sb	t3,0(a7)
	sb	a6,0(a3)
	bne	a5,t1,.L3
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
