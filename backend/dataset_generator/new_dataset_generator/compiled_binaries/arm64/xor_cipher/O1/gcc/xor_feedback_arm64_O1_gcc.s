	.arch armv8-a
	.file	"xor_feedback.c"
	.text
	.align	2
	.global	xor_cipher_feedback
	.type	xor_cipher_feedback, %function
xor_cipher_feedback:
.LFB14:
	.cfi_startproc
	mov	w7, 0
	cbz	x4, .L2
	ldrb	w7, [x4]
.L2:
	cbz	x1, .L1
	mov	x4, 0
.L4:
	mov	w5, w7
	ldrb	w7, [x0, x4]
	udiv	x6, x4, x3
	msub	x6, x6, x3, x4
	ldrb	w6, [x2, x6]
	eor	w6, w7, w6
	eor	w5, w5, w6
	strb	w5, [x0, x4]
	add	x4, x4, 1
	cmp	x1, x4
	bne	.L4
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	2
	.global	xor_encrypt_feedback
	.type	xor_encrypt_feedback, %function
xor_encrypt_feedback:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x20, x1
	mov	x21, x2
	mov	x22, x3
	strb	w4, [sp, 63]
	mov	x19, x5
	mov	x2, x1
	mov	x1, x0
	mov	x0, x5
	bl	memcpy
	add	x4, sp, 63
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	xor_cipher_feedback
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	2
	.global	xor_decrypt_feedback
	.type	xor_decrypt_feedback, %function
xor_decrypt_feedback:
.LFB16:
	.cfi_startproc
	and	w4, w4, 255
	cbz	x1, .L9
	mov	x6, 0
.L11:
	mov	w7, w4
	ldrb	w4, [x0, x6]
	udiv	x8, x6, x3
	msub	x8, x8, x3, x6
	ldrb	w8, [x2, x8]
	eor	w8, w4, w8
	eor	w7, w7, w8
	strb	w7, [x5, x6]
	add	x6, x6, 1
	cmp	x1, x6
	bne	.L11
.L9:
	ret
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
