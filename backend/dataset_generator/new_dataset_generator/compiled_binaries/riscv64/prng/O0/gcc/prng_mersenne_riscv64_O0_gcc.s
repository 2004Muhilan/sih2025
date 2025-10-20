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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-24(s0)
	j	.L2
.L4:
	ld	a4,-40(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	li	a5,624
	remw	a5,a4,a5
	sext.w	a5,a5
	ld	a4,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,397
	sext.w	a5,a5
	mv	a4,a5
	li	a5,624
	remw	a5,a4,a5
	sext.w	a5,a5
	ld	a4,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a4,a5
	ld	a3,-40(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L3
	ld	a4,-40(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-1727483904
	addi	a5,a5,223
	xor	a5,a4,a5
	sext.w	a4,a5
	ld	a3,-40(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L3:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,623
	ble	a4,a5,.L4
	ld	a4,-40(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	zero,-1600(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
