	.arch armv8-a
	.file	"base64_encode_standard.c"
	.text
	.align	2
	.global	base64_encode_standard
	.type	base64_encode_standard, %function
base64_encode_standard:
.LFB0:
	.cfi_startproc
	cbz	x1, .L1
	mov	x4, 0
	mov	w8, 0
	adrp	x5, .LANCHOR0
	add	x5, x5, :lo12:.LANCHOR0
	b	.L4
.L5:
	mov	x4, x3
	mov	w3, w8
	mov	w7, w8
.L3:
	add	w6, w7, w6, lsl 16
	add	w3, w6, w3, lsl 8
	lsr	w6, w3, 18
	ldrb	w6, [x5, w6, uxtw]
	strb	w6, [x2]
	ubfx	x6, x3, 12, 6
	ldrb	w6, [x5, w6, uxtw]
	strb	w6, [x2, 1]
	ubfx	x6, x3, 6, 6
	ldrb	w6, [x5, w6, uxtw]
	strb	w6, [x2, 2]
	and	w3, w3, 63
	ldrb	w3, [x5, w3, uxtw]
	strb	w3, [x2, 3]
	add	x2, x2, 4
	cmp	x4, x1
	bcs	.L1
.L4:
	add	x3, x4, 1
	ldrb	w6, [x0, x4]
	cmp	x1, x3
	bls	.L5
	add	x7, x4, 2
	ldrb	w3, [x0, x3]
	cmp	x1, x7
	bls	.L6
	add	x4, x4, 3
	ldrb	w7, [x0, x7]
	b	.L3
.L6:
	mov	x4, x7
	mov	w7, 0
	b	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_standard, .-base64_encode_standard
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
