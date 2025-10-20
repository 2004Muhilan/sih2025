	.arch armv8-a
	.file	"base64_encode_urlsafe.c"
	.text
	.section	.rodata
	.align	3
	.type	b64url, %object
	.size	b64url, 65
b64url:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.text
	.align	2
	.global	base64_encode_urlsafe
	.type	base64_encode_urlsafe, %function
base64_encode_urlsafe:
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
.L9:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcs	.L3
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	b	.L4
.L3:
	mov	w0, 0
.L4:
	str	w0, [sp, 32]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcs	.L5
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	b	.L6
.L5:
	mov	w0, 0
.L6:
	str	w0, [sp, 36]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcs	.L7
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	str	x1, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	b	.L8
.L7:
	mov	w0, 0
.L8:
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	lsl	w1, w0, 16
	ldr	w0, [sp, 36]
	lsl	w0, w0, 8
	add	w0, w1, w0
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 18
	and	w3, w0, 63
	ldr	x0, [sp, 56]
	add	x1, x0, 1
	str	x1, [sp, 56]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64url
	add	x2, x1, :lo12:b64url
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 12
	and	w3, w0, 63
	ldr	x0, [sp, 56]
	add	x1, x0, 1
	str	x1, [sp, 56]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64url
	add	x2, x1, :lo12:b64url
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 6
	and	w3, w0, 63
	ldr	x0, [sp, 56]
	add	x1, x0, 1
	str	x1, [sp, 56]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64url
	add	x2, x1, :lo12:b64url
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	and	w3, w0, 63
	ldr	x0, [sp, 56]
	add	x1, x0, 1
	str	x1, [sp, 56]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, b64url
	add	x2, x1, :lo12:b64url
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
.L2:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L9
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
