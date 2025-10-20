	.file	"md5_round1.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_round1
	.type	md5_round1, @function
md5_round1:
.LFB0:
	.cfi_startproc
	lw	a7,0(a0)
	xor	a2,a2,a3
	and	a2,a2,a1
	addw	a4,a4,a6
	xor	a3,a3,a2
	addw	a4,a4,a7
	addw	a4,a4,a3
	sllw	a4,a4,a5
	addw	a4,a4,a1
	sw	a4,0(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round1, .-md5_round1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
