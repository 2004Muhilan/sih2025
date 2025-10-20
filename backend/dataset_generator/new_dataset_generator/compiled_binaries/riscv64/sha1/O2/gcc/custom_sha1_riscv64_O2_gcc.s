	.file	"custom_sha1.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-448
	.cfi_def_cfa_offset 448
	sd	s0,432(sp)
	sd	s1,424(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	lw	s0,4(a0)
	lw	s1,0(a0)
	lw	t2,8(a0)
	lw	t0,12(a0)
	lw	t6,16(a0)
	sd	s2,416(sp)
	addi	a7,sp,8
	.cfi_offset 18, -32
	la	s2,__stack_chk_guard
	sd	ra,440(sp)
	sd	s3,408(sp)
	sd	s4,400(sp)
	sd	s5,392(sp)
	sd	s6,384(sp)
	sd	s7,376(sp)
	sd	s8,368(sp)
	sd	s9,360(sp)
	sd	s10,352(sp)
	sd	s11,344(sp)
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	ld	a5, 0(s2)
	sd	a5, 328(sp)
	li	a5, 0
	addi	t1,sp,72
	mv	a4,a7
.L2:
	lbu	a5,0(a1)
	lbu	a2,1(a1)
	lbu	a6,3(a1)
	lbu	a3,2(a1)
	slliw	a5,a5,24
	slliw	a2,a2,16
	or	a5,a5,a2
	or	a5,a5,a6
	slliw	a3,a3,8
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a4,a4,4
	addi	a1,a1,4
	bne	a4,t1,.L2
	lw	s6,60(sp)
	lw	t5,64(sp)
	lw	a4,68(sp)
	lw	t4,16(sp)
	lw	t3,20(sp)
	lw	t1,24(sp)
	lw	a6,28(sp)
	lw	a1,32(sp)
	lw	s4,36(sp)
	addi	s5,a7,256
	mv	a3,a7
	j	.L3
.L12:
	mv	s4,a2
.L3:
	lw	a2,32(a3)
	lw	a5,0(a3)
	sext.w	s3,a4
	addi	a3,a3,4
	xor	a5,a5,a2
	xor	a5,a5,s6
	xor	a5,a5,t4
	slliw	a4,a5,1
	srliw	a5,a5,31
	or	a4,a4,a5
	sext.w	a4,a4
	sw	a4,60(a3)
	sext.w	s6,t5
	sext.w	t4,t3
	sext.w	t5,s3
	sext.w	t3,t1
	sext.w	t1,a6
	sext.w	a6,a1
	sext.w	a1,s4
	bne	s5,a3,.L12
	li	s6,-899497984
	li	s4,-1894006784
	li	t5,1859776512
	li	s5,1518501888
	li	a3,0
	li	t3,19
	mv	t1,t6
	mv	a1,t0
	mv	a6,t2
	mv	s8,s0
	mv	a2,s1
	li	t4,39
	li	s3,59
	addiw	s6,s6,470
	li	s7,80
	addi	s4,s4,-804
	addi	t5,t5,-1119
	addi	s5,s5,-1639
	ble	a3,t3,.L17
.L4:
	bgt	a3,t4,.L6
	xor	a4,a1,a6
	xor	a4,a4,s8
	sext.w	a4,a4
	mv	s10,t5
.L5:
	lw	a5,0(a7)
	slliw	s9,a2,5
	srliw	s11,a2,27
	or	s9,s9,s11
	addw	a5,a5,s9
	addw	a5,a5,s10
	srliw	s9,s8,2
	slliw	s8,s8,30
	addw	a5,a5,a4
	or	a4,s9,s8
	addw	a5,a5,t1
	sext.w	a4,a4
	addiw	a3,a3,1
	addi	a7,a7,4
.L10:
	mv	t1,a1
	mv	s8,a2
	mv	a1,a6
	mv	a2,a5
	mv	a6,a4
	bgt	a3,t3,.L4
.L17:
	xor	a4,a1,a6
	and	a4,a4,s8
	xor	a4,a1,a4
	sext.w	a4,a4
	mv	s10,s5
	j	.L5
.L6:
	bgt	a3,s3,.L7
	or	a4,a1,a6
	and	a4,a4,s8
	and	a5,a1,a6
	or	a4,a4,a5
	sext.w	a4,a4
	mv	s10,s4
	j	.L5
.L7:
	lw	a5,0(a7)
	slliw	a4,a2,5
	srliw	s9,a2,27
	or	a4,a4,s9
	addw	a5,a5,a4
	xor	a4,a1,a6
	xor	a4,a4,s8
	addw	a5,a5,s6
	addw	a5,a5,a4
	srliw	a4,s8,2
	slliw	s8,s8,30
	or	a4,a4,s8
	addiw	a3,a3,1
	addw	a5,a5,t1
	sext.w	a4,a4
	addi	a7,a7,4
	bne	a3,s7,.L10
	addw	s1,s1,a5
	addw	t2,t2,a4
	addw	s0,s0,a2
	addw	t0,t0,a6
	addw	t6,t6,a1
	sw	s1,0(a0)
	sw	s0,4(a0)
	sw	t2,8(a0)
	sw	t0,12(a0)
	sw	t6,16(a0)
	ld	a4, 328(sp)
	ld	a5, 0(s2)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L18
	ld	ra,440(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,432(sp)
	.cfi_restore 8
	ld	s1,424(sp)
	.cfi_restore 9
	ld	s2,416(sp)
	.cfi_restore 18
	ld	s3,408(sp)
	.cfi_restore 19
	ld	s4,400(sp)
	.cfi_restore 20
	ld	s5,392(sp)
	.cfi_restore 21
	ld	s6,384(sp)
	.cfi_restore 22
	ld	s7,376(sp)
	.cfi_restore 23
	ld	s8,368(sp)
	.cfi_restore 24
	ld	s9,360(sp)
	.cfi_restore 25
	ld	s10,352(sp)
	.cfi_restore 26
	ld	s11,344(sp)
	.cfi_restore 27
	addi	sp,sp,448
	.cfi_def_cfa_offset 0
	jr	ra
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE14:
	.size	sha1_transform, .-sha1_transform
	.align	1
	.globl	sha1_init
	.type	sha1_init, @function
sha1_init:
.LFB15:
	.cfi_startproc
	li	a1,1732583424
	li	a2,-271732736
	li	a3,-1732583424
	li	a4,271732736
	li	a5,-1009590272
	addi	a1,a1,769
	addi	a2,a2,-1143
	addi	a3,a3,-770
	addi	a4,a4,1142
	addi	a5,a5,496
	sw	a1,0(a0)
	sw	a2,4(a0)
	sw	a3,8(a0)
	sw	a4,12(a0)
	sw	a5,16(a0)
	ret
	.cfi_endproc
.LFE15:
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
