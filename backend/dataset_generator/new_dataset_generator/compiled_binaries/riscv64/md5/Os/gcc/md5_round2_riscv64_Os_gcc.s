	.file	"md5_round2.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_round2
	.type	md5_round2, @function
md5_round2:
.LFB0:
	.cfi_startproc
	xor	a7,a1,a2
	and	a7,a7,a3
	lw	a3,0(a0)
	addw	a4,a4,a6
	xor	a2,a2,a7
	addw	a4,a4,a3
	addw	a4,a4,a2
	sllw	a4,a4,a5
	addw	a1,a4,a1
	sw	a1,0(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
