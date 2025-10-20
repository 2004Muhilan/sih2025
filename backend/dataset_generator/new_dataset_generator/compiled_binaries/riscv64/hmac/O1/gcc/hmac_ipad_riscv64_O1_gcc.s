	.file	"hmac_ipad.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_create_ipad
	.type	hmac_create_ipad, @function
hmac_create_ipad:
.LFB0:
	.cfi_startproc
	li	a5,0
	li	a7,54
	li	a6,64
	j	.L3
.L2:
	add	a3,a2,a5
	sb	a4,0(a3)
	addi	a5,a5,1
	beq	a5,a6,.L6
.L3:
	mv	a4,a7
	bleu	a1,a5,.L2
	add	a4,a0,a5
	lbu	a4,0(a4)
	xori	a4,a4,54
	j	.L2
.L6:
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_create_ipad, .-hmac_create_ipad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
