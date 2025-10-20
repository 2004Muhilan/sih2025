	.file	"des_feistel_function.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_feistel
	.type	des_feistel, @function
des_feistel:
.LFB0:
	.cfi_startproc
	li	a5,48
.L2:
	addiw	a5,a5,-1
	bne	a5,zero,.L2
	li	a0,0
	ret
	.cfi_endproc
.LFE0:
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
