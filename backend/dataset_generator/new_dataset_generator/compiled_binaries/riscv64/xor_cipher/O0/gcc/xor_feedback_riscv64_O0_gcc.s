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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sd	a4,-72(s0)
	ld	a5,-72(s0)
	beq	a5,zero,.L2
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	j	.L3
.L2:
	li	a5,0
.L3:
	sb	a5,-27(s0)
	sd	zero,-24(s0)
	j	.L4
.L5:
	ld	a4,-24(s0)
	ld	a5,-64(s0)
	remu	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	lbu	a4,-27(s0)
	xor	a5,a5,a4
	sb	a5,-26(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-40(s0)
	ld	a5,-24(s0)
	add	a5,a3,a5
	lbu	a3,-26(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lbu	a5,-25(s0)
	sb	a5,-27(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L4:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L5
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	1
	.globl	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a5,-64(s0)
	mv	a5,a4
	sb	a5,-49(s0)
	ld	a2,-32(s0)
	ld	a1,-24(s0)
	ld	a0,-64(s0)
	call	memcpy@plt
	addi	a5,s0,-49
	mv	a4,a5
	ld	a3,-48(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-64(s0)
	call	xor_cipher_feedback
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	1
	.globl	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sd	a5,-80(s0)
	mv	a5,a4
	sb	a5,-65(s0)
	lbu	a5,-65(s0)
	sb	a5,-26(s0)
	sd	zero,-24(s0)
	j	.L8
.L9:
	ld	a4,-24(s0)
	ld	a5,-64(s0)
	remu	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	lbu	a4,-26(s0)
	xor	a5,a5,a4
	sb	a5,-25(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-26(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-80(s0)
	ld	a5,-24(s0)
	add	a5,a3,a5
	lbu	a3,-25(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L8:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L9
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
