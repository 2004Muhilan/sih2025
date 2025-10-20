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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	sb	zero,-22(s0)
	sw	zero,-20(s0)
	j	.L2
.L5:
	lbu	a5,-34(s0)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L3
	lbu	a5,-22(s0)
	mv	a4,a5
	lbu	a5,-33(s0)
	xor	a5,a4,a5
	sb	a5,-22(s0)
.L3:
	lbu	a5,-33(s0)
	andi	a5,a5,-128
	sb	a5,-21(s0)
	lbu	a5,-33(s0)
	slliw	a5,a5,1
	sb	a5,-33(s0)
	lbu	a5,-21(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L4
	lbu	a5,-33(s0)
	xori	a5,a5,27
	sb	a5,-33(s0)
.L4:
	lbu	a5,-34(s0)
	srliw	a5,a5,1
	sb	a5,-34(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L5
	lbu	a5,-22(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sw	zero,-44(s0)
	j	.L8
.L9:
	lw	a5,-44(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-56(s0)
	add	a5,a5,a4
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sb	a5,-48(s0)
	ld	a5,-40(s0)
	lbu	a5,1(a5)
	sb	a5,-47(s0)
	ld	a5,-40(s0)
	lbu	a5,2(a5)
	sb	a5,-46(s0)
	ld	a5,-40(s0)
	lbu	a5,3(a5)
	sb	a5,-45(s0)
	lbu	a5,-48(s0)
	li	a1,2
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	mv	s1,a5
	lbu	a5,-47(s0)
	li	a1,3
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	xor	a5,s1,a5
	andi	a5,a5,0xff
	lbu	a4,-46(s0)
	xor	a5,a5,a4
	andi	a5,a5,0xff
	lbu	a4,-45(s0)
	xor	a5,a5,a4
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	sb	a4,0(a5)
	lbu	a5,-47(s0)
	li	a1,2
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	mv	a4,a5
	lbu	a5,-48(s0)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	lbu	a5,-46(s0)
	li	a1,3
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	xor	a5,s1,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	addi	a5,a5,1
	lbu	a3,-45(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lbu	a5,-48(s0)
	mv	a4,a5
	lbu	a5,-47(s0)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	lbu	a5,-46(s0)
	li	a1,2
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	xor	a5,s1,a5
	andi	s1,a5,0xff
	lbu	a5,-45(s0)
	li	a1,3
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	mv	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,2
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lbu	a5,-48(s0)
	li	a1,3
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	mv	a4,a5
	lbu	a5,-47(s0)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-46(s0)
	xor	a5,a5,a4
	andi	s1,a5,0xff
	lbu	a5,-45(s0)
	li	a1,2
	mv	a0,a5
	call	gf_mul
	mv	a5,a0
	mv	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,3
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L8:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L9
	nop
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
