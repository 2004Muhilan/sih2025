	.file	"factorial.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB0:
	.cfi_startproc
	mv	a3,a0
	li	a5,1
	bleu	a0,a5,.L4
	li	a5,2
	li	a0,1
.L3:
	slli	a4,a5,32
	srli	a4,a4,32
	mul	a0,a0,a4
	addiw	a5,a5,1
	bgeu	a3,a5,.L3
	ret
.L4:
	li	a0,1
	ret
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
