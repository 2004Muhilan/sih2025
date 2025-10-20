	.arch armv8-a
	.file	"aes_sub_bytes.c"
	.text
	.align	2
	.global	aes_sub_bytes
	.type	aes_sub_bytes, %function
aes_sub_bytes:
.LFB0:
	.cfi_startproc
	add	x3, x0, 16
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
.L2:
	ldrb	w1, [x0]
	ldrb	w1, [x2, w1, sxtw]
	strb	w1, [x0], 1
	cmp	x0, x3
	bne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	2
	.global	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, %function
aes_inv_sub_bytes:
.LFB1:
	.cfi_startproc
	add	x3, x0, 16
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	add	x2, x2, 256
.L5:
	ldrb	w1, [x0]
	ldrb	w1, [x2, w1, sxtw]
	strb	w1, [x0], 1
	cmp	x0, x3
	bne	.L5
	ret
	.cfi_endproc
.LFE1:
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align	3
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
