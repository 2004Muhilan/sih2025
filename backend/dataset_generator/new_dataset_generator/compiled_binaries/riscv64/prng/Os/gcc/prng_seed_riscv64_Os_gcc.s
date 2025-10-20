	.file	"prng_seed.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	prng_seed
	.type	prng_seed, @function
prng_seed:
.LFB0:
	.cfi_startproc
	li	a5,1812434944
	addi	a5,a5,-1691
	xor	a5,a1,a5
	sw	a5,4(a0)
	li	a5,821329920
	addi	a5,a5,-624
	xor	a5,a1,a5
	sw	a5,8(a0)
	li	a5,1597333504
	addi	a5,a5,1173
	sw	a1,0(a0)
	xor	a1,a1,a5
	sw	a1,12(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
