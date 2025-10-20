	.file	"xor_feedback.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
.LFB14:
	.cfi_startproc
	li	a7,0
	beq	a4,zero,.L2
	lbu	a7,0(a4)
.L2:
	beq	a1,zero,.L1
	li	a5,0
.L4:
	remu	a6,a5,a3
	mv	a4,a7
	lbu	a7,0(a0)
	addi	a0,a0,1
	addi	a5,a5,1
	add	a6,a2,a6
	lbu	a6,0(a6)
	xor	a6,a7,a6
	xor	a4,a4,a6
	sb	a4,-1(a0)
	bne	a1,a5,.L4
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	1
	.globl	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s1,24(sp)
	.cfi_offset 9, -24
	mv	s1,a1
	sd	s2,16(sp)
	mv	a1,a0
	.cfi_offset 18, -32
	mv	s2,a2
	mv	a0,a5
	mv	a2,s1
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	mv	s3,a3
	mv	s0,a4
	call	memcpy@plt
	beq	s1,zero,.L12
	mv	a5,a0
	li	a0,0
.L14:
	remu	a7,a0,s3
	mv	a6,s0
	lbu	s0,0(a5)
	addi	a5,a5,1
	addi	a0,a0,1
	add	a7,s2,a7
	lbu	a7,0(a7)
	xor	a7,s0,a7
	xor	a6,a6,a7
	sb	a6,-1(a5)
	bne	s1,a0,.L14
.L12:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	1
	.globl	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
.LFB16:
	.cfi_startproc
	beq	a1,zero,.L20
	li	a6,0
.L22:
	remu	t1,a6,a3
	add	t3,a0,a6
	mv	a7,a4
	lbu	a4,0(t3)
	add	t3,a5,a6
	addi	a6,a6,1
	add	t1,a2,t1
	lbu	t1,0(t1)
	xor	t1,a4,t1
	xor	a7,a7,t1
	sb	a7,0(t3)
	bne	a1,a6,.L22
.L20:
	ret
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
