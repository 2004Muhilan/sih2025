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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s3,40(sp)
	.cfi_offset 19, -40
	la	s3,__stack_chk_guard
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	ld	a5, 0(s3)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,16
.L2:
	add	a3,a0,a5
	lbu	a2,0(a3)
	add	a3,a1,a5
	addi	a5,a5,1
	sb	a2,0(a3)
	bne	a5,a4,.L2
	lla	s1,.LANCHOR0
	addi	s0,a1,16
	li	s2,0
	mv	a6,sp
	li	s4,16
	li	s5,160
.L3:
	mv	a0,a6
	li	a2,4
	addi	a1,s0,-4
	call	memcpy@plt
	lbu	a4,0(sp)
	lbu	a3,2(sp)
	lbu	a5,1(sp)
	addiw	s2,s2,16
	sb	a3,1(sp)
	lbu	a3,3(sp)
	sb	a4,3(sp)
	lbu	a4,0(s1)
	mv	a6,a0
	sb	a3,2(sp)
	xor	a5,a5,a4
	sb	a5,0(sp)
	mv	a4,s0
	li	a5,0
.L4:
	andi	a3,a5,3
	addi	a3,a3,16
	add	a3,a3,sp
	lbu	a2,-16(a4)
	lbu	a3,-16(a3)
	addiw	a5,a5,1
	addi	a4,a4,1
	xor	a3,a3,a2
	sb	a3,-1(a4)
	bne	a5,s4,.L4
	addi	s1,s1,1
	addi	s0,s0,16
	bne	s2,s5,.L3
	ld	a4, 8(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	ld	s5,24(sp)
	.cfi_restore 21
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
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
