	.arch armv8-a
	.file	"xor_rotating.c"
	.text
	.align	2
	.type	rotate_left, %function
rotate_left:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	str	w1, [sp, 8]
	ldrb	w1, [sp, 15]
	ldr	w0, [sp, 8]
	lsl	w0, w1, w0
	sxtb	w1, w0
	ldrb	w2, [sp, 15]
	mov	w3, 8
	ldr	w0, [sp, 8]
	sub	w0, w3, w0
	asr	w0, w2, w0
	sxtb	w0, w0
	orr	w0, w1, w0
	sxtb	w0, w0
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rotate_left, .-rotate_left
	.align	2
	.global	xor_cipher_rotating
	.type	xor_cipher_rotating, %function
xor_cipher_rotating:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	xzr, [sp, 72]
	b	.L4
.L5:
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 32]
	udiv	x2, x0, x1
	ldr	x1, [sp, 32]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 71]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	ldrb	w1, [sp, 71]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 32]
	udiv	x2, x0, x1
	ldr	x1, [sp, 32]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 40]
	add	x19, x1, x0
	mov	w1, 1
	ldrb	w0, [sp, 71]
	bl	rotate_left
	and	w0, w0, 255
	strb	w0, [x19]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
.L4:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bcc	.L5
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	2
	.global	xor_encrypt_rotating
	.type	xor_encrypt_rotating, %function
xor_encrypt_rotating:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 312]
	mov	x1, 0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	bl	memcpy
	add	x0, sp, 56
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	bl	memcpy
	add	x0, sp, 56
	ldr	x3, [sp, 16]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 8]
	bl	xor_cipher_rotating
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 312]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	2
	.global	xor_decrypt_rotating
	.type	xor_decrypt_rotating, %function
xor_decrypt_rotating:
.LFB3:
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
	str	x4, [sp, 24]
	ldr	x4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	xor_encrypt_rotating
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
