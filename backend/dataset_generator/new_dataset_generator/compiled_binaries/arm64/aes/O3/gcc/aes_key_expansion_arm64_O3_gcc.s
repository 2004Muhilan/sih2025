	.arch armv8-a
	.file	"aes_key_expansion.c"
	.text
	.align	2
	.p2align 4,,11
	.global	aes_key_expansion
	.type	aes_key_expansion, %function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	add	x2, x0, 1
	sub	x2, x1, x2
	cmp	x2, 14
	bls	.L2
	ldr	q0, [x0]
	str	q0, [x1]
.L3:
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	ldr	b25, [x1, 11]
	ldr	b24, [x1, 10]
	add	x4, x2, 10
	ldr	b23, [x1, 9]
	add	x3, x1, 16
	ldr	b22, [x1, 8]
	ldr	b21, [x1, 7]
	ldr	b20, [x1, 6]
	ldr	b19, [x1, 5]
	ldr	b18, [x1, 4]
	ldr	b17, [x1, 3]
	ldr	b16, [x1, 2]
	ldr	b7, [x1, 1]
	ldr	b6, [x1]
	ldr	b3, [x1, 15]
	ldr	b2, [x1, 14]
	ldr	b5, [x1, 13]
	ldr	b1, [x1, 12]
	.p2align 3,,7
.L4:
	ldrb	w0, [x2], 1
	eor	v7.8b, v2.8b, v7.8b
	fmov	s0, w0
	eor	v16.8b, v3.8b, v16.8b
	eor	v17.8b, v1.8b, v17.8b
	eor	v19.8b, v2.8b, v19.8b
	eor	v4.8b, v0.8b, v5.8b
	eor	v20.8b, v3.8b, v20.8b
	eor	v21.8b, v1.8b, v21.8b
	eor	v23.8b, v23.8b, v2.8b
	eor	v24.8b, v24.8b, v3.8b
	eor	v25.8b, v1.8b, v25.8b
	fmov	w0, s1
	eor	v5.8b, v5.8b, v2.8b
	eor	v6.8b, v4.8b, v6.8b
	eor	v18.8b, v4.8b, v18.8b
	eor	v22.8b, v4.8b, v22.8b
	eor	v1.8b, v4.8b, v1.8b
	eor	v2.8b, v2.8b, v3.8b
	fmov	s4, w0
	mov	v0.16b, v6.16b
	eor	v3.8b, v4.8b, v3.8b
	ins	v0.b[1], v7.b[0]
	ins	v0.b[2], v16.b[0]
	ins	v0.b[3], v17.b[0]
	ins	v0.b[4], v18.b[0]
	ins	v0.b[5], v19.b[0]
	ins	v0.b[6], v20.b[0]
	ins	v0.b[7], v21.b[0]
	ins	v0.b[8], v22.b[0]
	ins	v0.b[9], v23.b[0]
	ins	v0.b[10], v24.b[0]
	ins	v0.b[11], v25.b[0]
	ins	v0.b[12], v1.b[0]
	ins	v0.b[13], v5.b[0]
	ins	v0.b[14], v2.b[0]
	ins	v0.b[15], v3.b[0]
	str	q0, [x3], 16
	cmp	x4, x2
	bne	.L4
	ret
.L2:
	ldrb	w2, [x0]
	strb	w2, [x1]
	ldrb	w2, [x0, 1]
	strb	w2, [x1, 1]
	ldrb	w2, [x0, 2]
	strb	w2, [x1, 2]
	ldrb	w2, [x0, 3]
	strb	w2, [x1, 3]
	ldrb	w2, [x0, 4]
	strb	w2, [x1, 4]
	ldrb	w2, [x0, 5]
	strb	w2, [x1, 5]
	ldrb	w2, [x0, 6]
	strb	w2, [x1, 6]
	ldrb	w2, [x0, 7]
	strb	w2, [x1, 7]
	ldrb	w2, [x0, 8]
	strb	w2, [x1, 8]
	ldrb	w2, [x0, 9]
	strb	w2, [x1, 9]
	ldrb	w2, [x0, 10]
	strb	w2, [x1, 10]
	ldrb	w2, [x0, 11]
	strb	w2, [x1, 11]
	ldrb	w2, [x0, 12]
	strb	w2, [x1, 12]
	ldrb	w2, [x0, 13]
	strb	w2, [x1, 13]
	ldrb	w2, [x0, 14]
	strb	w2, [x1, 14]
	ldrb	w0, [x0, 15]
	strb	w0, [x1, 15]
	b	.L3
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
