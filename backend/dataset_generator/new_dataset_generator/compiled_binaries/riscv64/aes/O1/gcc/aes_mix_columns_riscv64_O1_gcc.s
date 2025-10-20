	.file	"aes_mix_columns.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	gf_mul, @function
gf_mul:
.LFB0:
	.cfi_startproc
	mv	a4,a0
	li	a3,8
	li	a0,0
	j	.L3
.L2:
	srli	a1,a1,1
	addiw	a3,a3,-1
	beq	a3,zero,.L6
.L3:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	xor	a0,a0,a5
	slliw	a5,a4,1
	andi	a5,a5,0xff
	slliw	a2,a4,24
	sraiw	a2,a2,24
	mv	a4,a5
	bge	a2,zero,.L2
	xori	a4,a5,27
	j	.L2
.L6:
	ret
	.cfi_endproc
.LFE0:
	.size	gf_mul, .-gf_mul
	.align	1
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s0,a0
	addi	s6,a0,16
.L8:
	lbu	s5,0(s0)
	lbu	s3,1(s0)
	lbu	s2,2(s0)
	lbu	s4,3(s0)
	li	a1,2
	mv	a0,s5
	call	gf_mul
	mv	s1,a0
	li	a1,3
	mv	a0,s3
	call	gf_mul
	xor	s1,s1,a0
	xor	s1,s2,s1
	xor	s1,s4,s1
	sb	s1,0(s0)
	li	a1,2
	mv	a0,s3
	call	gf_mul
	mv	s1,a0
	li	a1,3
	mv	a0,s2
	call	gf_mul
	xor	s1,s1,a0
	xor	s1,s5,s1
	xor	s1,s4,s1
	sb	s1,1(s0)
	li	a1,2
	mv	a0,s2
	call	gf_mul
	mv	s1,a0
	li	a1,3
	mv	a0,s4
	call	gf_mul
	xor	s1,s1,a0
	xor	s1,s5,s1
	xor	s1,s3,s1
	sb	s1,2(s0)
	li	a1,3
	mv	a0,s5
	call	gf_mul
	mv	s1,a0
	li	a1,2
	mv	a0,s4
	call	gf_mul
	xor	s1,s1,a0
	xor	s3,s3,s1
	xor	s2,s2,s3
	sb	s2,3(s0)
	addi	s0,s0,4
	bne	s0,s6,.L8
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
