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
	addi	sp,sp,-512
	.cfi_def_cfa_offset 512
	sd	s7,440(sp)
	sd	s8,432(sp)
	sd	s9,424(sp)
	sd	s10,416(sp)
	sd	s11,408(sp)
	sd	ra,504(sp)
	sd	s0,496(sp)
	sd	s1,488(sp)
	sd	s2,480(sp)
	sd	s3,472(sp)
	sd	s4,464(sp)
	sd	s5,456(sp)
	sd	s6,448(sp)
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	lbu	a2,12(a1)
	lbu	s4,13(a1)
	lbu	a5,0(a1)
	lbu	s5,3(a1)
	lbu	t0,1(a1)
	lbu	s1,15(a1)
	lbu	a6,8(a1)
	lbu	s6,9(a1)
	lbu	a3,16(a1)
	lbu	s2,17(a1)
	lbu	t4,14(a1)
	lbu	t1,2(a1)
	lbu	a4,4(a1)
	lbu	t2,5(a1)
	slliw	s4,s4,16
	slliw	a2,a2,24
	slliw	a5,a5,24
	lbu	s3,11(a1)
	lbu	s0,19(a1)
	lbu	t5,10(a1)
	lbu	t3,18(a1)
	or	a2,a2,s4
	or	a5,a5,s5
	slliw	t0,t0,16
	lbu	t6,7(a1)
	or	a5,a5,t0
	lbu	a7,6(a1)
	slliw	s6,s6,16
	slliw	s2,s2,16
	or	a2,a2,s1
	slliw	t4,t4,8
	slliw	t1,t1,8
	slliw	a6,a6,24
	slliw	a3,a3,24
	or	a2,a2,t4
	slliw	t2,t2,16
	or	t4,a5,t1
	or	a6,a6,s6
	or	a3,a3,s2
	slliw	a4,a4,24
	or	a4,a4,t2
	or	a6,a6,s3
	slliw	t5,t5,8
	or	a3,a3,s0
	slliw	t3,t3,8
	sw	t4,72(sp)
	lbu	t4,41(a1)
	or	a4,a4,t6
	or	a6,a6,t5
	or	a3,a3,t3
	slliw	a7,a7,8
	la	s0,__stack_chk_guard
	or	t5,a4,a7
	ld	t6, 0(s0)
	sd	t6, 392(sp)
	li	t6, 0
	sext.w	t3,a6
	sext.w	t1,a2
	sext.w	a7,a3
	lbu	s11,23(a1)
	lbu	s10,27(a1)
	lbu	s9,31(a1)
	lbu	s2,20(a1)
	lbu	s8,21(a1)
	lbu	s1,24(a1)
	lbu	s7,25(a1)
	lbu	s6,28(a1)
	lbu	s0,29(a1)
	lbu	t6,32(a1)
	lbu	s5,33(a1)
	lbu	s4,36(a1)
	lbu	s3,40(a1)
	lbu	t2,22(a1)
	lbu	t0,26(a1)
	sw	t5,76(sp)
	lw	a6,0(a0)
	lbu	t5,37(a1)
	lw	a2,4(a0)
	lw	a3,8(a0)
	lw	a4,12(a0)
	lw	a5,16(a0)
	sw	t3,80(sp)
	sw	t1,84(sp)
	sw	a7,88(sp)
	sw	t4,56(sp)
	lbu	t4,30(a1)
	slliw	s8,s8,16
	slliw	s7,s7,16
	sw	t4,8(sp)
	lbu	t4,35(a1)
	slliw	s2,s2,24
	slliw	s1,s1,24
	sw	t4,16(sp)
	lbu	t4,34(a1)
	or	s2,s2,s8
	or	s1,s1,s7
	sw	t4,24(sp)
	lbu	t4,39(a1)
	or	s2,s2,s11
	or	s1,s1,s10
	sw	t4,32(sp)
	lbu	t4,38(a1)
	slliw	t2,t2,8
	slliw	t0,t0,8
	sw	t4,40(sp)
	lbu	t4,43(a1)
	or	t2,s2,t2
	or	t0,s1,t0
	sw	t4,48(sp)
	lbu	t4,42(a1)
	ld	s2,16(sp)
	lw	s1,24(sp)
	sw	t4,60(sp)
	lw	t4,56(sp)
	slliw	s5,s5,16
	slliw	t6,t6,24
	slliw	s3,s3,24
	or	t6,t6,s5
	slliw	t4,t4,16
	or	t4,s3,t4
	or	t6,t6,s2
	slliw	s3,s1,8
	ld	s2,32(sp)
	lw	s1,40(sp)
	slliw	s4,s4,24
	slliw	t5,t5,16
	or	t5,s4,t5
	slliw	s5,s1,8
	or	t5,t5,s2
	lw	s1,60(sp)
	ld	s2,48(sp)
	slliw	s6,s6,24
	slliw	s0,s0,16
	or	s0,s6,s0
	lw	s6,8(sp)
	slliw	s4,s1,8
	or	t4,t4,s2
	or	t4,t4,s4
	or	s0,s0,s9
	slliw	s6,s6,8
	sw	t4,112(sp)
	lbu	t4,47(a1)
	or	s0,s0,s6
	or	t6,t6,s3
	or	t5,t5,s5
	sext.w	s2,t2
	sext.w	s1,t0
	sext.w	s0,s0
	lbu	t2,44(a1)
	lbu	s6,45(a1)
	sw	t5,108(sp)
	sw	t4,8(sp)
	sw	s2,92(sp)
	sw	s1,96(sp)
	sw	s0,100(sp)
	sw	t6,104(sp)
	lbu	t6,52(a1)
	lbu	s3,54(a1)
	lbu	s4,59(a1)
	lbu	t4,60(a1)
	lbu	s7,61(a1)
	lbu	t5,56(a1)
	lbu	s8,57(a1)
	sw	s3,16(sp)
	sw	s4,24(sp)
	lbu	s3,63(a1)
	slliw	s7,s7,16
	slliw	t4,t4,24
	or	t4,t4,s7
	ld	s7,24(sp)
	lbu	s10,58(a1)
	lbu	t0,48(a1)
	lbu	s5,49(a1)
	slliw	t5,t5,24
	slliw	s8,s8,16
	sw	s3,40(sp)
	or	t5,t5,s8
	lbu	s9,53(a1)
	or	t5,t5,s7
	ld	s7,40(sp)
	sw	s10,32(sp)
	slliw	s6,s6,16
	slliw	s5,s5,16
	slliw	t2,t2,24
	slliw	t0,t0,24
	lbu	s11,55(a1)
	lbu	s4,62(a1)
	or	t2,t2,s6
	or	t0,t0,s5
	lw	s6,32(sp)
	lw	s5,16(sp)
	or	t4,t4,s7
	lbu	s3,46(a1)
	lbu	s10,51(a1)
	ld	s7,8(sp)
	lbu	a1,50(a1)
	slliw	t6,t6,24
	slliw	s9,s9,16
	or	t6,t6,s9
	slliw	s6,s6,8
	or	t6,t6,s11
	slliw	s5,s5,8
	slliw	s4,s4,8
	or	t2,t2,s7
	or	t5,t5,s6
	slliw	s7,a1,8
	slliw	s3,s3,8
	or	a1,t4,s4
	or	t0,t0,s10
	or	t6,t6,s5
	or	t2,t2,s3
	or	t0,t0,s7
	sext.w	t6,t6
	sext.w	t5,t5
	sext.w	a1,a1
	addi	t4,sp,72
	sw	t2,116(sp)
	sw	t0,120(sp)
	sw	t6,124(sp)
	sw	t5,128(sp)
	sw	a1,132(sp)
	mv	t0,t4
	li	t2,16
	li	s6,79
	j	.L2
