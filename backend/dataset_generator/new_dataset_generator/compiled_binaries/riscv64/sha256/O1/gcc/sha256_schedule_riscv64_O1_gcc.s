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
	mv	a4,a0
	mv	a5,a1
	addi	a0,a0,64
	mv	a3,a1
.L2:
	lw	a2,0(a4)
	sw	a2,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
	bne	a4,a0,.L2
	addi	a6,a1,192
.L3:
	lw	a4,4(a5)
	lw	a2,56(a5)
	srliw	a3,a4,7
	slliw	a1,a4,25
	or	a3,a3,a1
	slliw	a1,a4,14
	srliw	a0,a4,18
	or	a1,a1,a0
	xor	a3,a3,a1
	srliw	a4,a4,3
	xor	a3,a3,a4
	lw	a1,0(a5)
	lw	a4,36(a5)
	addw	a4,a4,a1
	addw	a4,a4,a3
	slliw	a3,a2,15
	srliw	a1,a2,17
	or	a3,a3,a1
	slliw	a1,a2,13
	srliw	a0,a2,19
	or	a1,a1,a0
	xor	a3,a3,a1
	srliw	a2,a2,10
	xor	a3,a3,a2
	addw	a4,a4,a3
	sw	a4,64(a5)
	addi	a5,a5,4
	bne	a5,a6,.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
