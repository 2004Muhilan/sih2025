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
	mv	a2,a0
	li	a3,0
	li	a6,624
	li	t1,-2147483648
	xori	t1,t1,-1
	li	t4,-2147483648
	li	a7,-1727483904
	addi	a7,a7,223
	li	t3,624
.L2:
	mv	a4,a3
	addiw	a5,a3,1
	sext.w	a3,a5
	remw	a5,a5,a6
	slli	a5,a5,2
	add	a5,a0,a5
	lw	a5,0(a5)
	and	a5,a5,t1
	lw	a1,0(a2)
	and	a1,a1,t4
	or	a5,a5,a1
	addiw	a4,a4,397
	remw	a4,a4,a6
	slli	a4,a4,2
	add	a4,a0,a4
	srliw	a1,a5,1
	lw	a4,0(a4)
	xor	a4,a4,a1
	andi	a5,a5,1
	negw	a5,a5
	and	a5,a5,a7
	xor	a5,a4,a5
	sw	a5,0(a2)
	addi	a2,a2,4
	bne	a3,t3,.L2
	li	a5,4096
	add	a0,a0,a5
	sw	zero,-1600(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
