	.arch armv8-a
	.file	"base64_no_padding.c"
	.text
	.section	.rodata
	.align	3
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
	.align	2
	.global	base64_encode_no_padding
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	xzr, [sp, 48]
	str	xzr, [sp, 56]
	b	.L2
.L7:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 16
	str	w0, [sp, 44]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bls	.L3
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 8
	ldr	w1, [sp, 44]
	orr	w0, w1, w0
	str	w0, [sp, 44]
.L3:
	ldr	x0, [sp, 56]
	add	x0, x0, 2
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bls	.L4
	ldr	x0, [sp, 56]
	add	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 44]
	orr	w0, w0, w1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	lsr	w0, w0, 18
	and	w3, w0, 63
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64
	add	x2, x1, :lo12:b64
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 12
	and	w3, w0, 63
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64
	add	x2, x1, :lo12:b64
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bls	.L5
	ldr	w0, [sp, 44]
	lsr	w0, w0, 6
	and	w3, w0, 63
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64
	add	x2, x1, :lo12:b64
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
.L5:
	ldr	x0, [sp, 56]
	add	x0, x0, 2
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bls	.L6
	ldr	w0, [sp, 44]
	and	w3, w0, 63
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64
	add	x2, x1, :lo12:b64
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
.L6:
	ldr	x0, [sp, 56]
	add	x0, x0, 3
	str	x0, [sp, 56]
.L2:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L7
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
