	.arch armv8-a
	.file	"aes_mix_columns.c"
	.text
	.align	2
	.p2align 4,,11
	.global	aes_mix_columns
	.type	aes_mix_columns, %function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	add	x9, x0, 16
	mov	w1, 27
.L18:
	ldrb	w2, [x0]
	mov	w11, 8
	ldrb	w5, [x0, 1]
	mov	w16, 0
	ldrb	w4, [x0, 2]
	mov	w6, w2
	ldrb	w3, [x0, 3]
	eor	w10, w2, w5
	eor	w8, w5, w4
	mov	w7, 2
	eor	w17, w4, w3
	eor	w12, w2, w3
	.p2align 3,,7
.L3:
	sbfx	x14, x7, 0, 1
	ubfiz	w13, w6, 1, 7
	tst	x6, 128
	and	w6, w6, w14
	eor	w14, w13, w1
	eor	w16, w16, w6
	lsr	w7, w7, 1
	csel	w6, w14, w13, ne
	subs	w11, w11, #1
	bne	.L3
	mov	w6, w5
	mov	w14, 8
	mov	w7, 0
	mov	w13, 3
	.p2align 3,,7
.L5:
	sbfx	x11, x13, 0, 1
	ubfiz	w15, w6, 1, 7
	and	w11, w6, w11
	tst	x6, 128
	eor	w7, w7, w11
	eor	w6, w15, w1
	csel	w6, w6, w15, ne
	and	w7, w7, 255
	lsr	w13, w13, 1
	subs	w14, w14, #1
	bne	.L5
	eor	w7, w7, w16
	mov	w11, 8
	eor	w6, w17, w7
	mov	w15, 0
	mov	w7, 2
	strb	w6, [x0]
	.p2align 3,,7
.L7:
	sbfx	x6, x7, 0, 1
	ubfiz	w13, w5, 1, 7
	tst	x5, 128
	and	w6, w5, w6
	eor	w5, w13, w1
	eor	w15, w15, w6
	csel	w5, w5, w13, ne
	lsr	w7, w7, 1
	subs	w11, w11, #1
	bne	.L7
	mov	w5, w4
	mov	w13, 8
	mov	w6, 0
	mov	w11, 3
	.p2align 3,,7
.L9:
	sbfx	x7, x11, 0, 1
	ubfiz	w14, w5, 1, 7
	and	w7, w5, w7
	tst	x5, 128
	eor	w6, w6, w7
	eor	w5, w14, w1
	csel	w5, w5, w14, ne
	and	w6, w6, 255
	lsr	w11, w11, 1
	subs	w13, w13, #1
	bne	.L9
	eor	w6, w6, w15
	mov	w7, 8
	eor	w12, w12, w6
	mov	w13, 0
	mov	w6, 2
	strb	w12, [x0, 1]
	.p2align 3,,7
.L11:
	sbfx	x5, x6, 0, 1
	ubfiz	w11, w4, 1, 7
	tst	x4, 128
	and	w5, w4, w5
	eor	w4, w11, w1
	eor	w13, w13, w5
	csel	w4, w4, w11, ne
	lsr	w6, w6, 1
	subs	w7, w7, #1
	bne	.L11
	mov	w4, w3
	mov	w11, 8
	mov	w5, 0
	mov	w7, 3
	.p2align 3,,7
.L13:
	sbfx	x6, x7, 0, 1
	ubfiz	w12, w4, 1, 7
	and	w6, w4, w6
	tst	x4, 128
	eor	w5, w5, w6
	eor	w4, w12, w1
	csel	w4, w4, w12, ne
	and	w5, w5, 255
	lsr	w7, w7, 1
	subs	w11, w11, #1
	bne	.L13
	eor	w5, w5, w13
	mov	w6, 8
	eor	w10, w10, w5
	mov	w11, 0
	mov	w5, 3
	strb	w10, [x0, 2]
	.p2align 3,,7
.L15:
	sbfx	x4, x5, 0, 1
	ubfiz	w7, w2, 1, 7
	tst	x2, 128
	and	w4, w2, w4
	eor	w2, w7, w1
	eor	w11, w11, w4
	csel	w2, w2, w7, ne
	lsr	w5, w5, 1
	subs	w6, w6, #1
	bne	.L15
	mov	w5, 8
	mov	w7, 0
	mov	w4, 2
	.p2align 3,,7
.L17:
	sbfx	x2, x4, 0, 1
	ubfiz	w6, w3, 1, 7
	tst	x3, 128
	and	w2, w3, w2
	eor	w3, w6, w1
	eor	w7, w7, w2
	csel	w3, w3, w6, ne
	lsr	w4, w4, 1
	subs	w5, w5, #1
	bne	.L17
	eor	w11, w11, w7
	add	x0, x0, 4
	eor	w8, w8, w11
	strb	w8, [x0, -1]
	cmp	x9, x0
	bne	.L18
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
