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
	addi	sp,sp,-400
	.cfi_def_cfa_offset 400
	addi	a5,sp,8
	sd	s1,376(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	sd	s0,384(sp)
	li	a2,64
	.cfi_offset 8, -16
	mv	s0,a0
	ld	a4, 0(s1)
	sd	a4, 328(sp)
	li	a4, 0
	mv	a0,a5
	sd	s2,368(sp)
	sd	s3,360(sp)
	sd	s4,352(sp)
	sd	s5,344(sp)
	sd	ra,392(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 1, -8
	call	memcpy@plt
	lw	t2,60(sp)
	lw	s2,64(sp)
	lw	t0,68(sp)
	lw	s5,16(sp)
	lw	s4,20(sp)
	lw	s3,24(sp)
	lw	t1,28(sp)
	lw	a7,32(sp)
	lw	a6,36(sp)
	mv	a5,a0
	li	a1,16
	li	t6,79
	j	.L2
.L11:
	mv	a6,t3
	mv	a7,t4
	mv	t1,t5
.L2:
	lw	t5,32(a5)
	lw	a2,0(a5)
	lw	t4,36(a5)
	lw	a3,4(a5)
	lw	t3,40(a5)
	lw	a4,8(a5)
	xor	a2,a2,t5
	xor	a3,a3,t4
	xor	a4,a4,t3
	xor	a2,a2,t2
	xor	a3,a3,s4
	xor	a4,a4,s3
	xor	a2,a2,s5
	xor	a3,a3,s2
	xor	a4,a4,t0
	slliw	t2,a2,1
	slliw	s2,a3,1
	slliw	t0,a4,1
	srliw	a2,a2,31
	srliw	a3,a3,31
	srliw	a4,a4,31
	or	t2,t2,a2
	or	s2,s2,a3
	or	t0,t0,a4
	sext.w	t2,t2
	sext.w	s2,s2
	sext.w	t0,t0
	sw	t2,64(a5)
	sw	s2,68(a5)
	sw	t0,72(a5)
	addiw	a1,a1,3
	addi	a5,a5,12
	sext.w	s5,t1
	sext.w	s4,a7
	sext.w	s3,a6
	bne	a1,t6,.L11
	lw	a2,312(sp)
	lw	a5,292(sp)
	lw	a3,268(sp)
	lw	a4,260(sp)
	xor	a5,a5,a2
	xor	a5,a5,a3
	xor	a5,a5,a4
	slliw	a4,a5,1
	lw	t6,0(s0)
	lw	t5,4(s0)
	lw	t4,8(s0)
	lw	t3,12(s0)
	lw	t1,16(s0)
	srliw	a5,a5,31
	or	a5,a4,a5
	sw	a5,324(sp)
	li	a2,0
	li	t2,19
	mv	t0,t1
	mv	a6,t3
	mv	a7,t4
	mv	a4,t5
	mv	a1,t6
	ble	a2,t2,.L15
.L3:
	li	a5,39
	bgt	a2,a5,.L5
	xor	a3,a6,a7
	xor	a3,a3,a4
	li	s3,1859776512
	sext.w	a3,a3
	addi	s3,s3,-1119
.L4:
	lw	a5,0(a0)
	slliw	s2,a1,5
	srliw	s4,a1,27
	or	s2,s2,s4
	addw	a5,a5,s2
	addw	a5,a5,s3
	srliw	s2,a4,2
	slliw	a4,a4,30
	addw	a5,a5,a3
	or	a3,s2,a4
	addw	a5,a5,t0
	sext.w	a3,a3
	addiw	a2,a2,1
	addi	a0,a0,4
.L9:
	mv	t0,a6
	mv	a4,a1
	mv	a6,a7
	mv	a1,a5
	mv	a7,a3
	bgt	a2,t2,.L3
.L15:
	xor	a3,a6,a7
	and	a3,a3,a4
	xor	a3,a6,a3
	li	s3,1518501888
	sext.w	a3,a3
	addi	s3,s3,-1639
	j	.L4
.L5:
	li	a5,59
	bgt	a2,a5,.L6
	or	a3,a6,a7
	and	a3,a3,a4
	and	a5,a6,a7
	or	a3,a3,a5
	li	s3,-1894006784
	sext.w	a3,a3
	addi	s3,s3,-804
	j	.L4
.L6:
	lw	a5,0(a0)
	srliw	s2,a1,27
	slliw	a3,a1,5
	or	a3,a3,s2
	li	s2,-899497984
	addw	a5,a5,a3
	addiw	s2,s2,470
	xor	a3,a6,a7
	xor	a3,a3,a4
	addw	a5,a5,s2
	addw	a5,a5,a3
	srliw	a3,a4,2
	slliw	a4,a4,30
	or	a3,a3,a4
	addiw	a2,a2,1
	li	a4,80
	addw	a5,a5,t0
	sext.w	a3,a3
	addi	a0,a0,4
	bne	a2,a4,.L9
	addw	t6,t6,a5
	addw	t5,t5,a1
	addw	t4,t4,a3
	addw	t3,t3,a7
	addw	t1,t1,a6
	sw	t6,0(s0)
	sw	t5,4(s0)
	sw	t4,8(s0)
	sw	t3,12(s0)
	sw	t1,16(s0)
	ld	a4, 328(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L16
	ld	ra,392(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,384(sp)
	.cfi_restore 8
	ld	s1,376(sp)
	.cfi_restore 9
	ld	s2,368(sp)
	.cfi_restore 18
	ld	s3,360(sp)
	.cfi_restore 19
	ld	s4,352(sp)
	.cfi_restore 20
	ld	s5,344(sp)
	.cfi_restore 21
	addi	sp,sp,400
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
