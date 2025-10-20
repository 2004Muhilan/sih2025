	.arch armv8-a
	.file	"aes_add_round_key.c"
	.text
	.align	2
	.p2align 4,,11
	.global	aes_add_round_key
	.type	aes_add_round_key, %function
aes_add_round_key:
.LFB0:
	.cfi_startproc
	add	x2, x1, 1
	sub	x2, x0, x2
	cmp	x2, 14
	bls	.L2
	ldr	q0, [x0]
	ldr	q1, [x1]
	eor	v0.16b, v0.16b, v1.16b
	str	q0, [x0]
	ret
	.p2align 2,,3
.L2:
	ldrb	w4, [x1]
	ldrb	w3, [x0]
	ldrb	w2, [x0, 1]
	eor	w3, w3, w4
	strb	w3, [x0]
	ldrb	w4, [x0, 2]
	ldrb	w5, [x1, 1]
	ldrb	w3, [x0, 3]
	eor	w2, w2, w5
	strb	w2, [x0, 1]
	ldrb	w2, [x0, 4]
	ldrb	w5, [x1, 2]
	ldrb	w7, [x0, 5]
	eor	w4, w4, w5
	strb	w4, [x0, 2]
	ldrb	w6, [x0, 6]
	ldrb	w4, [x1, 3]
	ldrb	w5, [x0, 7]
	eor	w3, w3, w4
	strb	w3, [x0, 3]
	ldrb	w4, [x0, 8]
	ldrb	w8, [x1, 4]
	ldrb	w3, [x0, 9]
	eor	w2, w2, w8
	strb	w2, [x0, 4]
	ldrb	w2, [x0, 10]
	ldrb	w8, [x1, 5]
	eor	w7, w7, w8
	strb	w7, [x0, 5]
	ldrb	w7, [x1, 6]
	eor	w6, w6, w7
	strb	w6, [x0, 6]
	ldrb	w6, [x1, 7]
	eor	w5, w5, w6
	strb	w5, [x0, 7]
	ldrb	w5, [x1, 8]
	eor	w4, w4, w5
	strb	w4, [x0, 8]
	ldrb	w4, [x1, 9]
	eor	w3, w3, w4
	strb	w3, [x0, 9]
	ldrb	w3, [x1, 10]
	eor	w2, w2, w3
	strb	w2, [x0, 10]
	ldrb	w4, [x1, 11]
	ldrb	w3, [x0, 11]
	ldrb	w2, [x0, 12]
	eor	w3, w3, w4
	strb	w3, [x0, 11]
	ldrb	w4, [x0, 13]
	ldrb	w5, [x1, 12]
	ldrb	w3, [x0, 14]
	eor	w2, w2, w5
	strb	w2, [x0, 12]
	ldrb	w2, [x0, 15]
	ldrb	w5, [x1, 13]
	eor	w4, w4, w5
	strb	w4, [x0, 13]
	ldrb	w4, [x1, 14]
	eor	w3, w3, w4
	strb	w3, [x0, 14]
	ldrb	w1, [x1, 15]
	eor	w1, w2, w1
	strb	w1, [x0, 15]
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
