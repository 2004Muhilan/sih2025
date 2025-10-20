	.file	"des_permutation_choice.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_pc1
	.type	des_pc1, @function
des_pc1:
.LFB0:
	.cfi_startproc
	mv	a3,a0
	li	a4,55
	li	a0,0
	li	a2,-1
.L2:
	addiw	a5,a4,9
	srl	a5,a3,a5
	andi	a5,a5,1
	sll	a5,a5,a4
	addiw	a4,a4,-1
	or	a0,a0,a5
	bne	a4,a2,.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
