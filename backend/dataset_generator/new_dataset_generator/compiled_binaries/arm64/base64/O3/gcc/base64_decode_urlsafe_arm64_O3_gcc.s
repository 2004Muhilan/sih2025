	.arch armv8-a
	.file	"base64_decode_urlsafe.c"
	.text
	.align	2
	.p2align 4,,11
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
	bls	.L9
	sub	w0, w1, #48
	and	w0, w0, 255
	cmp	w0, 9
	bls	.L10
	cmp	w1, 45
	beq	.L6
	cmp	w1, 95
	mov	w0, 63
	csinv	w0, w0, wzr, eq
.L1:
	ret
	.p2align 2,,3
.L9:
	sub	w0, w1, #71
	ret
	.p2align 2,,3
.L10:
	add	w0, w1, 4
	ret
	.p2align 2,,3
.L6:
	mov	w0, 62
	ret
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.align	2
	.p2align 4,,11
	.global	base64_decode_urlsafe
	.type	base64_decode_urlsafe, %function
base64_decode_urlsafe:
.LFB1:
	.cfi_startproc
	ldrb	w3, [x0]
	mov	x6, 0
	mov	w8, 63
	mov	w7, 255
	cbnz	w3, .L12
	b	.L11
	.p2align 2,,3
.L14:
	cmp	w5, 9
	bls	.L22
	cmp	w3, 45
	beq	.L18
	cmp	w3, 95
	csel	w2, w8, w7, eq
.L13:
	strb	w2, [x1, x6]
	add	x6, x6, 1
	ldrb	w3, [x0, x6]
	cbz	w3, .L11
.L12:
	sub	w2, w3, #65
	sub	w4, w3, #97
	sub	w5, w3, #48
	and	w2, w2, 255
	and	w4, w4, 255
	and	w5, w5, 255
	cmp	w2, 25
	bls	.L13
	cmp	w4, 25
	bhi	.L14
	sub	w3, w3, #71
	and	w2, w3, 255
	strb	w2, [x1, x6]
	add	x6, x6, 1
	ldrb	w3, [x0, x6]
	cbnz	w3, .L12
.L11:
	ret
	.p2align 2,,3
.L22:
	add	w3, w3, 4
	and	w2, w3, 255
	b	.L13
	.p2align 2,,3
.L18:
	mov	w2, 62
	b	.L13
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
