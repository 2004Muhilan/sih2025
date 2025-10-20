	.file	"array_sum.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	array_sum
	.type	array_sum, @function
array_sum:
.LFB0:
	.cfi_startproc
	mv	a4,a0
	li	a5,0
	li	a0,0
.L2:
	bne	a5,a1,.L3
	ret
.L3:
	slli	a3,a5,2
	add	a3,a4,a3
	lw	a3,0(a3)
	addi	a5,a5,1
	addw	a0,a3,a0
	j	.L2
	.cfi_endproc
.LFE0:
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
