	.arch armv8-a
	.file	"sha1_compress.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha1_compress
	.type	sha1_compress, %function
sha1_compress:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	add	x7, sp, 8
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 336
	ldp	q2, q3, [x1]
	ldr	x3, [x2]
	str	x3, [sp, 328]
	mov	x3, 0
	ldp	q0, q1, [x1, 32]
	add	x2, sp, 72
	stp	q2, q3, [x7]
	mov	w1, 0
	ldp	d4, d6, [sp, 16]
	stp	q0, q1, [x7, 32]
	ldr	d1, [sp, 64]
	ldp	d5, d3, [sp, 32]
	ldp	d16, d2, [sp, 48]
.L2:
	add	w1, w1, 7
	ldr	d0, [x2, -12]
	mov	x3, x2
	ldp	d7, d21, [x2, -64]
	mov	x4, x2
	eor	v0.8b, v0.8b, v3.8b
	ldp	d20, d19, [x2, -48]
	ldp	d18, d17, [x2, -32]
	eor	v0.8b, v0.8b, v7.8b
	ldr	d7, [x2, -16]
	add	x2, x2, 56
	eor	v0.8b, v0.8b, v4.8b
	ushr	v4.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v4.8b, v4.8b, v0.8b
	str	d4, [x2, -56]
	ldr	d0, [x2, -60]
	eor	v0.8b, v0.8b, v16.8b
	eor	v0.8b, v0.8b, v21.8b
	eor	v0.8b, v0.8b, v6.8b
	ushr	v6.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v6.8b, v6.8b, v0.8b
	str	d6, [x2, -48]
	ldr	d0, [x2, -52]
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v20.8b
	eor	v0.8b, v0.8b, v5.8b
	ushr	v5.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v5.8b, v5.8b, v0.8b
	str	d5, [x2, -40]
	ldr	d0, [x2, -44]
	eor	v0.8b, v0.8b, v1.8b
	eor	v0.8b, v0.8b, v3.8b
	eor	v0.8b, v0.8b, v19.8b
	ushr	v3.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v3.8b, v3.8b, v0.8b
	str	d3, [x2, -32]
	ldr	d0, [x2, -36]
	eor	v0.8b, v0.8b, v16.8b
	eor	v0.8b, v0.8b, v18.8b
	eor	v0.8b, v0.8b, v4.8b
	ushr	v16.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v16.8b, v16.8b, v0.8b
	str	d16, [x2, -24]
	ldr	d0, [x2, -28]
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v17.8b
	eor	v0.8b, v0.8b, v6.8b
	ushr	v2.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v2.8b, v2.8b, v0.8b
	str	d2, [x2, -16]
	ldr	d0, [x2, -20]
	eor	v0.8b, v0.8b, v1.8b
	eor	v0.8b, v0.8b, v7.8b
	eor	v0.8b, v0.8b, v5.8b
	ushr	v1.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v1.8b, v1.8b, v0.8b
	str	d1, [x2, -8]
	cmp	w1, 28
	bne	.L2
	add	x6, x3, 44
	add	x5, x3, 24
	sub	x3, x3, #8
	mov	x1, 0
	.p2align 3,,7
.L3:
	ldr	d0, [x6, x1, lsl 3]
	ldr	d3, [x5, x1, lsl 3]
	ldr	d2, [x4, x1, lsl 3]
	ldr	d1, [x3, x1, lsl 3]
	eor	v0.8b, v0.8b, v3.8b
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v1.8b
	ushr	v1.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v0.8b, v1.8b, v0.8b
	str	d0, [x2, x1, lsl 3]
	add	x1, x1, 1
	cmp	w1, 4
	bne	.L3
	ldr	q2, [x0]
	mov	w14, 49622
	ldp	w4, w15, [x0, 12]
	mov	w12, 48348
	mov	w11, 60321
	mov	w13, 31129
	ldr	w6, [x0, 4]
	fmov	w5, s2
	ldr	s1, [x0, 8]
	mov	w9, w15
	mov	w3, 0
	movk	w14, 0xca62, lsl 16
	movk	w12, 0x8f1b, lsl 16
	movk	w11, 0x6ed9, lsl 16
	movk	w13, 0x5a82, lsl 16
	b	.L9
	.p2align 2,,3
.L18:
	fmov	w1, s1
	mov	w8, w11
	eor	w2, w4, w1
	eor	w2, w2, w6
.L5:
	ldr	w10, [x7], 4
	ror	w1, w5, 27
	add	w2, w2, w8
	add	w3, w3, 1
	add	w1, w1, w10
	ror	w8, w6, 2
	add	w1, w1, w2
	add	w1, w1, w9
	fmov	s0, w1
.L10:
	mov	w6, w5
	fmov	w5, s0
	mov	w9, w4
	fmov	w4, s1
	fmov	s1, w8
.L9:
	cmp	w3, 19
	ble	.L17
	cmp	w3, 39
	ble	.L18
	cmp	w3, 59
	bgt	.L7
	fmov	w1, s1
	mov	w8, w12
	orr	w2, w4, w1
	and	w1, w4, w1
	and	w2, w2, w6
	orr	w2, w2, w1
	b	.L5
	.p2align 2,,3
.L17:
	fmov	w1, s1
	mov	w8, w13
	eor	w2, w4, w1
	and	w2, w2, w6
	eor	w2, w2, w4
	b	.L5
	.p2align 2,,3
.L7:
	fmov	w1, s1
	ldr	w8, [x7], 4
	add	w3, w3, 1
	ror	w2, w5, 27
	add	w2, w2, w8
	ror	w8, w6, 2
	eor	w1, w4, w1
	eor	w1, w1, w6
	add	w1, w1, w14
	add	w1, w1, w2
	add	w1, w1, w9
	fmov	s0, w1
	cmp	w3, 80
	bne	.L10
	ins	v0.s[1], w5
	add	w15, w15, w4
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	str	w15, [x0, 16]
	ins	v0.s[2], w8
	ins	v0.s[3], v1.s[0]
	add	v0.4s, v0.4s, v2.4s
	str	q0, [x0]
	mov	x0, x1
	ldr	x2, [sp, 328]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L19
	ldp	x29, x30, [sp, 336]
	add	sp, sp, 352
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L19:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
