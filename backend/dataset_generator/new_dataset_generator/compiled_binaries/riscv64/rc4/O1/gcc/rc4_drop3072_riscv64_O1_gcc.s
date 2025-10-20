	.file	"rc4_drop3072.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
.LFB0:
	.cfi_startproc
	li	a5,0
	li	a3,256
.L2:
	add	a4,a0,a5
	sb	a5,0(a4)
	addi	a5,a5,1
	bne	a5,a3,.L2
	mv	a3,a0
	li	a4,0
	li	a5,0
	li	t3,256
.L3:
	lbu	a7,0(a3)
	remu	a6,a4,a2
	add	a6,a1,a6
	lbu	a6,0(a6)
	addw	a5,a5,a7
	addw	a5,a6,a5
	andi	a5,a5,0xff
	add	a6,a0,a5
	lbu	t1,0(a6)
	sb	t1,0(a3)
	sb	a7,0(a6)
	addi	a4,a4,1
	addi	a3,a3,1
	bne	a4,t3,.L3
	li	a5,4096
	addi	a5,a5,-1024
.L4:
	addiw	a5,a5,-1
	bne	a5,zero,.L4
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
