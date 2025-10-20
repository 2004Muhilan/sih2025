	.file	"sha1_round2.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_round2
	.type	sha1_round2, @function
sha1_round2:
.LFB0:
	.cfi_startproc
	li	a6,1859776512
	addiw	a6,a6,-1119
	xor	a2,a2,a3
	addw	a6,a6,a5
	xor	a2,a2,a1
	slliw	a5,a0,5
	addw	a6,a6,a4
	srliw	a0,a0,27
	addw	a6,a6,a2
	or	a0,a5,a0
	addw	a0,a6,a0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
