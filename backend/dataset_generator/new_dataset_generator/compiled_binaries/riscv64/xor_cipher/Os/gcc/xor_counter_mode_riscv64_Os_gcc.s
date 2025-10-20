	.file	"xor_counter_mode.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_counter_mode
	.type	xor_counter_mode, @function
xor_counter_mode:
.LFB0:
	.cfi_startproc
	li	a5,0
.L2:
	bne	a5,a1,.L3
	ret
.L3:
	remu	a6,a5,a3
	add	t1,a0,a5
	lbu	a7,0(t1)
	addw	t3,a4,a5
	addi	a5,a5,1
	xor	a7,a7,t3
	add	a6,a2,a6
	lbu	a6,0(a6)
	xor	a6,a6,a7
	sb	a6,0(t1)
	j	.L2
	.cfi_endproc
.LFE0:
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
