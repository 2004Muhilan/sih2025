	.file	"string_reverse.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	string_reverse
	.type	string_reverse, @function
string_reverse:
.LFB0:
	.cfi_startproc
	addi	a1,a1,-1
	li	a5,0
.L2:
	bltu	a5,a1,.L3
	ret
.L3:
	add	a4,a0,a1
	add	a3,a0,a5
	lbu	a6,0(a4)
	lbu	a2,0(a3)
	addi	a5,a5,1
	sb	a6,0(a3)
	sb	a2,0(a4)
	addi	a1,a1,-1
	j	.L2
	.cfi_endproc
.LFE0:
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
