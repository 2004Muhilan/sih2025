	.file	"bubblesort.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB0:
	.cfi_startproc
	li	a5,1
	beq	a1,a5,.L1
	slli	a2,a1,2
	add	a2,a0,a2
	li	a6,1
	j	.L3
.L4:
	addi	a5,a5,4
	beq	a5,a2,.L7
.L5:
	lw	a4,-4(a5)
	lw	a3,0(a5)
	ble	a4,a3,.L4
	sw	a3,-4(a5)
	sw	a4,0(a5)
	j	.L4
.L7:
	addi	a1,a1,-1
	addi	a2,a2,-4
	beq	a1,a6,.L1
.L3:
	addi	a5,a0,4
	j	.L5
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
