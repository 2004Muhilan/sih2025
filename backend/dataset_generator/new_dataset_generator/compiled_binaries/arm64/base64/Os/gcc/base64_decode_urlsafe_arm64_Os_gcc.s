	.arch armv8-a
	.file	"base64_decode_urlsafe.c"
	.text
	.align	2
	.global	base64_url_char_value
	.type	base64_url_char_value, %function
base64_url_char_value:
.LFB0:
	.cfi_startproc
	and	w1, w0, 255
	sub	w0, w1, #65
	and	w2, w0, 255
	cmp	w2, 25
	bls	.L1
	sub	w0, w1, #97
	and	w0, w0, 255
	cmp	w0, 25
	bhi	.L4
	sub	w0, w1, #71
.L1:
	ret
.L4:
	sub	w0, w1, #48
	and	w0, w0, 255
	cmp	w0, 9
	bhi	.L5
	add	w0, w1, 4
	b	.L1
.L5:
	cmp	w1, 45
	beq	.L6
	cmp	w1, 95
	mov	w0, 63
	csinv	w0, w0, wzr, eq
	b	.L1
.L6:
	mov	w0, 62
	b	.L1
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.align	2
	.global	base64_decode_urlsafe
	.type	base64_decode_urlsafe, %function
base64_decode_urlsafe:
.LFB1:
	.cfi_startproc
	mov	x3, 0
	mov	x4, x0
	mov	x5, x1
	ldrb	w0, [x0, x3]
	cbnz	w0, .L13
	ret
.L13:
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
.L10:
	bl	base64_url_char_value
	strb	w0, [x5, x3]
	add	x3, x3, 1
	ldrb	w0, [x4, x3]
	cbnz	w0, .L10
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
