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
	li	a5,0
	li	a4,64
.L2:
	add	a3,a0,a5
	lw	a2,0(a3)
	add	a3,a1,a5
	addi	a5,a5,4
	sw	a2,0(a3)
	bne	a5,a4,.L2
	addi	a3,a1,256
.L3:
	lw	a4,32(a1)
	lw	a5,52(a1)
	xor	a5,a5,a4
	lw	a4,8(a1)
	xor	a5,a5,a4
	lw	a4,0(a1)
	addi	a1,a1,4
	xor	a5,a5,a4
	slliw	a4,a5,1
	srliw	a5,a5,31
	or	a5,a4,a5
	sw	a5,60(a1)
	bne	a3,a1,.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
