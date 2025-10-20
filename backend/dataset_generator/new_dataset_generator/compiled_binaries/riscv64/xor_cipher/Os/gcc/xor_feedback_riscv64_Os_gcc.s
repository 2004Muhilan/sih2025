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
	li	a6,0
	beq	a4,zero,.L2
	lbu	a6,0(a4)
.L2:
	li	a5,0
.L3:
	bne	a5,a1,.L4
	ret
.L4:
	remu	a4,a5,a3
	add	t1,a0,a5
	lbu	a7,0(t1)
	addi	a5,a5,1
	add	a4,a2,a4
	lbu	a4,0(a4)
	xor	a4,a7,a4
	xor	a6,a6,a4
	sb	a6,0(t1)
	mv	a6,a7
	j	.L3
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a1
	mv	s1,a2
	mv	a2,a1
	mv	a1,a0
	mv	a0,a5
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a3,0(sp)
	sb	a4,15(sp)
	call	memcpy@plt
	ld	a3,0(sp)
	addi	a4,sp,15
	mv	a2,s1
	mv	a1,s0
	call	xor_cipher_feedback
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
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
	li	a6,0
.L9:
	bne	a6,a1,.L10
	ret
.L10:
	add	a7,a0,a6
	lbu	t1,0(a7)
	remu	a7,a6,a3
	add	t3,a5,a6
	addi	a6,a6,1
	add	a7,a2,a7
	lbu	a7,0(a7)
	xor	a7,t1,a7
	xor	a4,a4,a7
	sb	a4,0(t3)
	mv	a4,t1
	j	.L9
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
