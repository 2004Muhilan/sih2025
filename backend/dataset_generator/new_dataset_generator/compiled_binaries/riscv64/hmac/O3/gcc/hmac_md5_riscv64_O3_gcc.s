	.file	"hmac_md5.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_md5
	.type	hmac_md5, @function
hmac_md5:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	la	t5,__stack_chk_guard
	sd	ra,216(sp)
	ld	a5, 0(t5)
	sd	a5, 136(sp)
	li	a5, 0
	addi	a2,sp,8
	addi	a3,sp,72
	li	t4,54
	li	t3,92
	li	a7,64
	.cfi_offset 1, -8
.L5:
	bgeu	a5,a1,.L2
	add	a6,a0,a5
	lbu	a6,0(a6)
	addi	a2,a2,1
	addi	a5,a5,1
	xori	t1,a6,54
	xori	a6,a6,92
	sb	a6,0(a3)
	sb	t1,-1(a2)
	addi	a3,a3,1
	bne	a5,a7,.L5
	andi	a5,a4,7
	bne	a5,zero,.L6
.L12:
	ld	a3,8(sp)
	ld	a5,72(sp)
	xor	a5,a5,a3
	sd	a5,0(a4)
	ld	a3,80(sp)
	ld	a5,16(sp)
	xor	a5,a5,a3
	sd	a5,8(a4)
.L1:
	ld	a4, 136(sp)
	ld	a5, 0(t5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L11
	ld	ra,216(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
.L2:
	.cfi_restore_state
	sb	t4,0(a2)
	sb	t3,0(a3)
	addi	a5,a5,1
	addi	a2,a2,1
	addi	a3,a3,1
	bne	a5,a7,.L5
	andi	a5,a4,7
	beq	a5,zero,.L12
.L6:
	sd	s8,144(sp)
	lbu	t6,72(sp)
	.cfi_offset 24, -80
	lbu	s8,8(sp)
	sd	s0,208(sp)
	sd	s1,200(sp)
	sd	s2,192(sp)
	sd	s3,184(sp)
	sd	s4,176(sp)
	sd	s5,168(sp)
	sd	s6,160(sp)
	sd	s7,152(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	lbu	s6,10(sp)
	lbu	s7,9(sp)
	lbu	s5,75(sp)
	lbu	s4,76(sp)
	lbu	s3,77(sp)
	lbu	s2,78(sp)
	lbu	s1,79(sp)
	lbu	s0,80(sp)
	lbu	t4,73(sp)
	lbu	t3,74(sp)
	lbu	t1,11(sp)
	lbu	a7,12(sp)
	lbu	a6,13(sp)
	lbu	a0,14(sp)
	lbu	a1,15(sp)
	lbu	a2,16(sp)
	lbu	a3,17(sp)
	lbu	t2,81(sp)
	lbu	a5,18(sp)
	lbu	t0,82(sp)
	xor	t6,s8,t6
	xor	t4,s7,t4
	xor	t3,s6,t3
	xor	t1,t1,s5
	xor	a7,a7,s4
	xor	a6,a6,s3
	xor	a0,a0,s2
	xor	a1,a1,s1
	xor	a2,a2,s0
	xor	a3,a3,t2
	xor	a5,a5,t0
	sb	t6,0(a4)
	sb	t4,1(a4)
	sb	t3,2(a4)
	sb	t1,3(a4)
	sb	a7,4(a4)
	sb	a6,5(a4)
	sb	a0,6(a4)
	sb	a1,7(a4)
	sb	a2,8(a4)
	sb	a3,9(a4)
	sb	a5,10(a4)
	lbu	a0,19(sp)
	lbu	t4,83(sp)
	lbu	a1,20(sp)
	lbu	t3,84(sp)
	lbu	a2,21(sp)
	lbu	t1,85(sp)
	lbu	a3,22(sp)
	lbu	a7,86(sp)
	lbu	a5,23(sp)
	lbu	a6,87(sp)
	xor	a0,a0,t4
	xor	a1,a1,t3
	xor	a2,a2,t1
	xor	a3,a3,a7
	xor	a5,a5,a6
	sb	a0,11(a4)
	sb	a1,12(a4)
	sb	a2,13(a4)
	sb	a3,14(a4)
	sb	a5,15(a4)
	ld	s0,208(sp)
	.cfi_restore 8
	ld	s1,200(sp)
	.cfi_restore 9
	ld	s2,192(sp)
	.cfi_restore 18
	ld	s3,184(sp)
	.cfi_restore 19
	ld	s4,176(sp)
	.cfi_restore 20
	ld	s5,168(sp)
	.cfi_restore 21
	ld	s6,160(sp)
	.cfi_restore 22
	ld	s7,152(sp)
	.cfi_restore 23
	ld	s8,144(sp)
	.cfi_restore 24
	j	.L1
.L11:
	sd	s0,208(sp)
	sd	s1,200(sp)
	sd	s2,192(sp)
	sd	s3,184(sp)
	sd	s4,176(sp)
	sd	s5,168(sp)
	sd	s6,160(sp)
	sd	s7,152(sp)
	sd	s8,144(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
