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
	mv	a5,a0
	mv	a4,a1
	addi	a0,a0,64
	mv	a3,a1
.L2:
	lw	a2,0(a5)
	sw	a2,0(a3)
	addi	a5,a5,4
	addi	a3,a3,4
	bne	a5,a0,.L2
	addi	a2,a1,256
.L3:
	lw	a5,52(a4)
	lw	a3,32(a4)
	xor	a5,a5,a3
	lw	a3,8(a4)
	xor	a5,a5,a3
	lw	a3,0(a4)
	xor	a5,a5,a3
	slliw	a3,a5,1
	srliw	a5,a5,31
	or	a5,a3,a5
	sw	a5,64(a4)
	addi	a4,a4,4
	bne	a4,a2,.L3
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