.L11:
	mv	s0,s5
	mv	s1,s7
	mv	s2,s8
.L2:
	lw	s8,32(t0)
	lw	s9,0(t0)
	lw	s7,36(t0)
	lw	s4,4(t0)
	lw	s5,40(t0)
	lw	s3,8(t0)
	xor	s9,s9,s8
	xor	s4,s4,s7
	xor	s3,s3,s5
	xor	t6,s9,t6
	xor	a7,s3,a7
	xor	t1,s4,t1
	xor	t3,t6,t3
	xor	t1,t1,t5
	xor	a1,a7,a1
	slliw	a7,a1,1
	slliw	t6,t3,1
	slliw	t5,t1,1
	srliw	t3,t3,31
	srliw	t1,t1,31
	srliw	a1,a1,31
	or	t6,t6,t3
	or	t5,t5,t1
	or	a1,a7,a1
	sext.w	t6,t6
	sext.w	t5,t5
	sext.w	a1,a1
	sw	t6,64(t0)
	sw	t5,68(t0)
	sw	a1,72(t0)
	addiw	t2,t2,3
	addi	t0,t0,12
	sext.w	t3,s2
	sext.w	t1,s1
	sext.w	a7,s0
	bne	t2,s6,.L11
	lw	t3,376(sp)
	lw	a1,356(sp)
	lw	t1,332(sp)
	lw	a7,324(sp)
	xor	a1,a1,t3
	xor	a1,a1,t1
	xor	a1,a1,a7
	slliw	a7,a1,1
	srliw	a1,a1,31
	or	a1,a7,a1
	sw	a1,388(sp)
	li	t3,0
	li	s0,19
	mv	t2,a5
	mv	t6,a4
	mv	t0,a3
	mv	a7,a2
	mv	t5,a6
	ble	t3,s0,.L15
