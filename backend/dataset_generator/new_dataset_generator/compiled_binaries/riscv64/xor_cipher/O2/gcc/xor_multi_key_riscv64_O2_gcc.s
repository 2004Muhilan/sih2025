	.file	"xor_multi_key.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
.LFB0:
	.cfi_startproc
	beq	a1,zero,.L1
	li	a7,0
.L3:
	remu	a6,a7,a4
	lbu	t1,0(a0)
	addi	a0,a0,1
	addi	a7,a7,1
	add	a5,a2,a6
	lbu	a5,0(a5)
	add	a6,a3,a6
	xor	a5,a5,t1
	sb	a5,-1(a0)
	lbu	a6,0(a6)
	xor	a5,a5,a6
	sb	a5,-1(a0)
	bne	a1,a7,.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
