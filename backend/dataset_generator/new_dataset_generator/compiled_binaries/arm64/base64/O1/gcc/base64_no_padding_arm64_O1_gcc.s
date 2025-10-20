	.arch armv8-a
	.file	"base64_no_padding.c"
	.text
	.align	2
	.global	base64_encode_no_padding
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	cbz	x1, .L8
	mov	x7, 2
	mov	x4, 1
	mov	x5, 0
	sub	x11, x0, #1
	add	x12, x0, x4
	adrp	x8, .LANCHOR0
	add	x8, x8, :lo12:.LANCHOR0
	b	.L7
.L3:
	cmp	x1, x7
	bls	.L4
	ldrb	w6, [x12, x4]
	orr	w3, w3, w6
.L4:
	lsr	w6, w3, 18
	ldrb	w6, [x8, w6, uxtw]
	strb	w6, [x2, x5]
	add	x6, x5, 2
	add	x9, x2, x5
	ubfx	x10, x3, 12, 6
	ldrb	w10, [x8, w10, uxtw]
	strb	w10, [x9, 1]
	cmp	x4, x1
	bcs	.L5
	ubfx	x9, x3, 6, 6
	ldrb	w9, [x8, w9, uxtw]
	strb	w9, [x2, x6]
	add	x6, x5, 3
.L5:
	mov	x5, x6
	cmp	x1, x7
	bls	.L6
	add	x5, x6, 1
	and	w3, w3, 63
	ldrb	w3, [x8, w3, uxtw]
	strb	w3, [x2, x6]
.L6:
	add	x3, x4, 3
	add	x7, x7, 3
	add	x4, x4, 2
	cmp	x1, x4
	bls	.L2
	mov	x4, x3
.L7:
	ldrb	w3, [x11, x4]
	lsl	w3, w3, 16
	cmp	x4, x1
	bcs	.L3
	ldrb	w6, [x0, x4]
	orr	w3, w3, w6, lsl 8
	b	.L3
.L8:
	mov	x5, x1
.L2:
	strb	wzr, [x2, x5]
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
