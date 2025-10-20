	.file	"xor_ofb_mode.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_ofb_mode
	.type	xor_ofb_mode, @function
xor_ofb_mode:
.LFB0:
	.cfi_startproc
	beq	a1,zero,.L1
	li	a5,0
.L3:
	remu	a7,a5,a3
	lbu	a6,0(a0)
	addi	a0,a0,1
	addi	a5,a5,1
	add	a7,a2,a7
	lbu	a7,0(a7)
	xor	a4,a4,a7
	xor	a6,a4,a6
	sb	a6,-1(a0)
	bne	a1,a5,.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	xor_ofb_mode, .-xor_ofb_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
