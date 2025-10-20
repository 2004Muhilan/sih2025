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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	li	a5,-1
	.cfi_offset 8, -8
	srli	s0,a0,16
	sd	s1,0(sp)
	.cfi_offset 9, -16
	srli	a5,a5,16
	srli	a2,a0,4
	srli	a3,a0,8
	srli	a4,a0,12
	sd	s0,32(a1)
	ld	s0,8(sp)
	.cfi_restore 8
	and	s1,a0,a5
	and	a2,a2,a5
	and	a3,a3,a5
	and	a4,a4,a5
	srli	t2,a0,20
	srli	t0,a0,24
	srli	t6,a0,28
	srli	t5,a0,32
	srli	t4,a0,36
	srli	t3,a0,40
	srli	t1,a0,44
	srli	a7,a0,48
	srli	a6,a0,52
	srli	a5,a0,56
	srli	a0,a0,60
	sd	s1,0(a1)
	sd	a2,8(a1)
	sd	a3,16(a1)
	sd	a4,24(a1)
	sd	t2,40(a1)
	sd	t0,48(a1)
	sd	t6,56(a1)
	sd	t5,64(a1)
	sd	t4,72(a1)
	sd	t3,80(a1)
	sd	t1,88(a1)
	sd	a7,96(a1)
	sd	a6,104(a1)
	sd	a5,112(a1)
	sd	a0,120(a1)
	ld	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
