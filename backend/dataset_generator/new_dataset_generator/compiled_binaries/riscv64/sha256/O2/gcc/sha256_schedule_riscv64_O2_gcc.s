	.file	"sha256_schedule.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	sd	s1,16(sp)
	sd	s2,8(sp)
	sd	s3,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	addi	a3,a0,64
	mv	a5,a1
.L2:
	lw	a4,0(a0)
	addi	a0,a0,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a3,a0,.L2
	lw	t6,36(a1)
	lw	t5,40(a1)
	lw	t4,44(a1)
	lw	t3,48(a1)
	lw	t1,52(a1)
	lw	a2,56(a1)
	lw	a7,60(a1)
	lw	a3,0(a1)
	addi	a0,a1,4
	addi	t2,a1,196
.L3:
	sext.w	t0,a3
	lw	a3,0(a0)
	srliw	s0,a2,19
	slliw	a4,a2,15
	srliw	s1,a2,17
	slliw	a1,a2,13
	srliw	a5,a3,7
	slliw	s3,a3,25
	slliw	a6,a3,14
	srliw	s2,a3,18
	or	a6,a6,s2
	or	a1,a1,s0
	or	a5,a5,s3
	or	a4,a4,s1
	srliw	s0,a2,10
	xor	a5,a5,a6
	xor	a4,a4,a1
	srliw	a6,a3,3
	xor	a4,a4,s0
	xor	a5,a5,a6
	addw	a5,a5,a4
	addw	a5,a5,t0
	addw	a5,a5,t6
	sext.w	a4,a7
	sw	a5,60(a0)
	addi	a0,a0,4
	sext.w	t6,t5
	sext.w	a7,a5
	sext.w	t5,t4
	sext.w	t4,t3
	sext.w	t3,t1
	sext.w	t1,a2
	sext.w	a2,a4
	bne	a0,t2,.L3
	ld	s0,24(sp)
	.cfi_restore 8
	ld	s1,16(sp)
	.cfi_restore 9
	ld	s2,8(sp)
	.cfi_restore 18
	ld	s3,0(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
