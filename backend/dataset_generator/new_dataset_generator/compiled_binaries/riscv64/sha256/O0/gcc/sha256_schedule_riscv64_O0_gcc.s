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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sw	zero,-32(s0)
	j	.L2
.L3:
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L3
	li	a5,16
	sw	a5,-28(s0)
	j	.L4
.L5:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-60
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	srliw	a4,a5,7
	slliw	a5,a5,25
	or	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-60
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slliw	a4,a5,14
	srliw	a5,a5,18
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-60
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	srliw	a5,a5,3
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-8
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slliw	a4,a5,15
	srliw	a5,a5,17
	or	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-8
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	slliw	a4,a5,13
	srliw	a5,a5,19
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-8
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	srliw	a5,a5,10
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-64
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-28
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a3,-20(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,63
	ble	a4,a5,.L5
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
