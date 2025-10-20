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
	add	x3, sp, 8
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 336
	ldp	q2, q3, [x1]
	ldr	x4, [x2]
	str	x4, [sp, 328]
	mov	x4, 0
	ldp	q0, q1, [x1, 32]
	mov	x7, x3
	stp	q2, q3, [x3]
	add	x1, sp, 60
	add	x2, sp, 316
	ldp	d7, d6, [sp, 16]
	stp	q0, q1, [x3, 32]
	ldr	d0, [sp, 64]
	ldp	d5, d2, [sp, 32]
	ldp	d4, d3, [sp, 48]
	.p2align 3,,7
.L2:
	mov	v1.8b, v0.8b
	ldr	d16, [x1, -52]
	add	x1, x1, 8
	ldr	d0, [x1, -8]
	eor	v0.8b, v0.8b, v16.8b
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v7.8b
	mov	v7.8b, v6.8b
	mov	v6.8b, v5.8b
	mov	v5.8b, v2.8b
	mov	v2.8b, v4.8b
	mov	v4.8b, v3.8b
	mov	v3.8b, v1.8b
	ushr	v1.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v0.8b, v1.8b, v0.8b
	str	d0, [x1, 4]
	cmp	x2, x1
	bne	.L2
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
	b	.L8
	.p2align 2,,3
.L16:
	fmov	w1, s1
	mov	w8, w11
	eor	w2, w4, w1
	eor	w2, w2, w6
.L4:
	ldr	w10, [x7], 4
	ror	w1, w5, 27
	add	w2, w2, w8
	add	w3, w3, 1
	add	w1, w1, w10
	ror	w8, w6, 2
	add	w1, w1, w2
	add	w1, w1, w9
	fmov	s0, w1
.L9:
	mov	w6, w5
	fmov	w5, s0
	mov	w9, w4
	fmov	w4, s1
	fmov	s1, w8
.L8:
	cmp	w3, 19
	ble	.L15
	cmp	w3, 39
	ble	.L16
	cmp	w3, 59
	bgt	.L6
	fmov	w1, s1
	mov	w8, w12
	orr	w2, w4, w1
	and	w1, w4, w1
	and	w2, w2, w6
	orr	w2, w2, w1
	b	.L4
	.p2align 2,,3
.L15:
	fmov	w1, s1
	mov	w8, w13
	eor	w2, w4, w1
	and	w2, w2, w6
	eor	w2, w2, w4
	b	.L4
	.p2align 2,,3
.L6:
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
	bne	.L9
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
	bne	.L17
	ldp	x29, x30, [sp, 336]
	add	sp, sp, 352
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L17:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
