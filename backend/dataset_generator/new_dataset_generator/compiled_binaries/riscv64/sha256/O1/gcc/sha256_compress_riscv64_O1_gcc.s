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
	addi	sp,sp,-368
	.cfi_def_cfa_offset 368
	sd	ra,360(sp)
	sd	s0,352(sp)
	sd	s1,344(sp)
	sd	s2,336(sp)
	sd	s3,328(sp)
	sd	s4,320(sp)
	sd	s5,312(sp)
	sd	s6,304(sp)
	sd	s7,296(sp)
	sd	s8,288(sp)
	sd	s9,280(sp)
	sd	s10,272(sp)
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
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 264(sp)
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
	addi	t1,a7,192
	mv	a5,a7
.L3:
	lw	a4,4(a5)
	lw	a2,56(a5)
	srliw	a3,a4,7
	slliw	a1,a4,25
	or	a3,a3,a1
	slliw	a1,a4,14
	srliw	a6,a4,18
	or	a1,a1,a6
	xor	a3,a3,a1
	srliw	a4,a4,3
	xor	a3,a3,a4
	lw	a1,0(a5)
	lw	a4,36(a5)
	addw	a4,a4,a1
	addw	a4,a4,a3
	slliw	a3,a2,15
	srliw	a1,a2,17
	or	a3,a3,a1
	slliw	a1,a2,13
	srliw	a6,a2,19
	or	a1,a1,a6
	xor	a3,a3,a1
	srliw	a2,a2,10
	xor	a3,a3,a2
	addw	a4,a4,a3
	sw	a4,64(a5)
	addi	a5,a5,4
	bne	a5,t1,.L3
	lw	s5,0(a0)
	lw	s4,4(a0)
	lw	s3,8(a0)
	lw	s2,12(a0)
	lw	s1,16(a0)
	lw	s0,20(a0)
	lw	t2,24(a0)
	lw	t0,28(a0)
	addi	t6,a7,256
	mv	s6,t0
	mv	t3,t2
	mv	a6,s0
	mv	a3,s1
	mv	t4,s2
	mv	t1,s3
	mv	a1,s4
	mv	a2,s5
	li	t5,1116352512
	addiw	t5,t5,-104
	j	.L4
.L6:
	mv	t3,a6
	mv	a6,a4
	mv	a3,s9
	mv	t1,a1
	mv	a1,s8
	mv	a2,s10
.L4:
	srliw	a4,a3,6
	slliw	a5,a3,26
	or	a4,a4,a5
	srliw	a5,a3,11
	slliw	s7,a3,21
	or	a5,a5,s7
	xor	a4,a4,a5
	slliw	a5,a3,7
	srliw	s7,a3,25
	or	a5,a5,s7
	xor	a4,a4,a5
	lw	a5,0(a7)
	addw	a5,t5,a5
	addw	a5,a5,a4
	not	a4,a3
	and	a4,a4,t3
	and	s7,a3,a6
	xor	a4,a4,s7
	addw	a5,a5,a4
	addw	a5,a5,s6
	srliw	a4,a2,2
	slliw	s6,a2,30
	or	a4,a4,s6
	srliw	s6,a2,13
	slliw	s7,a2,19
	or	s6,s6,s7
	xor	a4,a4,s6
	slliw	s6,a2,10
	srliw	s7,a2,22
	or	s6,s6,s7
	xor	a4,a4,s6
	xor	s6,a1,t1
	and	s6,a2,s6
	and	s7,a1,t1
	xor	s6,s6,s7
	addw	a4,a4,s6
	sext.w	a3,a3
	addw	s7,a5,t4
	sext.w	s9,s7
	sext.w	a2,a2
	addw	a5,a5,a4
	sext.w	s10,a5
	addi	a7,a7,4
	sext.w	s8,a2
	sext.w	a1,a1
	sext.w	t4,t1
	sext.w	a4,a3
	sext.w	a6,a6
	sext.w	s6,t3
	bne	a7,t6,.L6
	addw	s5,s5,a5
	sw	s5,0(a0)
	addw	s4,s4,a2
	sw	s4,4(a0)
	addw	s3,s3,a1
	sw	s3,8(a0)
	addw	s2,s2,t1
	sw	s2,12(a0)
	addw	s1,s1,s7
	sw	s1,16(a0)
	addw	s0,s0,a3
	sw	s0,20(a0)
	addw	t2,t2,a6
	sw	t2,24(a0)
	addw	t0,t0,t3
	sw	t0,28(a0)
	la	a5,__stack_chk_guard
	ld	a4, 264(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L10
	ld	ra,360(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,352(sp)
	.cfi_restore 8
	ld	s1,344(sp)
	.cfi_restore 9
	ld	s2,336(sp)
	.cfi_restore 18
	ld	s3,328(sp)
	.cfi_restore 19
	ld	s4,320(sp)
	.cfi_restore 20
	ld	s5,312(sp)
	.cfi_restore 21
	ld	s6,304(sp)
	.cfi_restore 22
	ld	s7,296(sp)
	.cfi_restore 23
	ld	s8,288(sp)
	.cfi_restore 24
	ld	s9,280(sp)
	.cfi_restore 25
	ld	s10,272(sp)
	.cfi_restore 26
	addi	sp,sp,368
	.cfi_def_cfa_offset 0
	jr	ra
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
