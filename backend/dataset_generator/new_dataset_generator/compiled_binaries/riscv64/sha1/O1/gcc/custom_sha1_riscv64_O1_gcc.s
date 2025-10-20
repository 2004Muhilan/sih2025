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
	addi	sp,sp,-432
	.cfi_def_cfa_offset 432
	sd	ra,424(sp)
	sd	s0,416(sp)
	sd	s1,408(sp)
	sd	s2,400(sp)
	sd	s3,392(sp)
	sd	s4,384(sp)
	sd	s5,376(sp)
	sd	s6,368(sp)
	sd	s7,360(sp)
	sd	s8,352(sp)
	sd	s9,344(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 328(sp)
	li	a4, 0
	lw	t2,0(a0)
	lw	t0,4(a0)
	lw	t6,8(a0)
	lw	t5,12(a0)
	lw	t4,16(a0)
	addi	a7,sp,8
	addi	a2,sp,72
	mv	a4,a7
.L2:
	lbu	a5,0(a1)
	slliw	a5,a5,24
	lbu	a3,1(a1)
	slliw	a3,a3,16
	or	a5,a5,a3
	lbu	a3,3(a1)
	or	a5,a5,a3
	lbu	a3,2(a1)
	slliw	a3,a3,8
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a1,a1,4
	addi	a4,a4,4
	bne	a4,a2,.L2
	addi	a2,a7,256
	mv	a4,a7
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
	mv	s6,t4
	mv	a1,t5
	mv	a6,t6
	mv	s7,t0
	mv	a2,t2
	li	a3,0
	li	t1,19
	li	t3,39
	li	s1,59
	li	s4,-899497984
	addiw	s4,s4,470
	li	s5,80
	li	s2,-1894006784
	addi	s2,s2,-804
	li	s0,1859776512
	addi	s0,s0,-1119
	li	s3,1518501888
	addi	s3,s3,-1639
	j	.L9
.L16:
	xor	a4,a6,a1
	and	a4,a4,s7
	xor	a4,a1,a4
	sext.w	a4,a4
	mv	s9,s3
	j	.L5
.L6:
	bgt	a3,s1,.L7
	or	a4,a6,a1
	and	a4,a4,s7
	and	a5,a6,a1
	or	a4,a4,a5
	sext.w	a4,a4
	mv	s9,s2
.L5:
	slliw	s8,a2,5
	srliw	a5,a2,27
	or	s8,s8,a5
	lw	a5,0(a7)
	addw	a5,a5,s8
	addw	a5,a5,a4
	addw	a5,a5,s9
	addw	a5,a5,s6
	srliw	a4,s7,2
	slliw	s7,s7,30
	or	a4,a4,s7
	sext.w	a4,a4
	addiw	a3,a3,1
	addi	a7,a7,4
.L10:
	mv	s6,a1
	mv	a1,a6
	mv	a6,a4
	mv	s7,a2
	mv	a2,a5
.L9:
	ble	a3,t1,.L16
	bgt	a3,t3,.L6
	xor	a4,s7,a6
	xor	a4,a4,a1
	sext.w	a4,a4
	mv	s9,s0
	j	.L5
.L7:
	slliw	a4,a2,5
	srliw	a5,a2,27
	or	a4,a4,a5
	lw	a5,0(a7)
	addw	a5,a5,a4
	xor	a4,s7,a6
	xor	a4,a4,a1
	addw	a5,a5,a4
	addw	a5,a5,s4
	addw	s6,a5,s6
	sext.w	a5,s6
	srliw	a4,s7,2
	slliw	s7,s7,30
	or	a4,a4,s7
	sext.w	a4,a4
	addiw	a3,a3,1
	addi	a7,a7,4
	bne	a3,s5,.L10
	addw	t2,t2,s6
	sw	t2,0(a0)
	addw	t0,t0,a2
	sw	t0,4(a0)
	addw	t6,t6,a4
	sw	t6,8(a0)
	addw	t5,t5,a6
	sw	t5,12(a0)
	addw	t4,t4,a1
	sw	t4,16(a0)
	la	a5,__stack_chk_guard
	ld	a4, 328(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L17
	ld	ra,424(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,416(sp)
	.cfi_restore 8
	ld	s1,408(sp)
	.cfi_restore 9
	ld	s2,400(sp)
	.cfi_restore 18
	ld	s3,392(sp)
	.cfi_restore 19
	ld	s4,384(sp)
	.cfi_restore 20
	ld	s5,376(sp)
	.cfi_restore 21
	ld	s6,368(sp)
	.cfi_restore 22
	ld	s7,360(sp)
	.cfi_restore 23
	ld	s8,352(sp)
	.cfi_restore 24
	ld	s9,344(sp)
	.cfi_restore 25
	addi	sp,sp,432
	.cfi_def_cfa_offset 0
	jr	ra
.L17:
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
	li	a5,1732583424
	addi	a5,a5,769
	sw	a5,0(a0)
	li	a5,-271732736
	addi	a5,a5,-1143
	sw	a5,4(a0)
	li	a5,-1732583424
	addi	a5,a5,-770
	sw	a5,8(a0)
	li	a5,271732736
	addi	a5,a5,1142
	sw	a5,12(a0)
	li	a5,-1009590272
	addi	a5,a5,496
	sw	a5,16(a0)
	ret
	.cfi_endproc
.LFE15:
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
