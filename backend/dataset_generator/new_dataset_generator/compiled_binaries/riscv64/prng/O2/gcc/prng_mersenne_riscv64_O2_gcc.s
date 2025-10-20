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
	li	a7,-1727483904
	li	t1,-2147483648
	mv	a1,a0
	li	a2,0
	li	a6,624
	xori	t1,t1,-1
	li	t4,-2147483648
	addi	a7,a7,223
	li	t3,624
.L2:
	addiw	t5,a2,1
	remw	a4,t5,a6
	addiw	a5,a2,397
	lw	a3,0(a1)
	addi	a1,a1,4
	sext.w	a2,t5
	and	a3,a3,t4
	remw	a5,a5,a6
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a4,0(a4)
	and	a4,a4,t1
	or	a4,a4,a3
	andi	a3,a4,1
	negw	a3,a3
	srliw	a4,a4,1
	and	a3,a3,a7
	slli	a5,a5,2
	add	a5,a0,a5
	lw	a5,0(a5)
	xor	a5,a5,a4
	xor	a5,a5,a3
	sw	a5,-4(a1)
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
