	.arch armv8-a
	.file	"base64_decode_urlsafe.c"
	.text
	.align	2
	.global	base64_url_char_value
	.type	base64_url_char_value, %function
base64_url_char_value:
.LFB0:
	.cfi_startproc
	and	w0, w0, 255
	sub	w1, w0, #65
	and	w1, w1, 255
	cmp	w1, 25
	bls	.L8
	sub	w1, w0, #97
	and	w1, w1, 255
	cmp	w1, 25
	bls	.L9
	sub	w1, w0, #48
	and	w1, w1, 255
	cmp	w1, 9
	bls	.L10
	cmp	w0, 45
	beq	.L6
	cmp	w0, 95
	mov	w0, 63
	csinv	w0, w0, wzr, eq
	b	.L1
.L8:
	sub	w0, w0, #65
.L1:
	ret
.L9:
	sub	w0, w0, #71
	b	.L1
.L10:
	add	w0, w0, 4
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
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	ldrb	w0, [x0]
	cbz	w0, .L11
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x1
	mov	x19, 0
.L13:
	bl	base64_url_char_value
	strb	w0, [x21, x19]
	add	x19, x19, 1
	ldrb	w0, [x20, x19]
	cbnz	w0, .L13
	ldr	x21, [sp, 32]
	.cfi_restore 21
.L11:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
