	.file	"fibonacci.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB0:
	.cfi_startproc
	mv	a2,a0
	li	a5,1
	bleu	a0,a5,.L4
	li	a5,2
	li	a0,1
	li	a4,0
.L3:
	sext.w	a3,a0
	addw	a0,a4,a0
	addiw	a5,a5,1
	sext.w	a4,a3
	bgeu	a2,a5,.L3
	ret
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