.L3:
	li	a1,39
	bgt	t3,a1,.L5
	xor	t1,t6,t0
	xor	t1,t1,a7
	li	s2,1859776512
	sext.w	t1,t1
	addi	s2,s2,-1119
.L4:
	lw	a1,0(t4)
	slliw	s1,t5,5
	srliw	s3,t5,27
	or	s1,s1,s3
	addw	a1,a1,s1
	addw	a1,a1,s2
	srliw	s1,a7,2
	slliw	a7,a7,30
	addw	a1,a1,t1
	or	t1,s1,a7
	addw	a1,a1,t2
	sext.w	t1,t1
	addiw	t3,t3,1
	addi	t4,t4,4
.L9:
	mv	t2,t6
	mv	a7,t5
	mv	t6,t0
	mv	t5,a1
	mv	t0,t1
	bgt	t3,s0,.L3
.L15:
	xor	t1,t6,t0
	and	t1,t1,a7
	xor	t1,t6,t1
	li	s2,1518501888
	sext.w	t1,t1
	addi	s2,s2,-1639
	j	.L4
.L5:
	li	a1,59
	bgt	t3,a1,.L6
	or	t1,t6,t0
	and	t1,t1,a7
	and	a1,t6,t0
	or	t1,t1,a1
	li	s2,-1894006784
	sext.w	t1,t1
	addi	s2,s2,-804
	j	.L4
.L6:
	lw	a1,0(t4)
	srliw	s1,t5,27
	slliw	t1,t5,5
	or	t1,t1,s1
	li	s1,-899497984
	addw	a1,a1,t1
	addiw	s1,s1,470
	xor	t1,t6,t0
	xor	t1,t1,a7
	addw	a1,a1,s1
	addw	a1,a1,t1
	srliw	t1,a7,2
	slliw	a7,a7,30
	or	t1,t1,a7
	addiw	t3,t3,1
	li	a7,80
	addw	a1,a1,t2
	sext.w	t1,t1
	addi	t4,t4,4
	bne	t3,a7,.L9
	addw	a5,a5,t6
	addw	a4,a4,t0
	addw	a6,a6,a1
	addw	a2,a2,t5
	addw	a3,a3,t1
	sw	a5,16(a0)
	la	a5,__stack_chk_guard
	sw	a4,12(a0)
	sw	a6,0(a0)
	sw	a2,4(a0)
	sw	a3,8(a0)
	ld	a4, 392(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L16
	ld	ra,504(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,496(sp)
	.cfi_restore 8
	ld	s1,488(sp)
	.cfi_restore 9
	ld	s2,480(sp)
	.cfi_restore 18
	ld	s3,472(sp)
	.cfi_restore 19
	ld	s4,464(sp)
	.cfi_restore 20
	ld	s5,456(sp)
	.cfi_restore 21
	ld	s6,448(sp)
	.cfi_restore 22
	ld	s7,440(sp)
	.cfi_restore 23
	ld	s8,432(sp)
	.cfi_restore 24
	ld	s9,424(sp)
	.cfi_restore 25
	ld	s10,416(sp)
	.cfi_restore 26
	ld	s11,408(sp)
	.cfi_restore 27
	addi	sp,sp,512
	.cfi_def_cfa_offset 0
	jr	ra
.L16:
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
