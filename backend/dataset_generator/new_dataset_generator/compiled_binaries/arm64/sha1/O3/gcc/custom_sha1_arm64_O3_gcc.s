	.arch armv8-a
	.file	"custom_sha1.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha1_transform
	.type	sha1_transform, %function
sha1_transform:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	mov	w8, 0
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	add	x2, sp, 64
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 336
	ld4	{v20.16b - v23.16b}, [x1]
	ldr	x1, [x3]
	str	x1, [sp, 328]
	mov	x1, 0
	ldr	q5, [x0]
	uxtl2	v3.8h, v20.16b
	ldr	w7, [x0, 4]
	uxtl2	v6.8h, v23.16b
	ldr	s1, [x0, 8]
	uxtl	v7.8h, v20.8b
	shll2	v0.8h, v22.16b, 8
	shll	v2.8h, v22.8b, 8
	uxtl	v17.8h, v23.8b
	uxtl2	v16.4s, v6.8h
	uxtl	v24.4s, v3.4h
	uxtl2	v4.4s, v3.8h
	uxtl	v18.4s, v0.4h
	uxtl	v26.4s, v6.4h
	uxtl	v19.4s, v7.4h
	uxtl	v3.4s, v2.4h
	uxtl	v25.4s, v17.4h
	uxtl2	v0.4s, v0.8h
	uxtl2	v17.4s, v17.8h
	uxtl2	v7.4s, v7.8h
	uxtl2	v2.4s, v2.8h
	shl	v4.4s, v4.4s, 24
	orr	v0.16b, v0.16b, v16.16b
	uxtl2	v6.8h, v21.16b
	shl	v19.4s, v19.4s, 24
	shl	v7.4s, v7.4s, 24
	uxtl	v16.8h, v21.8b
	orr	v2.16b, v2.16b, v17.16b
	shl	v24.4s, v24.4s, 24
	orr	v18.16b, v18.16b, v26.16b
	orr	v3.16b, v3.16b, v25.16b
	shll	v17.4s, v6.4h, 16
	orr	v0.16b, v0.16b, v4.16b
	shll2	v6.4s, v6.8h, 16
	shll	v4.4s, v16.4h, 16
	orr	v3.16b, v3.16b, v19.16b
	orr	v2.16b, v2.16b, v7.16b
	shll2	v16.4s, v16.8h, 16
	orr	v18.16b, v18.16b, v24.16b
	orr	v0.16b, v0.16b, v6.16b
	orr	v3.16b, v3.16b, v4.16b
	orr	v2.16b, v2.16b, v16.16b
	orr	v18.16b, v18.16b, v17.16b
	dup	d16, v0.d[1]
	dup	d6, v3.d[1]
	mov	v7.8b, v0.8b
	fmov	w6, s5
	dup	d17, v18.d[1]
	stp	q3, q2, [sp]
	mov	v19.8b, v18.8b
	dup	d4, v2.d[1]
	stp	q18, q0, [sp, 32]
	mov	v3.8b, v2.8b
	ldp	w5, w14, [x0, 12]
.L2:
	eor	v22.8b, v19.8b, v16.8b
	ldp	d2, d24, [x2, -64]
	add	w8, w8, 7
	ldr	d0, [x2, -12]
	mov	x3, x2
	ldp	d23, d21, [x2, -48]
	mov	x4, x2
	eor	v0.8b, v0.8b, v2.8b
	ldr	d2, [x2, -16]
	ldp	d20, d18, [x2, -32]
	add	x2, x2, 56
	eor	v0.8b, v0.8b, v19.8b
	eor	v0.8b, v0.8b, v6.8b
	shl	v6.2s, v0.2s, 1
	ushr	v0.2s, v0.2s, 31
	orr	v6.8b, v6.8b, v0.8b
	str	d6, [x2, -56]
	ldr	d0, [x2, -60]
	eor	v0.8b, v0.8b, v24.8b
	eor	v0.8b, v0.8b, v17.8b
	eor	v0.8b, v0.8b, v3.8b
	shl	v3.2s, v0.2s, 1
	ushr	v0.2s, v0.2s, 31
	orr	v3.8b, v3.8b, v0.8b
	str	d3, [x2, -48]
	ldr	d0, [x2, -52]
	eor	v0.8b, v0.8b, v23.8b
	eor	v0.8b, v0.8b, v7.8b
	eor	v0.8b, v0.8b, v4.8b
	ushr	v4.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v4.8b, v4.8b, v0.8b
	str	d4, [x2, -40]
	ldr	d0, [x2, -44]
	eor	v0.8b, v0.8b, v22.8b
	eor	v0.8b, v0.8b, v21.8b
	ushr	v19.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v19.8b, v19.8b, v0.8b
	str	d19, [x2, -32]
	ldr	d0, [x2, -36]
	eor	v0.8b, v0.8b, v20.8b
	eor	v0.8b, v0.8b, v17.8b
	eor	v0.8b, v0.8b, v6.8b
	ushr	v17.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v17.8b, v17.8b, v0.8b
	str	d17, [x2, -24]
	ldr	d0, [x2, -28]
	eor	v0.8b, v0.8b, v18.8b
	eor	v0.8b, v0.8b, v7.8b
	eor	v0.8b, v0.8b, v3.8b
	ushr	v7.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v7.8b, v7.8b, v0.8b
	str	d7, [x2, -16]
	ldr	d0, [x2, -20]
	eor	v0.8b, v0.8b, v2.8b
	eor	v0.8b, v0.8b, v16.8b
	eor	v0.8b, v0.8b, v4.8b
	ushr	v16.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v16.8b, v16.8b, v0.8b
	str	d16, [x2, -8]
	cmp	w8, 28
	bne	.L2
	add	x9, x3, 44
	add	x8, x3, 24
	sub	x3, x3, #8
	mov	x1, 0
	.p2align 3,,7
