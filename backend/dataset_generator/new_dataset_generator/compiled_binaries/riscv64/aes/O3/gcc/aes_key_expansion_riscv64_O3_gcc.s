	.file	"aes_key_expansion.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	addi	a4,a0,1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sub	a4,a1,a4
	sd	s0,40(sp)
	sd	s1,32(sp)
	sd	s2,24(sp)
	sd	s3,16(sp)
	sd	s4,8(sp)
	sd	s5,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	sltiu	a4,a4,7
	mv	a5,a1
	bne	a4,zero,.L2
	or	a4,a0,a1
	andi	a4,a4,7
	bne	a4,zero,.L2
	ld	a4,0(a0)
	sd	a4,0(a1)
	ld	a4,8(a0)
	sd	a4,8(a1)
.L3:
	lbu	s3,11(a5)
	lbu	s2,10(a5)
	lbu	s1,9(a5)
	lbu	s0,8(a5)
	lbu	t2,7(a5)
	lbu	t0,6(a5)
	lbu	t6,5(a5)
	lbu	t5,4(a5)
	lbu	t4,3(a5)
	lbu	t3,2(a5)
	lbu	t1,1(a5)
	lbu	a7,0(a5)
	lbu	a2,15(a5)
	lbu	a3,14(a5)
	lbu	a6,13(a5)
	lbu	a4,12(a5)
	lla	a0,.LANCHOR0
	addi	a5,a5,16
	lla	s5,.LANCHOR0+10
.L4:
	lbu	a1,0(a0)
	mv	s4,a4
	xor	t1,a3,t1
	xor	a1,a6,a1
	xor	t3,a2,t3
	xor	t4,a4,t4
	xor	t6,a3,t6
	xor	t0,a2,t0
	xor	t2,a4,t2
	xor	s1,s1,a3
	xor	s2,s2,a2
	xor	s3,a4,s3
	xor	a6,a6,a3
	xor	a7,a1,a7
	xor	a3,a3,a2
	xor	t5,a1,t5
	xor	s0,a1,s0
	xor	a4,a1,a4
	xor	a2,s4,a2
	sb	a7,0(a5)
	sb	t1,1(a5)
	sb	t3,2(a5)
	sb	t4,3(a5)
	sb	t5,4(a5)
	sb	t6,5(a5)
	sb	t0,6(a5)
	sb	t2,7(a5)
	sb	s0,8(a5)
	sb	s1,9(a5)
	sb	s2,10(a5)
	sb	s3,11(a5)
	sb	a4,12(a5)
	sb	a6,13(a5)
	sb	a3,14(a5)
	sb	a2,15(a5)
	addi	a0,a0,1
	addi	a5,a5,16
	bne	s5,a0,.L4
	ld	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,32(sp)
	.cfi_restore 9
	ld	s2,24(sp)
	.cfi_restore 18
	ld	s3,16(sp)
	.cfi_restore 19
	ld	s4,8(sp)
	.cfi_restore 20
	ld	s5,0(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L2:
	.cfi_restore_state
	lbu	a4,0(a0)
	sb	a4,0(a5)
	lbu	a4,1(a0)
	sb	a4,1(a5)
	lbu	a4,2(a0)
	sb	a4,2(a5)
	lbu	a4,3(a0)
	sb	a4,3(a5)
	lbu	a4,4(a0)
	sb	a4,4(a5)
	lbu	a4,5(a0)
	sb	a4,5(a5)
	lbu	a4,6(a0)
	sb	a4,6(a5)
	lbu	a4,7(a0)
	sb	a4,7(a5)
	lbu	a4,8(a0)
	sb	a4,8(a5)
	lbu	a4,9(a0)
	sb	a4,9(a5)
	lbu	a4,10(a0)
	sb	a4,10(a5)
	lbu	a4,11(a0)
	sb	a4,11(a5)
	lbu	a4,12(a0)
	sb	a4,12(a5)
	lbu	a4,13(a0)
	sb	a4,13(a5)
	lbu	a4,14(a0)
	sb	a4,14(a5)
	lbu	a4,15(a0)
	sb	a4,15(a5)
	j	.L3
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
