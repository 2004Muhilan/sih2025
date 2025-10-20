	.arch armv8-a
	.file	"base64_decode_urlsafe.c"
	.text
	.align	2
	.global	base64_url_char_value
	.type	base64_url_char_value, %function
base64_url_char_value:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 64
	bls	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 90
	bhi	.L2
	ldrb	w0, [sp, 15]
	sub	w0, w0, #65
	b	.L3
.L2:
	ldrb	w0, [sp, 15]
	cmp	w0, 96
	bls	.L4
	ldrb	w0, [sp, 15]
	cmp	w0, 122
	bhi	.L4
	ldrb	w0, [sp, 15]
	sub	w0, w0, #71
	b	.L3
.L4:
	ldrb	w0, [sp, 15]
	cmp	w0, 47
	bls	.L5
	ldrb	w0, [sp, 15]
	cmp	w0, 57
	bhi	.L5
	ldrb	w0, [sp, 15]
	add	w0, w0, 4
	b	.L3
.L5:
	ldrb	w0, [sp, 15]
	cmp	w0, 45
	bne	.L6
	mov	w0, 62
	b	.L3
.L6:
	ldrb	w0, [sp, 15]
	cmp	w0, 95
	bne	.L7
	mov	w0, 63
	b	.L3
.L7:
	mov	w0, -1
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.align	2
	.global	base64_decode_urlsafe
	.type	base64_decode_urlsafe, %function
base64_decode_urlsafe:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	b	.L9
.L10:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	base64_url_char_value
	mov	w2, w0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	and	w1, w2, 255
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L9:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
