	.file	"prng_xorshift.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	prng_xorshift
	.type	prng_xorshift, @function
prng_xorshift:
.LFB0:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	slliw	a3,a5,13
	xor	a5,a5,a3
	srliw	a3,a5,17
	xor	a5,a5,a3
	slliw	a3,a5,5
	xor	a5,a5,a3
	sext.w	a0,a5
	sw	a0,0(a4)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
