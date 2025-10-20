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
	mv	a4,a7
	lbu	a7,0(a0)
	remu	a6,a5,a3
	add	a6,a2,a6
	lbu	a6,0(a6)
	xor	a6,a7,a6
	xor	a4,a4,a6
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s1,a1
	mv	s2,a2
	mv	s3,a3
	mv	s0,a5
	sb	a4,15(sp)
	mv	a2,a1
	mv	a1,a0
	mv	a0,a5
	call	memcpy@plt
	addi	a4,sp,15
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	xor_cipher_feedback
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
	addi	sp,sp,64
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
	beq	a1,zero,.L9
	li	a6,0
.L11:
	mv	a7,a4
	add	a4,a0,a6
	lbu	a4,0(a4)
	add	t3,a5,a6
	remu	t1,a6,a3
	add	t1,a2,t1
	lbu	t1,0(t1)
	xor	t1,a4,t1
	xor	a7,a7,t1
	sb	a7,0(t3)
	addi	a6,a6,1
	bne	a1,a6,.L11
.L9:
	ret
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
