	.file	"sha1_message_schedule.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	or	a5,a0,a1
	sd	s0,24(sp)
	sd	s1,16(sp)
	sd	s2,8(sp)
	sd	s3,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	andi	a5,a5,7
	bne	a5,zero,.L2
	addi	a5,a0,4
	beq	a1,a5,.L2
	ld	a5,0(a0)
	sd	a5,0(a1)
	ld	a5,8(a0)
	sd	a5,8(a1)
	ld	a5,16(a0)
	sd	a5,16(a1)
	ld	a5,24(a0)
	sd	a5,24(a1)
	ld	a5,32(a0)
	sd	a5,32(a1)
	ld	a5,40(a0)
	sd	a5,40(a1)
	ld	a5,48(a0)
	sd	a5,48(a1)
	ld	a5,56(a0)
	sd	a5,56(a1)
.L3:
	lw	s0,52(a1)
	lw	t2,56(a1)
	lw	a0,60(a1)
	lw	s3,8(a1)
	lw	s2,12(a1)
	lw	s1,16(a1)
	lw	t3,20(a1)
	lw	t1,24(a1)
	lw	a7,28(a1)
	mv	a5,a1
	li	a6,16
	li	t0,79
	j	.L4
.L6:
	mv	a7,t4
	mv	t1,t5
	mv	t3,t6
.L4:
	lw	t6,32(a5)
	lw	t5,36(a5)
	lw	t4,40(a5)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a4,8(a5)
	xor	a2,a2,t6
	xor	a3,a3,t5
	xor	a4,a4,t4
	xor	a2,a2,s0
	xor	a3,a3,t2
	xor	a4,a4,a0
	xor	a2,a2,s3
	xor	a3,a3,s2
	xor	a4,a4,s1
	slliw	s0,a2,1
	slliw	t2,a3,1
	slliw	a0,a4,1
	srliw	a2,a2,31
	srliw	a3,a3,31
	srliw	a4,a4,31
	or	s0,s0,a2
	or	t2,t2,a3
	or	a0,a0,a4
	sext.w	s0,s0
	sext.w	t2,t2
	sext.w	a0,a0
	sw	s0,64(a5)
	sw	t2,68(a5)
	sw	a0,72(a5)
	addiw	a6,a6,3
	sext.w	s3,t3
	sext.w	s2,t1
	sext.w	s1,a7
	addi	a5,a5,12
	bne	a6,t0,.L6
	addi	a4,a1,316
	addi	a1,a1,320
.L5:
	lw	a5,-12(a4)
	lw	a0,-32(a4)
	lw	a2,-56(a4)
	lw	a3,-64(a4)
	xor	a5,a5,a0
	xor	a5,a5,a2
	xor	a5,a5,a3
	slliw	a3,a5,1
	srliw	a5,a5,31
	or	a5,a3,a5
	sw	a5,0(a4)
	addi	a4,a4,4
	bne	a4,a1,.L5
	ld	s0,24(sp)
	.cfi_remember_state
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
.L2:
	.cfi_restore_state
	lw	a5,0(a0)
	sw	a5,0(a1)
	lw	a5,4(a0)
	sw	a5,4(a1)
	lw	a5,8(a0)
	sw	a5,8(a1)
	lw	a5,12(a0)
	sw	a5,12(a1)
	lw	a5,16(a0)
	sw	a5,16(a1)
	lw	a5,20(a0)
	sw	a5,20(a1)
	lw	a5,24(a0)
	sw	a5,24(a1)
	lw	a5,28(a0)
	sw	a5,28(a1)
	lw	a5,32(a0)
	sw	a5,32(a1)
	lw	a5,36(a0)
	sw	a5,36(a1)
	lw	a5,40(a0)
	sw	a5,40(a1)
	lw	a5,44(a0)
	sw	a5,44(a1)
	lw	a5,48(a0)
	sw	a5,48(a1)
	lw	a5,52(a0)
	sw	a5,52(a1)
	lw	a5,56(a0)
	sw	a5,56(a1)
	lw	a5,60(a0)
	sw	a5,60(a1)
	j	.L3
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
