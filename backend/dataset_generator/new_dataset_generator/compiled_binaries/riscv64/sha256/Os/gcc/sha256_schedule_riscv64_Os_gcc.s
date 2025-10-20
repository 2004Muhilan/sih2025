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
	li	a5,0
	li	a4,64
.L2:
	add	a3,a0,a5
	lw	a2,0(a3)
	add	a3,a1,a5
	addi	a5,a5,4
	sw	a2,0(a3)
	bne	a5,a4,.L2
	addi	a0,a1,192
.L3:
	lw	a5,4(a1)
	lw	a3,56(a1)
	slliw	a2,a5,25
	srliw	a4,a5,7
	srliw	a6,a5,18
	or	a4,a4,a2
	slliw	a2,a5,14
	or	a2,a2,a6
	xor	a4,a4,a2
	srliw	a5,a5,3
	lw	a2,0(a1)
	xor	a4,a4,a5
	lw	a5,36(a1)
	srliw	a6,a3,19
	addi	a1,a1,4
	addw	a5,a5,a2
	addw	a5,a5,a4
	srliw	a2,a3,17
	slliw	a4,a3,15
	or	a4,a4,a2
	slliw	a2,a3,13
	or	a2,a2,a6
	xor	a4,a4,a2
	srliw	a3,a3,10
	xor	a4,a4,a3
	addw	a5,a5,a4
	sw	a5,60(a1)
	bne	a0,a1,.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
