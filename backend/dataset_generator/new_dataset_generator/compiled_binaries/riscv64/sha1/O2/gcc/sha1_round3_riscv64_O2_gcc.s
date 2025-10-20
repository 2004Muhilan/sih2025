	.file	"sha1_round3.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_round3
	.type	sha1_round3, @function
sha1_round3:
.LFB0:
	.cfi_startproc
	li	a6,-1894006784
	addiw	a6,a6,-804
	or	a7,a2,a3
	addw	a6,a6,a5
	slliw	a5,a0,5
	srliw	a0,a0,27
	or	a5,a5,a0
	and	a7,a7,a1
	and	a2,a2,a3
	addw	a6,a6,a4
	or	a7,a7,a2
	addw	a6,a6,a5
	addw	a0,a6,a7
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
