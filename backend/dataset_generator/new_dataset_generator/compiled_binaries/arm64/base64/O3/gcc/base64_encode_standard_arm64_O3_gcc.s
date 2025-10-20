	.arch armv8-a
	.file	"base64_encode_standard.c"
	.text
	.align	2
	.p2align 4,,11
	.global	base64_encode_standard
	.type	base64_encode_standard, %function
base64_encode_standard:
.LFB0:
	.cfi_startproc
	adrp	x5, .LANCHOR0
	mov	x4, 0
	add	x5, x5, :lo12:.LANCHOR0
	cbnz	x1, .L4
	b	.L1
	.p2align 2,,3
.L11:
	ldrb	w7, [x0, x6]
	add	x4, x4, 3
	lsl	w7, w7, 8
	cmp	x1, x8
	bls	.L7
	ldrb	w6, [x0, x8]
.L3:
	add	w6, w6, w7
	add	x2, x2, 4
	add	w3, w6, w3, lsl 16
	and	w6, w3, 63
	lsr	w8, w3, 18
	ubfx	x7, x3, 12, 6
	ubfx	x3, x3, 6, 6
	ldrb	w6, [x5, w6, uxtw]
	ldrb	w8, [x5, w8, uxtw]
	ldrb	w7, [x5, w7, uxtw]
	ldrb	w3, [x5, w3, uxtw]
	strb	w8, [x2, -4]
	strb	w7, [x2, -3]
	strb	w3, [x2, -2]
	strb	w6, [x2, -1]
	cmp	x4, x1
	bcs	.L1
.L4:
	add	x6, x4, 1
	ldrb	w3, [x0, x4]
	add	x8, x4, 2
	cmp	x1, x6
	bhi	.L11
	mov	x4, x6
	mov	w7, 0
	mov	w6, 0
	b	.L3
	.p2align 2,,3
.L1:
	ret
	.p2align 2,,3
.L7:
	mov	x4, x8
	mov	w6, 0
	b	.L3
	.cfi_endproc
.LFE0:
	.size	base64_encode_standard, .-base64_encode_standard
	.section	.rodata
	.align	4
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
