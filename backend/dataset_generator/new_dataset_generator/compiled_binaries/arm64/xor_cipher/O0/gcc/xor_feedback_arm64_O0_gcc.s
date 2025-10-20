	.arch armv8-a
	.file	"xor_feedback.c"
	.text
	.align	2
	.global	xor_cipher_feedback
	.type	xor_cipher_feedback, %function
xor_cipher_feedback:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L2
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	b	.L3
.L2:
	mov	w0, 0
.L3:
	strb	w0, [sp, 53]
	str	xzr, [sp, 56]
	b	.L4
.L5:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 16]
	udiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrb	w0, [sp, 53]
	eor	w0, w1, w0
	strb	w0, [sp, 54]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 55]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [sp, 54]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldrb	w0, [sp, 55]
	strb	w0, [sp, 53]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L4:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L5
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	2
	.global	xor_encrypt_feedback
	.type	xor_encrypt_feedback, %function
xor_encrypt_feedback:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 31]
	str	x5, [sp, 16]
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 16]
	bl	memcpy
	add	x0, sp, 31
	mov	x4, x0
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	bl	xor_cipher_feedback
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	2
	.global	xor_decrypt_feedback
	.type	xor_decrypt_feedback, %function
xor_decrypt_feedback:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	strb	w4, [sp, 15]
	str	x5, [sp]
	ldrb	w0, [sp, 15]
	strb	w0, [sp, 54]
	str	xzr, [sp, 56]
	b	.L8
.L9:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 16]
	udiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrb	w0, [sp, 54]
	eor	w0, w1, w0
	strb	w0, [sp, 55]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 54]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x1, [sp]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [sp, 55]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L8:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L9
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
