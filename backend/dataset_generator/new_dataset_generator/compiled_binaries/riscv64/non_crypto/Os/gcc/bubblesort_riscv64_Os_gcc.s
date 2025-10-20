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
.L7:
	addi	a1,a1,-1
	beq	a1,zero,.L1
	mv	a5,a0
	li	a4,0
.L4:
	lw	a3,0(a5)
	lw	a2,4(a5)
	addi	a4,a4,1
	ble	a3,a2,.L3
	sw	a2,0(a5)
	sw	a3,4(a5)
.L3:
	addi	a5,a5,4
	bltu	a4,a1,.L4
	j	.L7
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