.L3:
	ldr	d0, [x9, x1, lsl 3]
	ldr	d4, [x8, x1, lsl 3]
	ldr	d3, [x4, x1, lsl 3]
	ldr	d2, [x3, x1, lsl 3]
	eor	v0.8b, v0.8b, v4.8b
	eor	v0.8b, v0.8b, v3.8b
	eor	v0.8b, v0.8b, v2.8b
	ushr	v2.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v0.8b, v2.8b, v0.8b
	str	d0, [x2, x1, lsl 3]
	add	x1, x1, 1
	cmp	w1, 4
	bne	.L3
	mov	w15, 49622
	mov	w12, 48348
	mov	w11, 60321
	mov	w13, 31129
	mov	x8, sp
	mov	w9, w14
	mov	w3, 0
	movk	w15, 0xca62, lsl 16
	movk	w12, 0x8f1b, lsl 16
	movk	w11, 0x6ed9, lsl 16
	movk	w13, 0x5a82, lsl 16
	b	.L9
	.p2align 2,,3
.L18:
	fmov	w1, s1
	mov	w4, w11
	eor	w2, w5, w1
	eor	w2, w2, w7
.L5:
	ldr	w10, [x8], 4
	ror	w1, w6, 27
	add	w2, w4, w2
	add	w3, w3, 1
	add	w1, w1, w10
	ror	w4, w7, 2
	add	w1, w1, w2
	add	w1, w1, w9
	fmov	s0, w1
.L10:
	mov	w7, w6
	fmov	w6, s0
	mov	w9, w5
	fmov	w5, s1
	fmov	s1, w4
.L9:
	cmp	w3, 19
	ble	.L17
	cmp	w3, 39
	ble	.L18
	cmp	w3, 59
	bgt	.L7
	fmov	w1, s1
	mov	w4, w12
	orr	w2, w5, w1
	and	w1, w5, w1
	and	w2, w2, w7
	orr	w2, w2, w1
	b	.L5
	.p2align 2,,3
.L17:
	fmov	w1, s1
	mov	w4, w13
	eor	w2, w5, w1
	and	w2, w2, w7
	eor	w2, w2, w5
	b	.L5
	.p2align 2,,3
.L7:
	fmov	w1, s1
	ldr	w4, [x8], 4
	add	w3, w3, 1
	eor	w2, w5, w1
	ror	w1, w6, 27
	eor	w2, w2, w7
	add	w1, w1, w4
	add	w2, w2, w15
	ror	w4, w7, 2
	add	w1, w1, w2
	add	w1, w1, w9
	fmov	s0, w1
	cmp	w3, 80
	bne	.L10
	ins	v0.s[1], w6
	add	w14, w14, w5
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	str	w14, [x0, 16]
	ins	v0.s[2], w4
	ins	v0.s[3], v1.s[0]
	add	v0.4s, v0.4s, v5.4s
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
.LFE14:
	.size	sha1_transform, .-sha1_transform
	.align	2
	.p2align 4,,11
	.global	sha1_init
	.type	sha1_init, %function
sha1_init:
.LFB15:
	.cfi_startproc
	adrp	x2, .LC0
	mov	w1, 57840
	movk	w1, 0xc3d2, lsl 16
	str	w1, [x0, 16]
	ldr	q0, [x2, #:lo12:.LC0]
	str	q0, [x0]
	ret
	.cfi_endproc
.LFE15:
	.size	sha1_init, .-sha1_init
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	1732584193
	.word	-271733879
	.word	-1732584194
	.word	271733878
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
