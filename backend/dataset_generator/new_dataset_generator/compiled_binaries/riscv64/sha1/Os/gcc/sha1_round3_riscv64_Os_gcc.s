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
	or	a6,a2,a3
	and	a2,a2,a3
	li	a3,-1894006784
	addiw	a3,a3,-804
	addw	a3,a3,a5
	slliw	a5,a0,5
	srliw	a0,a0,27
	or	a5,a5,a0
	and	a6,a6,a1
	addw	a3,a3,a4
	or	a6,a6,a2
	addw	a3,a3,a5
	addw	a0,a3,a6
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
