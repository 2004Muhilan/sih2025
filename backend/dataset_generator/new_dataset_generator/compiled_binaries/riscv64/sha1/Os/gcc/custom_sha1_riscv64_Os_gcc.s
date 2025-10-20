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
	lw	t4,0(a0)
	lw	t3,4(a0)
	lw	t1,8(a0)
	lw	a7,12(a0)
	lw	a6,16(a0)
	la	t5,__stack_chk_guard
	addi	t6,sp,8
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
	sd	s10,336(sp)
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
	.cfi_offset 26, -96
	ld	a5, 0(t5)
	sd	a5, 328(sp)
	li	a5, 0
	addi	a2,a1,64
	mv	a4,t6
.L2:
	lbu	a5,0(a1)
	lbu	a3,1(a1)
	addi	a1,a1,4
	slliw	a5,a5,24
	slliw	a3,a3,16
	or	a5,a5,a3
	lbu	a3,-1(a1)
	or	a5,a5,a3
	lbu	a3,-2(a1)
	slliw	a3,a3,8
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a4,a4,4
	bne	a2,a1,.L2
	addi	a2,t6,256
	mv	a4,t6
.L3:
	lw	a3,32(a4)
	lw	a5,52(a4)
	xor	a5,a5,a3
	lw	a3,8(a4)
	xor	a5,a5,a3
	lw	a3,0(a4)
	addi	a4,a4,4
	xor	a5,a5,a3
	slliw	a3,a5,1
	srliw	a5,a5,31
	or	a5,a3,a5
	sw	a5,60(a4)
	bne	a2,a4,.L3
	li	s0,-899497984
	li	s1,-1894006784
	li	s2,1859776512
	li	s3,1518501888
	mv	s4,a6
	mv	a2,a7
	mv	a4,t1
	mv	a1,t3
	mv	t2,t4
	li	t0,0
	li	s6,19
	li	s7,39
	li	s8,59
	addi	s0,s0,470
	addi	s1,s1,-804
	addi	s2,s2,-1119
	addi	s3,s3,-1639
	li	s5,80
.L8:
	bgt	t0,s6,.L4
	xor	a5,a4,a2
	and	a5,a5,a1
	xor	a5,a2,a5
	sext.w	a5,a5
	mv	s9,s3
.L5:
	srliw	a3,t2,27
	slliw	s10,t2,5
	or	s10,s10,a3
	lw	a3,0(t6)
	addiw	t0,t0,1
	addi	t6,t6,4
	addw	a3,a3,s10
	addw	a5,a3,a5
	srliw	a3,a1,2
	slliw	a1,a1,30
	or	a3,a3,a1
	addw	a5,a5,s9
	addw	s9,a5,s4
	sext.w	a3,a3
	sext.w	a1,t2
	sext.w	a4,a4
	sext.w	s4,a2
	bne	t0,s5,.L10
	addw	a7,a7,a4
	addw	t4,t4,s9
	addw	t3,t3,t2
	addw	t1,t1,a3
	addw	a6,a6,a2
	sw	t4,0(a0)
	sw	t3,4(a0)
	sw	t1,8(a0)
	sw	a7,12(a0)
	sw	a6,16(a0)
	ld	a4, 328(sp)
	ld	a5, 0(t5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L9
	call	__stack_chk_fail@plt
.L10:
	mv	a2,a4
	mv	t2,s9
	mv	a4,a3
	j	.L8
.L4:
	bgt	t0,s7,.L6
	xor	a5,a1,a4
	xor	a5,a5,a2
	sext.w	a5,a5
	mv	s9,s2
	j	.L5
.L6:
	bgt	t0,s8,.L7
	or	a5,a4,a2
	and	a5,a5,a1
	and	a3,a4,a2
	or	a5,a5,a3
	sext.w	a5,a5
	mv	s9,s1
	j	.L5
.L7:
	xor	a5,a1,a4
	xor	a5,a5,a2
	sext.w	a5,a5
	mv	s9,s0
	j	.L5
.L9:
	ld	ra,424(sp)
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
	ld	s10,336(sp)
	.cfi_restore 26
	addi	sp,sp,432
	.cfi_def_cfa_offset 0
	jr	ra
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
