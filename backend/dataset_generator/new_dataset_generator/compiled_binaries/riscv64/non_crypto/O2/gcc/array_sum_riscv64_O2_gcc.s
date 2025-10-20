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
	beq	a1,zero,.L4
	slli	a1,a1,2
	mv	a5,a0
	add	a3,a0,a1
	li	a0,0
.L3:
	lw	a4,0(a5)
	addi	a5,a5,4
	addw	a0,a4,a0
	bne	a5,a3,.L3
	ret
.L4:
	li	a0,0
	ret
	.cfi_endproc
.LFE0:
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
