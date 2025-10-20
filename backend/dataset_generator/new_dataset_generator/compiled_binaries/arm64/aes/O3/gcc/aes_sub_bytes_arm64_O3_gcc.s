	.arch armv8-a
	.file	"aes_sub_bytes.c"
	.text
	.align	2
	.p2align 4,,11
	.global	aes_sub_bytes
	.type	aes_sub_bytes, %function
aes_sub_bytes:
.LFB0:
	.cfi_startproc
	ldrb	w5, [x0]
	adrp	x1, .LANCHOR0
	ldrb	w4, [x0, 1]
	add	x1, x1, :lo12:.LANCHOR0
	ldrb	w3, [x0, 2]
	ldrb	w2, [x0, 3]
	ldr	b0, [x1, w5, sxtw]
	ldr	b2, [x1, w4, sxtw]
	ldr	b1, [x1, w3, sxtw]
	ldr	b4, [x1, w2, sxtw]
	ins	v0.b[1], v2.b[0]
	ldrb	w5, [x0, 4]
	ldrb	w4, [x0, 5]
	ldrb	w3, [x0, 6]
	ldrb	w2, [x0, 7]
	ins	v0.b[2], v1.b[0]
	ldr	b3, [x1, w5, sxtw]
	ldr	b2, [x1, w4, sxtw]
	ldr	b1, [x1, w3, sxtw]
	ldrb	w5, [x0, 8]
	ins	v0.b[3], v4.b[0]
	ldr	b17, [x1, w2, sxtw]
	ldrb	w4, [x0, 9]
	ldrb	w3, [x0, 10]
	ldr	b16, [x1, w5, sxtw]
	ins	v0.b[4], v3.b[0]
	ldrb	w2, [x0, 11]
	ldr	b7, [x1, w4, sxtw]
	ldr	b6, [x1, w3, sxtw]
	ldrb	w5, [x0, 12]
	ins	v0.b[5], v2.b[0]
	ldr	b5, [x1, w2, sxtw]
	ldrb	w4, [x0, 13]
	ldrb	w3, [x0, 14]
	ldr	b4, [x1, w5, sxtw]
	ins	v0.b[6], v1.b[0]
	ldrb	w2, [x0, 15]
	ldr	b3, [x1, w4, sxtw]
	ldr	b2, [x1, w3, sxtw]
	ins	v0.b[7], v17.b[0]
	ldr	b1, [x1, w2, sxtw]
	ins	v0.b[8], v16.b[0]
	ins	v0.b[9], v7.b[0]
	ins	v0.b[10], v6.b[0]
	ins	v0.b[11], v5.b[0]
	ins	v0.b[12], v4.b[0]
	ins	v0.b[13], v3.b[0]
	ins	v0.b[14], v2.b[0]
	ins	v0.b[15], v1.b[0]
	str	q0, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	2
	.p2align 4,,11
	.global	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, %function
aes_inv_sub_bytes:
.LFB1:
	.cfi_startproc
	ldrb	w5, [x0]
	adrp	x1, .LANCHOR0
	ldrb	w4, [x0, 1]
	add	x1, x1, :lo12:.LANCHOR0
	add	x1, x1, 256
	ldrb	w3, [x0, 2]
	ldrb	w2, [x0, 3]
	ldr	b2, [x1, w4, sxtw]
	ldr	b0, [x1, w5, sxtw]
	ldr	b1, [x1, w3, sxtw]
	ldr	b4, [x1, w2, sxtw]
	ins	v0.b[1], v2.b[0]
	ldrb	w5, [x0, 4]
	ldrb	w4, [x0, 5]
	ldrb	w3, [x0, 6]
	ldrb	w2, [x0, 7]
	ins	v0.b[2], v1.b[0]
	ldr	b3, [x1, w5, sxtw]
	ldr	b2, [x1, w4, sxtw]
	ldr	b1, [x1, w3, sxtw]
	ldrb	w5, [x0, 8]
	ins	v0.b[3], v4.b[0]
	ldr	b17, [x1, w2, sxtw]
	ldrb	w4, [x0, 9]
	ldrb	w3, [x0, 10]
	ldr	b16, [x1, w5, sxtw]
	ins	v0.b[4], v3.b[0]
	ldrb	w2, [x0, 11]
	ldr	b7, [x1, w4, sxtw]
	ldr	b6, [x1, w3, sxtw]
	ldrb	w5, [x0, 12]
	ins	v0.b[5], v2.b[0]
	ldr	b5, [x1, w2, sxtw]
	ldrb	w4, [x0, 13]
	ldrb	w3, [x0, 14]
	ldr	b4, [x1, w5, sxtw]
	ins	v0.b[6], v1.b[0]
	ldrb	w2, [x0, 15]
	ldr	b3, [x1, w4, sxtw]
	ldr	b2, [x1, w3, sxtw]
	ins	v0.b[7], v17.b[0]
	ldr	b1, [x1, w2, sxtw]
	ins	v0.b[8], v16.b[0]
	ins	v0.b[9], v7.b[0]
	ins	v0.b[10], v6.b[0]
	ins	v0.b[11], v5.b[0]
	ins	v0.b[12], v4.b[0]
	ins	v0.b[13], v3.b[0]
	ins	v0.b[14], v2.b[0]
	ins	v0.b[15], v1.b[0]
	str	q0, [x0]
	ret
	.cfi_endproc
.LFE1:
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align	4
	.set	.LANCHOR0,. + 0
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	239
	.type	inv_sbox.0, %object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.string	"R\tj\32506\2458"
	.zero	247
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
