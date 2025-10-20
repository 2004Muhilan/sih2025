	.arch armv8-a
	.file	"custom_base64.c"
	.text
	.align	2
	.global	base64_encode
	.type	base64_encode, %function
base64_encode:
.LFB0:
	.cfi_startproc
	adrp	x5, .LANCHOR0
	add	x5, x5, :lo12:.LANCHOR0
	mov	x4, 0
.L2:
	cmp	x4, x1
	bcc	.L4
	ret
.L4:
	add	x6, x4, 1
	ldrb	w7, [x0, x4]
	cmp	x1, x6
	bls	.L5
	add	x8, x4, 2
	ldrb	w3, [x0, x6]
	cmp	x1, x8
	bls	.L6
	add	x6, x4, 3
	ldrb	w4, [x0, x8]
.L3:
	add	w4, w4, w7, lsl 16
	add	x2, x2, 4
	add	w3, w4, w3, lsl 8
	ubfx	x4, x3, 18, 8
	ldrb	w4, [x5, x4]
	strb	w4, [x2, -4]
	ubfx	x4, x3, 12, 6
	ldrb	w4, [x5, x4]
	strb	w4, [x2, -3]
	ubfx	x4, x3, 6, 6
	and	x3, x3, 63
	ldrb	w4, [x5, x4]
	ldrb	w3, [x5, x3]
	strb	w4, [x2, -2]
	mov	x4, x6
	strb	w3, [x2, -1]
	b	.L2
.L5:
	mov	w3, 0
.L7:
	mov	w4, 0
	b	.L3
.L6:
	mov	x6, x8
	b	.L7
	.cfi_endproc
.LFE0:
	.size	base64_encode, .-base64_encode
	.align	2
	.global	base64_decode
	.type	base64_decode, %function
base64_decode:
.LFB1:
	.cfi_startproc
	mov	x2, 0
.L9:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	add	x2, x2, 1
	cmp	x2, 4
	bne	.L9
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode, .-base64_decode
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
