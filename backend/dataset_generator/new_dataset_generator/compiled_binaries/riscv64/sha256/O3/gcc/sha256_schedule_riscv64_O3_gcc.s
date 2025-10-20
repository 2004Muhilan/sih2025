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
	lw	t0,36(a1)
	lw	t6,40(a1)
	lw	t5,44(a1)
	lw	t4,48(a1)
	lw	t3,52(a1)
	lw	a2,56(a1)
	lw	t1,60(a1)
	lw	a3,0(a1)
	addi	a0,a1,4
	addi	a1,a1,196
.L4:
	sext.w	t2,a3
	lw	a3,0(a0)
	srliw	s0,a2,19
	slliw	a4,a2,15
	srliw	s1,a2,17
	slliw	a6,a2,13
	srliw	a5,a3,7
	slliw	s3,a3,25
	slliw	a7,a3,14
	srliw	s2,a3,18
	or	a7,a7,s2
	or	a6,a6,s0
	or	a5,a5,s3
	or	a4,a4,s1
	srliw	s0,a2,10
	xor	a5,a5,a7
	xor	a4,a4,a6
	srliw	a7,a3,3
	xor	a4,a4,s0
	xor	a5,a5,a7
	addw	a5,a5,a4
	addw	a5,a5,t2
	addw	a5,a5,t0
	sext.w	a4,t1
	sw	a5,60(a0)
	addi	a0,a0,4
	sext.w	t0,t6
	sext.w	t1,a5
	sext.w	t6,t5
	sext.w	t5,t4
	sext.w	t4,t3
	sext.w	t3,a2
	sext.w	a2,a4
	bne	a1,a0,.L4
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
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
