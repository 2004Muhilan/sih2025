	.arch armv8-a
	.file	"base64_no_padding.c"
	.text
	.align	2
	.global	base64_encode_no_padding
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	adrp	x6, .LANCHOR0
	sub	x9, x0, #2
	sub	x10, x0, #1
	add	x6, x6, :lo12:.LANCHOR0
	mov	x4, 2
	mov	x5, 0
.L2:
	sub	x3, x4, #2
	cmp	x1, x3
	bhi	.L7
	strb	wzr, [x2, x5]
	ret
.L7:
	ldrb	w3, [x9, x4]
	sub	x8, x4, #1
	lsl	w3, w3, 16
	cmp	x8, x1
	bcs	.L3
	ldrb	w7, [x10, x4]
	orr	w3, w3, w7, lsl 8
.L3:
	cmp	x1, x4
	bls	.L4
	ldrb	w7, [x0, x4]
	orr	w3, w3, w7
.L4:
	lsr	w7, w3, 18
	ubfx	x12, x3, 12, 6
	add	x11, x2, x5
	ldrb	w7, [x6, x7]
	ldrb	w12, [x6, x12]
	strb	w7, [x2, x5]
	add	x7, x5, 2
	strb	w12, [x11, 1]
	cmp	x8, x1
	bcs	.L5
	ubfx	x8, x3, 6, 6
	ldrb	w8, [x6, x8]
	strb	w8, [x2, x7]
	add	x7, x5, 3
.L5:
	cmp	x1, x4
	bls	.L6
	and	x3, x3, 63
	ldrb	w3, [x6, x3]
	strb	w3, [x2, x7]
	add	x7, x7, 1
.L6:
	add	x4, x4, 3
	mov	x5, x7
	b	.L2
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
