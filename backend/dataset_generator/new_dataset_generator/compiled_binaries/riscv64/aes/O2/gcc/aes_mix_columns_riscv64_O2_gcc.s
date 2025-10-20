	.file	"aes_mix_columns.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	addi	a3,a0,16
.L18:
	lbu	a2,0(a0)
	lbu	a1,1(a0)
	lbu	a6,2(a0)
	lbu	a4,3(a0)
	mv	a7,a2
	li	t3,8
	li	t4,0
	li	t1,2
.L3:
	andi	a5,t1,1
	slliw	t5,a7,24
	negw	a5,a5
	and	a5,a7,a5
	slliw	t6,a7,1
	sraiw	t5,t5,24
	addiw	t3,t3,-1
	andi	a7,t6,254
	xor	t4,t4,a5
	bge	t5,zero,.L2
	xori	a7,a7,27
.L2:
	srli	t1,t1,1
	bne	t3,zero,.L3
	mv	a7,a1
	li	t3,8
	li	t5,0
	li	t1,3
.L5:
	andi	a5,t1,1
	slliw	t6,a7,24
	negw	a5,a5
	and	a5,a7,a5
	slliw	t0,a7,1
	sraiw	t6,t6,24
	addiw	t3,t3,-1
	andi	a7,t0,254
	xor	t5,t5,a5
	bge	t6,zero,.L4
	xori	a7,a7,27
.L4:
	srli	t1,t1,1
	bne	t3,zero,.L5
	xor	a5,a6,a4
	xor	t4,t4,a5
	xor	t5,t5,t4
	sb	t5,0(a0)
	mv	a7,a1
	li	t3,8
	li	t5,0
	li	t1,2
.L7:
	andi	a5,t1,1
	slliw	t4,a7,24
	negw	a5,a5
	and	a5,a7,a5
	slliw	t6,a7,1
	sraiw	t4,t4,24
	addiw	t3,t3,-1
	andi	a7,t6,254
	xor	t5,t5,a5
	bge	t4,zero,.L6
	xori	a7,a7,27
.L6:
	srli	t1,t1,1
	bne	t3,zero,.L7
	xor	t2,a2,a4
	mv	a7,a6
	li	t3,8
	li	t4,0
	li	t1,3
.L9:
	andi	a5,t1,1
	slliw	t6,a7,24
	negw	a5,a5
	and	a5,a7,a5
	slliw	t0,a7,1
	sraiw	t6,t6,24
	addiw	t3,t3,-1
	andi	a7,t0,254
	xor	t4,t4,a5
	bge	t6,zero,.L8
	xori	a7,a7,27
.L8:
	srli	t1,t1,1
	bne	t3,zero,.L9
	xor	a5,t2,t5
	xor	t4,t4,a5
	sb	t4,1(a0)
	xor	t0,a2,a1
	mv	a7,a6
	li	t3,8
	li	t4,0
	li	t1,2
.L11:
	andi	a5,t1,1
	slliw	t5,a7,24
	negw	a5,a5
	and	a5,a7,a5
	slliw	t6,a7,1
	sraiw	t5,t5,24
	addiw	t3,t3,-1
	andi	a7,t6,254
	xor	t4,t4,a5
	bge	t5,zero,.L10
	xori	a7,a7,27
.L10:
	srli	t1,t1,1
	bne	t3,zero,.L11
	xor	t6,t0,t4
	mv	a7,a4
	li	t4,8
	li	t1,0
	li	t3,3
.L13:
	andi	a5,t3,1
	negw	a5,a5
	and	a5,a7,a5
	xor	t1,t1,a5
	slliw	a5,a7,24
	slliw	t5,a7,1
	sraiw	a5,a5,24
	addiw	t4,t4,-1
	andi	a7,t5,254
	andi	t1,t1,0xff
	bge	a5,zero,.L12
	xori	a7,a7,27
.L12:
	srli	t3,t3,1
	bne	t4,zero,.L13
	xor	a5,t6,t1
	sb	a5,2(a0)
	li	t1,8
	li	t3,0
	li	a7,3
.L15:
	andi	a5,a7,1
	slliw	t4,a2,24
	negw	a5,a5
	and	a5,a2,a5
	slliw	t5,a2,1
	sraiw	t4,t4,24
	addiw	t1,t1,-1
	andi	a2,t5,254
	xor	t3,t3,a5
	bge	t4,zero,.L14
	xori	a2,a2,27
.L14:
	srli	a7,a7,1
	bne	t1,zero,.L15
	xor	a1,a1,a6
	xor	t3,t3,a1
	li	a6,0
	li	a1,8
	li	a2,2
.L17:
	andi	a5,a2,1
	slliw	a7,a4,24
	negw	a5,a5
	and	a5,a4,a5
	slliw	t1,a4,1
	sraiw	a7,a7,24
	addiw	a1,a1,-1
	andi	a4,t1,254
	xor	a6,a6,a5
	bge	a7,zero,.L16
	xori	a4,a4,27
.L16:
	srli	a2,a2,1
	bne	a1,zero,.L17
	xor	t3,t3,a6
	sb	t3,3(a0)
	addi	a0,a0,4
	bne	a3,a0,.L18
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
