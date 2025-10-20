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
	addi	sp,sp,-384
	.cfi_def_cfa_offset 384
	addi	a6,sp,8
	sd	s1,360(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	sd	s0,368(sp)
	ld	a5, 0(s1)
	sd	a5, 264(sp)
	li	a5, 0
	.cfi_offset 8, -16
	mv	s0,a0
	li	a2,64
	mv	a0,a6
	sd	s3,344(sp)
	sd	ra,376(sp)
	sd	s2,352(sp)
	sd	s4,336(sp)
	sd	s5,328(sp)
	sd	s6,320(sp)
	sd	s7,312(sp)
	sd	s8,304(sp)
	sd	s9,296(sp)
	sd	s10,288(sp)
	sd	s11,280(sp)
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	memcpy@plt
	mv	a6,a0
	mv	s3,a0
	mv	a5,a6
	addi	a0,sp,200
.L2:
	lw	a4,4(a5)
	lw	a2,56(a5)
	slliw	a1,a4,25
	srliw	a3,a4,7
	srliw	a7,a4,18
	or	a3,a3,a1
	slliw	a1,a4,14
	or	a1,a1,a7
	xor	a3,a3,a1
	srliw	a4,a4,3
	lw	a1,0(a5)
	xor	a3,a3,a4
	lw	a4,36(a5)
	srliw	a7,a2,19
	addi	a5,a5,4
	addw	a4,a4,a1
	addw	a4,a4,a3
	srliw	a1,a2,17
	slliw	a3,a2,15
	or	a3,a3,a1
	slliw	a1,a2,13
	or	a1,a1,a7
	xor	a3,a3,a1
	srliw	a2,a2,10
	xor	a3,a3,a2
	addw	a4,a4,a3
	sw	a4,60(a5)
	bne	a5,a0,.L2
	lw	s2,0(s0)
	lw	t2,4(s0)
	lw	t0,8(s0)
	lw	t6,12(s0)
	lw	t5,16(s0)
	lw	t4,20(s0)
	lw	t3,24(s0)
	lw	a7,28(s0)
	li	s4,1116352512
	addi	a0,a6,256
	mv	s7,a7
	mv	t1,t3
	mv	a1,t4
	mv	a5,t5
	mv	s5,t6
	mv	a6,t0
	mv	a2,t2
	mv	a3,s2
	addiw	s4,s4,-104
.L3:
	slliw	a4,a5,26
	srliw	s6,a5,6
	slliw	s8,a5,21
	or	s6,s6,a4
	srliw	a4,a5,11
	or	a4,a4,s8
	xor	s6,s6,a4
	srliw	s8,a5,25
	slliw	a4,a5,7
	or	a4,a4,s8
	xor	s6,s6,a4
	lw	a4,0(s3)
	and	s8,a5,a1
	addi	s3,s3,4
	addw	a4,s4,a4
	addw	a4,a4,s6
	not	s6,a5
	and	s6,s6,t1
	xor	s6,s6,s8
	addw	a4,a4,s6
	addw	s6,a4,s7
	slliw	s7,a3,30
	srliw	a4,a3,2
	slliw	s8,a3,19
	or	a4,a4,s7
	srliw	s7,a3,13
	or	s7,s7,s8
	xor	a4,a4,s7
	srliw	s8,a3,22
	slliw	s7,a3,10
	or	s7,s7,s8
	xor	a4,a4,s7
	xor	s7,a2,a6
	and	s7,a3,s7
	and	s8,a2,a6
	xor	s7,s7,s8
	addw	a4,a4,s7
	sext.w	a5,a5
	sext.w	a3,a3
	addw	s9,s6,s5
	addw	s11,s6,a4
	sext.w	s10,a3
	sext.w	a2,a2
	sext.w	s5,a6
	sext.w	s6,a5
	sext.w	a1,a1
	sext.w	s7,t1
	bne	a0,s3,.L5
	addw	t4,t4,a5
	addw	s2,s2,s11
	addw	t2,t2,a3
	addw	t0,t0,a2
	addw	t6,t6,a6
	addw	t5,t5,s9
	addw	t3,t3,a1
	addw	a7,a7,t1
	sw	s2,0(s0)
	sw	t2,4(s0)
	sw	t0,8(s0)
	sw	t6,12(s0)
	sw	t5,16(s0)
	sw	t4,20(s0)
	sw	t3,24(s0)
	sw	a7,28(s0)
	ld	a4, 264(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L4
	call	__stack_chk_fail@plt
.L5:
	mv	t1,a1
	mv	a6,a2
	mv	a1,s6
	mv	a5,s9
	mv	a2,s10
	mv	a3,s11
	j	.L3
.L4:
	ld	ra,376(sp)
	.cfi_restore 1
	ld	s0,368(sp)
	.cfi_restore 8
	ld	s1,360(sp)
	.cfi_restore 9
	ld	s2,352(sp)
	.cfi_restore 18
	ld	s3,344(sp)
	.cfi_restore 19
	ld	s4,336(sp)
	.cfi_restore 20
	ld	s5,328(sp)
	.cfi_restore 21
	ld	s6,320(sp)
	.cfi_restore 22
	ld	s7,312(sp)
	.cfi_restore 23
	ld	s8,304(sp)
	.cfi_restore 24
	ld	s9,296(sp)
	.cfi_restore 25
	ld	s10,288(sp)
	.cfi_restore 26
	ld	s11,280(sp)
	.cfi_restore 27
	addi	sp,sp,384
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
