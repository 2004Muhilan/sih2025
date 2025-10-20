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
.L2:
	beq	a5,a2,.L8
	add	a4,a0,a5
	lbu	a4,0(a4)
	bne	a4,zero,.L4
.L8:
	mv	a4,a5
	addi	a2,a2,-1
.L5:
	add	a6,a0,a4
	bleu	a2,a4,.L6
	sub	a3,a4,a5
	add	a3,a1,a3
	lbu	a3,0(a3)
	bne	a3,zero,.L7
.L6:
	sb	zero,0(a6)
	ret
.L4:
	addi	a5,a5,1
	j	.L2
.L7:
	sb	a3,0(a6)
	addi	a4,a4,1
	j	.L5
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
