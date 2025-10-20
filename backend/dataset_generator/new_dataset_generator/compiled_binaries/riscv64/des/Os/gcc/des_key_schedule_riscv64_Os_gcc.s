	.file	"des_key_schedule.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_key_schedule
	.type	des_key_schedule, @function
des_key_schedule:
.LFB0:
	.cfi_startproc
	li	a3,-1
	li	a5,0
	srli	a3,a3,16
	li	a2,64
.L2:
	srl	a4,a0,a5
	and	a4,a4,a3
	sd	a4,0(a1)
	addiw	a5,a5,4
	addi	a1,a1,8
	bne	a5,a2,.L2
	ret
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
