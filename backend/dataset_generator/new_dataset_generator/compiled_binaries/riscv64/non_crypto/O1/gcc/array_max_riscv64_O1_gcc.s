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
	mv	a2,a0
	beq	a1,zero,.L5
	lw	a0,0(a0)
	li	a5,1
	bleu	a1,a5,.L2
	addi	a4,a2,4
	slli	a1,a1,2
	add	a2,a2,a1
	j	.L4
.L3:
	sext.w	a0,a3
	addi	a4,a4,4
	beq	a4,a2,.L7
.L4:
	lw	a5,0(a4)
	mv	a3,a5
	sext.w	a5,a5
	bge	a5,a0,.L3
	mv	a3,a0
	j	.L3
.L7:
	ret
.L5:
	li	a0,0
.L2:
	ret
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
