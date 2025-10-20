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
	mv	a3,a0
	li	a5,0
	bne	a2,zero,.L4
	j	.L3
.L6:
	addi	a5,a5,1
	beq	a2,a5,.L13
.L4:
	lbu	a6,0(a3)
	mv	a4,a3
	addi	a3,a3,1
	bne	a6,zero,.L6
	addi	a3,a2,-1
	bleu	a3,a5,.L5
.L3:
	add	a6,a0,a5
	mv	a3,a5
	addi	a2,a2,-1
	j	.L7
.L8:
	sb	a7,0(a6)
	addi	a6,a4,1
	bleu	a2,a3,.L14
.L7:
	sub	a4,a3,a5
	add	a4,a1,a4
	lbu	a7,0(a4)
	addi	a3,a3,1
	mv	a4,a6
	bne	a7,zero,.L8
.L5:
	sb	zero,0(a4)
	ret
.L13:
	add	a4,a0,a2
	sb	zero,0(a4)
	ret
.L14:
	add	a4,a0,a3
	sb	zero,0(a4)
	ret
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
