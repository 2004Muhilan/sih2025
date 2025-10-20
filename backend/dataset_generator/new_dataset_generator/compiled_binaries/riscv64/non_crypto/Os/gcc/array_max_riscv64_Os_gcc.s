	.file	"array_max.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	array_max
	.type	array_max, @function
array_max:
.LFB0:
	.cfi_startproc
	mv	a4,a0
	beq	a1,zero,.L6
	lw	a0,0(a0)
	li	a5,1
.L3:
	bne	a5,a1,.L5
	ret
.L5:
	slli	a3,a5,2
	add	a3,a4,a3
	lw	a2,0(a3)
	mv	a3,a2
	bge	a2,a0,.L4
	mv	a3,a0
.L4:
	sext.w	a0,a3
	addi	a5,a5,1
	j	.L3
.L6:
	li	a0,0
	ret
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
