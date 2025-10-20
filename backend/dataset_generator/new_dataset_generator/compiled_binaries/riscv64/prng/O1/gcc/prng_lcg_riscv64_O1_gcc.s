	.file	"prng_lcg.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	prng_lcg
	.type	prng_lcg, @function
prng_lcg:
.LFB0:
	.cfi_startproc
	mv	a4,a0
	lw	a3,0(a0)
	li	a5,1103515648
	addiw	a5,a5,-403
	mulw	a5,a5,a3
	li	a3,12288
	addiw	a3,a3,57
	addw	a5,a5,a3
	slli	a5,a5,33
	srli	a0,a5,33
	sw	a0,0(a4)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
