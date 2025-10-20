	.file	"prng_mersenne.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	li	a7,-2147483648
	li	a1,-1727483904
	mv	a3,a0
	li	a2,0
	li	t1,624
	xori	a7,a7,-1
	li	t4,-2147483648
	addi	a1,a1,223
	li	t3,624
.L2:
	mv	a4,a2
	addiw	a2,a2,1
	remw	a5,a2,t1
	addiw	a4,a4,397
	lw	a6,0(a3)
	and	a6,a6,t4
	remw	a4,a4,t1
	slli	a5,a5,2
	add	a5,a0,a5
	lw	a5,0(a5)
	and	a5,a5,a7
	or	a5,a5,a6
	srliw	a6,a5,1
	andi	a5,a5,1
	negw	a5,a5
	and	a5,a5,a1
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a4,0(a4)
	xor	a4,a4,a6
	xor	a5,a4,a5
	sw	a5,0(a3)
	addi	a3,a3,4
	bne	a2,t3,.L2
	li	a5,4096
	add	a0,a0,a5
	sw	zero,-1600(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
