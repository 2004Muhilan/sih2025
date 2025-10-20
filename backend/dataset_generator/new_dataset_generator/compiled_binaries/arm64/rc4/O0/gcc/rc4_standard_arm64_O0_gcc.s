	.arch armv8-a
	.file	"rc4_standard.c"
	.text
	.align	2
	.global	rc4_init
	.type	rc4_init, %function
rc4_init:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	wzr, [sp, 40]
	b	.L2
.L3:
	ldr	w0, [sp, 40]
	and	w2, w0, 255
	ldr	x1, [sp, 24]
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 40]
	cmp	w0, 255
	ble	.L3
	strb	wzr, [sp, 38]
	str	wzr, [sp, 44]
	b	.L4
.L5:
	ldrb	w0, [sp, 38]
	ldr	x2, [sp, 24]
	ldrsw	x1, [sp, 44]
	ldrb	w1, [x2, x1]
	add	w1, w0, w1
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 8]
	udiv	x3, x0, x2
	ldr	x2, [sp, 8]
	mul	x2, x3, x2
	sub	x0, x0, x2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	add	w0, w1, w0
	negs	w1, w0
	and	w0, w0, 255
	and	w1, w1, 255
	csneg	w0, w0, w1, mi
	strb	w0, [sp, 38]
	ldr	x1, [sp, 24]
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 38]
	ldr	x1, [sp, 24]
	sxtw	x0, w0
	ldrb	w2, [x1, x0]
	ldr	x1, [sp, 24]
	ldrsw	x0, [sp, 44]
	strb	w2, [x1, x0]
	ldrb	w0, [sp, 38]
	ldr	x1, [sp, 24]
	sxtw	x0, w0
	ldrb	w2, [sp, 39]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 255
	ble	.L5
	ldr	x0, [sp, 24]
	strb	wzr, [x0, 256]
	ldr	x0, [sp, 24]
	strb	wzr, [x0, 257]
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_init, .-rc4_init
	.align	2
	.global	rc4_crypt
	.type	rc4_crypt, %function
rc4_crypt:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	xzr, [sp, 40]
	b	.L7
.L8:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 256]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 255
	and	w1, w1, 255
	csneg	w0, w0, w1, mi
	and	w1, w0, 255
	ldr	x0, [sp, 24]
	strb	w1, [x0, 256]
	ldr	x0, [sp, 24]
	ldrb	w1, [x0, 257]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 256]
	ldr	x2, [sp, 24]
	sxtw	x0, w0
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 24]
	strb	w1, [x0, 257]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 256]
	ldr	x1, [sp, 24]
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 38]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 257]
	mov	w2, w0
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 256]
	mov	w3, w0
	ldr	x1, [sp, 24]
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	ldr	x1, [sp, 24]
	sxtw	x0, w3
	strb	w2, [x1, x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 257]
	ldr	x1, [sp, 24]
	sxtw	x0, w0
	ldrb	w2, [sp, 38]
	strb	w2, [x1, x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 256]
	ldr	x1, [sp, 24]
	sxtw	x0, w0
	ldrb	w1, [x1, x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 257]
	ldr	x2, [sp, 24]
	sxtw	x0, w0
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w0, w0, 255
	ldr	x1, [sp, 24]
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 39]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [sp, 39]
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L7:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L8
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	rc4_crypt, .-rc4_crypt
	.align	2
	.global	rc4_encrypt
	.type	rc4_encrypt, %function
rc4_encrypt:
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
	add	x0, sp, 48
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	bl	rc4_init
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	bl	memcpy
	add	x0, sp, 48
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 8]
	bl	rc4_crypt
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 312]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.global	rc4_decrypt
	.type	rc4_decrypt, %function
rc4_decrypt:
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
	bl	rc4_encrypt
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
