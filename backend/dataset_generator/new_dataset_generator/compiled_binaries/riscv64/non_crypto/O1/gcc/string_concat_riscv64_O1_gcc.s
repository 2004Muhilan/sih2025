	.file	"string_concat.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	string_concat
	.type	string_concat, @function
string_concat:
.LFB0:
	.cfi_startproc
	li	a5,0
	beq	a2,zero,.L18
.L2:
	add	a4,a0,a5
	lbu	a4,0(a4)
	beq	a4,zero,.L19
	addi	a5,a5,1
	bne	a2,a5,.L2
	j	.L4
.L19:
	addi	a6,a2,-1
	bleu	a6,a5,.L11
.L9:
	mv	a2,a5
.L5:
	sub	a4,a2,a5
	add	a4,a1,a4
	lbu	a4,0(a4)
	beq	a4,zero,.L4
	add	a3,a0,a2
	sb	a4,0(a3)
	addi	a2,a2,1
	bne	a2,a6,.L5
	mv	a2,a6
.L4:
	add	a0,a0,a2
	sb	zero,0(a0)
	ret
.L11:
	mv	a2,a5
	j	.L4
.L18:
	addi	a6,a2,-1
	mv	a5,a2
	j	.L9
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
