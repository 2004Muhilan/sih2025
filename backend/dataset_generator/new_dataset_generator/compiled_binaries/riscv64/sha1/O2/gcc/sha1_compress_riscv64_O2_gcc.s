	.file	"sha1_compress.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_compress
	.type	sha1_compress, @function
sha1_compress:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-448
	.cfi_def_cfa_offset 448
	addi	a7,sp,8
	sd	s1,424(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	sd	s0,432(sp)
	li	a2,64
	.cfi_offset 8, -16
	mv	s0,a0
	ld	a5, 0(s1)
	sd	a5, 328(sp)
	li	a5, 0
	mv	a0,a7
	sd	ra,440(sp)
	sd	s2,416(sp)
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
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	memcpy@plt
	mv	a7,a0
	lw	t5,60(sp)
	lw	t4,64(sp)
	lw	a4,68(sp)
	lw	t3,16(sp)
	lw	t1,20(sp)
	lw	a6,24(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	lw	t6,36(sp)
	addi	t2,sp,264
	mv	a3,a7
	j	.L2
.L11:
	mv	t6,a2
.L2:
	lw	a2,32(a3)
	lw	a5,0(a3)
	sext.w	t0,a4
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
	sext.w	t4,t0
	sext.w	t1,a6
	sext.w	a6,a0
	sext.w	a0,a1
	sext.w	a1,t6
	bne	a3,t2,.L11
	lw	s7,0(s0)
	lw	s5,4(s0)
	lw	s6,8(s0)
	lw	s4,12(s0)
	lw	s3,16(s0)
	li	t2,-899497984
	li	t0,-1894006784
	li	t5,1859776512
	li	a0,1518501888
	li	a3,0
	li	t3,19
	mv	t1,s3
	mv	a1,s4
	mv	a6,s6
	mv	s8,s5
	mv	a2,s7
	li	t4,39
	li	t6,59
	addiw	t2,t2,470
	li	s2,80
	addi	t0,t0,-804
	addi	t5,t5,-1119
	addi	a0,a0,-1639
	ble	a3,t3,.L15
.L3:
	bgt	a3,t4,.L5
	xor	a4,a1,a6
	xor	a4,a4,s8
	sext.w	a4,a4
	mv	s10,t5
.L4:
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
.L9:
	mv	t1,a1
	mv	s8,a2
	mv	a1,a6
	mv	a2,a5
	mv	a6,a4
	bgt	a3,t3,.L3
.L15:
	xor	a4,a1,a6
	and	a4,a4,s8
	xor	a4,a1,a4
	sext.w	a4,a4
	mv	s10,a0
	j	.L4
.L5:
	bgt	a3,t6,.L6
	or	a4,a1,a6
	and	a4,a4,s8
	and	a5,a1,a6
	or	a4,a4,a5
	sext.w	a4,a4
	mv	s10,t0
	j	.L4
.L6:
	lw	a5,0(a7)
	slliw	a4,a2,5
	srliw	s9,a2,27
	or	a4,a4,s9
	addw	a5,a5,a4
	xor	a4,a1,a6
	xor	a4,a4,s8
	addw	a5,a5,t2
	addw	a5,a5,a4
	srliw	a4,s8,2
	slliw	s8,s8,30
	or	a4,a4,s8
	addiw	a3,a3,1
	addw	a5,a5,t1
	sext.w	a4,a4
	addi	a7,a7,4
	bne	a3,s2,.L9
	addw	t1,a5,s7
	addw	a4,a4,s6
	addw	s5,s5,a2
	addw	s4,s4,a6
	addw	s3,s3,a1
	sw	a4,8(s0)
	sw	t1,0(s0)
	sw	s5,4(s0)
	sw	s4,12(s0)
	sw	s3,16(s0)
	ld	a4, 328(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L16
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
.L16:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
