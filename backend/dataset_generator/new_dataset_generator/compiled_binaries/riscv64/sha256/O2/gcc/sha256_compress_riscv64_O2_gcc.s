	.file	"sha256_compress.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha256_compress
	.type	sha256_compress, @function
sha256_compress:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-432
	.cfi_def_cfa_offset 432
	sd	s6,368(sp)
	sd	s10,336(sp)
	.cfi_offset 22, -64
	.cfi_offset 26, -96
	addi	s6,sp,56
	la	s10,__stack_chk_guard
	sd	s2,400(sp)
	li	a2,64
	.cfi_offset 18, -32
	mv	s2,a0
	ld	a5, 0(s10)
	sd	a5, 312(sp)
	li	a5, 0
	mv	a0,s6
	sd	ra,424(sp)
	sd	s0,416(sp)
	sd	s1,408(sp)
	sd	s3,392(sp)
	sd	s4,384(sp)
	sd	s5,376(sp)
	sd	s7,360(sp)
	sd	s8,352(sp)
	sd	s9,344(sp)
	sd	s11,328(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 27, -104
	call	memcpy@plt
	lw	t5,92(sp)
	lw	t4,96(sp)
	lw	t3,100(sp)
	lw	t1,104(sp)
	lw	a7,108(sp)
	lw	a2,112(sp)
	lw	a6,116(sp)
	lw	a3,56(sp)
	addi	a1,sp,60
	mv	t0,s6
	addi	t6,sp,252
.L2:
	sext.w	s0,a3
	lw	a3,0(a1)
	srliw	s1,a2,19
	slliw	a4,a2,15
	srliw	s3,a2,17
	slliw	a0,a2,13
	srliw	a5,a3,7
	slliw	s5,a3,25
	slliw	t2,a3,14
	srliw	s4,a3,18
	or	t2,t2,s4
	or	a0,a0,s1
	or	a5,a5,s5
	or	a4,a4,s3
	srliw	s1,a2,10
	xor	a5,a5,t2
	xor	a4,a4,a0
	srliw	t2,a3,3
	xor	a4,a4,s1
	xor	a5,a5,t2
	addw	a5,a5,a4
	addw	a5,a5,s0
	addw	a5,a5,t5
	sext.w	a4,a6
	sw	a5,60(a1)
	addi	a1,a1,4
	sext.w	t5,t4
	sext.w	a6,a5
	sext.w	t4,t3
	sext.w	t3,t1
	sext.w	t1,a7
	sext.w	a7,a2
	sext.w	a2,a4
	bne	a1,t6,.L2
	lw	s5,0(s2)
	lw	s4,4(s2)
	lw	s3,8(s2)
	lw	s8,12(s2)
	lw	s9,16(s2)
	lw	a0,20(s2)
	lw	t1,24(s2)
	lw	t3,28(s2)
	li	s7,1116352512
	addi	s6,s6,256
	mv	a5,t3
	mv	s0,t1
	mv	t5,a0
	mv	a3,s9
	mv	s1,s8
	mv	t6,s3
	mv	a6,s4
	mv	a2,s5
	addiw	s7,s7,-104
	sd	s5,0(sp)
	sd	s4,8(sp)
	sd	s3,16(sp)
	sd	s8,24(sp)
	sd	s9,32(sp)
	sd	a0,40(sp)
	j	.L3
.L5:
	mv	s0,t5
	mv	t6,a6
	mv	t5,a1
	mv	a3,t2
	mv	a6,a0
	mv	a2,t4
.L3:
	slliw	a1,a3,26
	slliw	a4,a3,21
	lw	a7,0(t0)
	srliw	t2,a3,6
	srliw	a0,a3,11
	srliw	s3,a3,25
	or	a0,a0,a4
	slliw	t4,a3,7
	or	t2,t2,a1
	xor	t2,t2,a0
	not	a4,a3
	srliw	s11,a2,2
	slliw	a1,a2,30
	srliw	s9,a2,13
	slliw	s4,a2,19
	or	t4,t4,s3
	and	s8,a3,t5
	xor	t4,t2,t4
	slliw	s5,a2,10
	srliw	s3,a2,22
	xor	a0,a6,t6
	addw	a7,s7,a7
	and	a4,a4,s0
	or	a1,s11,a1
	or	s4,s9,s4
	and	t2,a6,t6
	and	a0,a2,a0
	addw	a7,a7,t4
	xor	a4,a4,s8
	xor	a1,a1,s4
	or	s3,s5,s3
	xor	a0,a0,t2
	addw	a4,a7,a4
	xor	a1,a1,s3
	addw	a4,a4,a5
	addw	a1,a1,a0
	sext.w	a3,a3
	sext.w	a2,a2
	addi	t0,t0,4
	addw	t2,a4,s1
	addw	t4,a4,a1
	sext.w	a0,a2
	sext.w	a6,a6
	sext.w	s1,t6
	sext.w	a1,a3
	sext.w	t5,t5
	sext.w	a5,s0
	bne	t0,s6,.L5
	ld	s5,0(sp)
	ld	s4,8(sp)
	ld	s3,16(sp)
	ld	s8,24(sp)
	ld	s9,32(sp)
	ld	a0,40(sp)
	addw	s5,s5,t4
	addw	s4,s4,a2
	addw	s3,s3,a6
	addw	s8,s8,t6
	addw	s9,s9,t2
	addw	a0,a0,a3
	addw	t1,t1,t5
	addw	t3,t3,s0
	sw	s5,0(s2)
	sw	s4,4(s2)
	sw	s3,8(s2)
	sw	s8,12(s2)
	sw	s9,16(s2)
	sw	a0,20(s2)
	sw	t1,24(s2)
	sw	t3,28(s2)
	ld	a4, 312(sp)
	ld	a5, 0(s10)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L9
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
	ld	s10,336(sp)
	.cfi_restore 26
	ld	s11,328(sp)
	.cfi_restore 27
	addi	sp,sp,432
	.cfi_def_cfa_offset 0
	jr	ra
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
