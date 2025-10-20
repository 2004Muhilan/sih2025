	.arch armv8-a
	.file	"base64_no_padding.c"
	.text
	.align	2
	.p2align 4,,11
	.global	base64_encode_no_padding
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	cbz	x1, .L2
	adrp	x9, .LANCHOR0
	mov	x4, 1
	add	x9, x9, :lo12:.LANCHOR0
	sub	x13, x0, #1
	add	x14, x0, x4
	mov	x6, 2
	mov	x5, 0
	b	.L7
	.p2align 2,,3
.L15:
	ubfx	x7, x3, 6, 6
	add	x5, x5, 3
	ldrb	w7, [x9, w7, uxtw]
	strb	w7, [x2, x12]
.L5:
	cmp	x1, x6
	bls	.L6
	and	w3, w3, 63
	ldrb	w3, [x9, w3, uxtw]
	strb	w3, [x2, x5]
	add	x5, x5, 1
.L6:
	add	x3, x4, 2
	add	x6, x6, 3
	add	x4, x4, 3
	cmp	x1, x3
	bls	.L14
.L7:
	ldrb	w3, [x13, x4]
	lsl	w3, w3, 16
	cmp	x1, x4
	bls	.L3
	ldrb	w7, [x0, x4]
	orr	w3, w3, w7, lsl 8
.L3:
	cmp	x1, x6
	bls	.L4
	ldrb	w7, [x14, x4]
	orr	w3, w3, w7
.L4:
	lsr	w8, w3, 18
	ubfx	x11, x3, 12, 6
	add	x7, x2, x5
	add	x12, x5, 2
	ldrb	w10, [x9, w8, uxtw]
	ldrb	w8, [x9, w11, uxtw]
	strb	w10, [x2, x5]
	strb	w8, [x7, 1]
	cmp	x1, x4
	bhi	.L15
	mov	x5, x12
	b	.L5
	.p2align 2,,3
.L14:
	add	x2, x2, x5
.L2:
	strb	wzr, [x2]
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.align	4
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
