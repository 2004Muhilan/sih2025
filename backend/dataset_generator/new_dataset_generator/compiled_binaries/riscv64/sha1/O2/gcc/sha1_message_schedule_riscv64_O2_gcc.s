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
	mv	a3,a1
	addi	a2,a0,64
	mv	a5,a1
.L2:
	lw	a4,0(a0)
	addi	a0,a0,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a0,a2,.L2
	lw	t5,52(a1)
	lw	t4,56(a1)
	lw	a4,60(a1)
	lw	t3,8(a1)
	lw	t1,12(a1)
	lw	a7,16(a1)
	lw	a6,20(a1)
	lw	a0,24(a1)
	lw	t6,28(a1)
	addi	t0,a1,256
	j	.L3
.L4:
	mv	t6,a2
.L3:
	lw	a2,32(a3)
	lw	a5,0(a3)
	sext.w	a1,a4
	addi	a3,a3,4
	xor	a5,a5,a2
	xor	a5,a5,t5
	xor	a5,a5,t3
	slliw	a4,a5,1
	srliw	a5,a5,31
	or	a4,a4,a5
	sext.w	a4,a4
	sw	a4,60(a3)
	sext.w	t5,t4
	sext.w	t3,t1
	sext.w	t4,a1
	sext.w	t1,a7
	sext.w	a7,a6
	sext.w	a6,a0
	sext.w	a0,t6
	bne	a3,t0,.L4
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
