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
	addi	sp,sp,-432
	.cfi_def_cfa_offset 432
	sd	s1,408(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	ld	a5, 0(s1)
	sd	a5, 328(sp)
	li	a5, 0
	addi	a5,sp,8
	sd	s0,416(sp)
	li	a2,64
	.cfi_offset 8, -16
	mv	s0,a0
	mv	a0,a5
	sd	ra,424(sp)
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
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	memcpy@plt
	addi	a2,sp,264
	mv	a4,a0
.L2:
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
	bne	a4,a2,.L2
	lw	t6,0(s0)
	lw	t5,4(s0)
	lw	t4,8(s0)
	lw	t3,12(s0)
	lw	t1,16(s0)
	li	t0,-899497984
	li	t2,-1894006784
	li	s2,1859776512
	li	s3,1518501888
	mv	s4,t1
	mv	a2,t3
	mv	a4,t4
	mv	a1,t5
	mv	a7,t6
	li	a6,0
	li	s6,19
	li	s7,39
	li	s8,59
	addi	t0,t0,470
	addi	t2,t2,-804
	addi	s2,s2,-1119
	addi	s3,s3,-1639
	li	s5,80
.L7:
	bgt	a6,s6,.L3
	xor	a5,a4,a2
	and	a5,a5,a1
	xor	a5,a2,a5
	sext.w	a5,a5
	mv	s9,s3
.L4:
	srliw	a3,a7,27
	slliw	s10,a7,5
	or	s10,s10,a3
	lw	a3,0(a0)
	addiw	a6,a6,1
	addi	a0,a0,4
	addw	a3,a3,s10
	addw	a5,a3,a5
	srliw	a3,a1,2
	slliw	a1,a1,30
	or	a3,a3,a1
	addw	a5,a5,s9
	addw	s9,a5,s4
	sext.w	a3,a3
	sext.w	a1,a7
	sext.w	a4,a4
	sext.w	s4,a2
	bne	a6,s5,.L9
	addw	t3,t3,a4
	addw	t6,t6,s9
	addw	t5,t5,a7
	addw	t4,t4,a3
	addw	t1,t1,a2
	sw	t6,0(s0)
	sw	t5,4(s0)
	sw	t4,8(s0)
	sw	t3,12(s0)
	sw	t1,16(s0)
	ld	a4, 328(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L9:
	mv	a2,a4
	mv	a7,s9
	mv	a4,a3
	j	.L7
.L3:
	bgt	a6,s7,.L5
	xor	a5,a1,a4
	xor	a5,a5,a2
	sext.w	a5,a5
	mv	s9,s2
	j	.L4
.L5:
	bgt	a6,s8,.L6
	or	a5,a4,a2
	and	a5,a5,a1
	and	a3,a4,a2
	or	a5,a5,a3
	sext.w	a5,a5
	mv	s9,t2
	j	.L4
.L6:
	xor	a5,a1,a4
	xor	a5,a5,a2
	sext.w	a5,a5
	mv	s9,t0
	j	.L4
.L8:
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
.LFE0:
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
