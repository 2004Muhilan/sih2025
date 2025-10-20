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
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	add	x2, sp, 52
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 336
	mov	x7, sp
	ld4	{v20.16b - v23.16b}, [x1]
	ldr	x4, [x3]
	str	x4, [sp, 328]
	mov	x4, 0
	ldr	q19, [x0]
	add	x1, sp, 308
	uxtl	v4.8h, v20.8b
	ldr	w6, [x0, 4]
	uxtl2	v5.8h, v23.16b
	ldr	s1, [x0, 8]
	shll	v2.8h, v22.8b, 8
	uxtl2	v3.8h, v20.16b
	shll2	v0.8h, v22.16b, 8
	uxtl	v16.8h, v23.8b
	uxtl2	v7.4s, v5.8h
	uxtl2	v6.4s, v4.8h
	uxtl	v25.4s, v3.4h
	uxtl	v18.4s, v0.4h
	uxtl2	v3.4s, v3.8h
	uxtl	v27.4s, v5.4h
	uxtl	v24.4s, v4.4h
	uxtl2	v17.4s, v2.8h
	uxtl	v4.4s, v2.4h
	uxtl	v26.4s, v16.4h
	uxtl2	v0.4s, v0.8h
	uxtl2	v16.4s, v16.8h
	shl	v2.4s, v3.4s, 24
	shl	v5.4s, v6.4s, 24
	orr	v0.16b, v0.16b, v7.16b
	uxtl2	v3.8h, v21.16b
	shl	v7.4s, v24.4s, 24
	uxtl	v6.8h, v21.8b
	orr	v17.16b, v17.16b, v16.16b
	shl	v25.4s, v25.4s, 24
	orr	v18.16b, v18.16b, v27.16b
	orr	v4.16b, v4.16b, v26.16b
	shll	v16.4s, v3.4h, 16
	orr	v0.16b, v0.16b, v2.16b
	shll2	v3.4s, v3.8h, 16
	shll	v2.4s, v6.4h, 16
	orr	v4.16b, v4.16b, v7.16b
	orr	v17.16b, v17.16b, v5.16b
	shll2	v6.4s, v6.8h, 16
	orr	v18.16b, v18.16b, v25.16b
	orr	v0.16b, v0.16b, v3.16b
	orr	v4.16b, v4.16b, v2.16b
	orr	v17.16b, v17.16b, v6.16b
	orr	v18.16b, v18.16b, v16.16b
	dup	d2, v0.d[1]
	dup	d6, v4.d[1]
	mov	v7.8b, v0.8b
	fmov	w5, s19
	dup	d16, v18.d[1]
	stp	q4, q17, [sp]
	mov	v3.8b, v18.8b
	dup	d5, v17.d[1]
	stp	q18, q0, [sp, 32]
	mov	v4.8b, v17.8b
	ldp	w4, w14, [x0, 12]
	.p2align 3,,7
.L2:
	add	x2, x2, 8
	ldr	d17, [x2, -60]
	ldr	d0, [x2, -8]
	eor	v0.8b, v0.8b, v17.8b
	eor	v0.8b, v0.8b, v3.8b
	eor	v0.8b, v0.8b, v6.8b
	mov	v6.8b, v4.8b
	mov	v4.8b, v5.8b
	mov	v5.8b, v3.8b
	mov	v3.8b, v16.8b
	mov	v16.8b, v7.8b
	mov	v7.8b, v2.8b
	ushr	v2.2s, v0.2s, 31
	shl	v0.2s, v0.2s, 1
	orr	v2.8b, v2.8b, v0.8b
	str	d2, [x2, 4]
	cmp	x1, x2
	bne	.L2
	mov	w15, 49622
	mov	w12, 48348
	mov	w11, 60321
	mov	w13, 31129
	mov	w9, w14
	mov	w3, 0
	movk	w15, 0xca62, lsl 16
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
	add	w1, w1, w15
	add	w1, w1, w2
	add	w1, w1, w9
	fmov	s0, w1
	cmp	w3, 80
	bne	.L9
	ins	v0.s[1], w5
	add	w14, w14, w4
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	str	w14, [x0, 16]
	ins	v0.s[2], w8
	ins	v0.s[3], v1.s[0]
	add	v0.4s, v0.4s, v19.4s
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
