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
	addi	a7,sp,8
	addi	a3,sp,72
	mv	a5,a7
.L2:
	lw	a4,0(a1)
	sw	a4,0(a5)
	addi	a1,a1,4
	addi	a5,a5,4
	bne	a5,a3,.L2
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
	lw	s5,0(a0)
	lw	s4,4(a0)
	lw	s3,8(a0)
	lw	s2,12(a0)
	lw	s1,16(a0)
	mv	s6,s1
	mv	a1,s2
	mv	a6,s3
	mv	s7,s4
	mv	a2,s5
	li	a3,0
	li	t1,19
	li	t3,39
	li	t5,59
	li	t2,-899497984
	addiw	t2,t2,470
	li	s0,80
	li	t6,-1894006784
	addi	t6,t6,-804
	li	t4,1859776512
	addi	t4,t4,-1119
	li	t0,1518501888
	addi	t0,t0,-1639
	j	.L9
.L16:
	xor	a4,a6,a1
	and	a4,a4,s7
	xor	a4,a1,a4
	sext.w	a4,a4
	mv	s9,t0
	j	.L5
.L6:
	bgt	a3,t5,.L7
	or	a4,a6,a1
	and	a4,a4,s7
	and	a5,a6,a1
	or	a4,a4,a5
	sext.w	a4,a4
	mv	s9,t6
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
	mv	s9,t4
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
	addw	a5,a5,t2
	addw	s6,a5,s6
	sext.w	a5,s6
	srliw	a4,s7,2
	slliw	s7,s7,30
	or	a4,a4,s7
	sext.w	a4,a4
	addiw	a3,a3,1
	addi	a7,a7,4
	bne	a3,s0,.L10
	addw	s5,s5,s6
	sw	s5,0(a0)
	addw	s4,s4,a2
	sw	s4,4(a0)
	addw	s3,s3,a4
	sw	s3,8(a0)
	addw	s2,s2,a6
	sw	s2,12(a0)
	addw	s1,s1,a1
	sw	s1,16(a0)
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
.LFE0:
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
