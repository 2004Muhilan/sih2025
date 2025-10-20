	.arch armv8-a
	.file	"sha256_compress.c"
	.text
	.align	2
	.p2align 4,,11
	.global	sha256_compress
	.type	sha256_compress, %function
sha256_compress:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	add	x2, sp, 8
	add	x8, sp, 264
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	ldp	q0, q2, [x1]
	mov	x7, x2
	ldp	q1, q3, [x1, 32]
	add	x1, sp, 72
	ldr	x4, [x3]
	str	x4, [sp, 264]
	mov	x4, 0
	stp	q1, q3, [x2, 32]
	ldr	d1, [sp, 64]
	stp	q0, q2, [x2]
	.p2align 3,,7
.L2:
	ushr	v2.2s, v1.2s, 19
	ushr	v5.2s, v1.2s, 17
	shl	v0.2s, v1.2s, 13
	shl	v6.2s, v1.2s, 15
	ldr	d3, [x1, -60]
	ushr	v1.2s, v1.2s, 10
	ldr	d17, [x1, -64]
	ldr	d4, [x1, -28]
	orr	v0.8b, v0.8b, v2.8b
	ushr	v16.2s, v3.2s, 18
	orr	v6.8b, v6.8b, v5.8b
	shl	v2.2s, v3.2s, 14
	shl	v5.2s, v3.2s, 25
	ushr	v7.2s, v3.2s, 7
	add	v4.2s, v4.2s, v17.2s
	ushr	v3.2s, v3.2s, 3
	eor	v0.8b, v0.8b, v6.8b
	orr	v2.8b, v2.8b, v16.8b
	orr	v5.8b, v5.8b, v7.8b
	eor	v0.8b, v0.8b, v1.8b
	eor	v1.8b, v2.8b, v5.8b
	add	v0.2s, v0.2s, v4.2s
	eor	v1.8b, v1.8b, v3.8b
	add	v1.2s, v0.2s, v1.2s
	str	d1, [x1], 8
	cmp	x8, x1
	bne	.L2
	ldp	q17, q16, [x0]
	mov	w9, 12184
	ldr	w5, [x0]
	movk	w9, 0x428a, lsl 16
	ldp	s2, s1, [x0, 4]
	ldr	w4, [x0, 16]
	ldp	s4, s3, [x0, 20]
	dup	s7, v17.s[3]
	dup	s6, v16.s[3]
	b	.L3
	.p2align 2,,3
.L5:
	fmov	s3, s4
	fmov	s1, s2
	fmov	s4, w4
	fmov	s2, w5
	fmov	w4, s5
	fmov	w5, s0
.L3:
	fmov	w2, s3
	eor	v0.8b, v2.8b, v1.8b
	ldr	w6, [x7], 4
	ror	w1, w4, 11
	eor	w1, w1, w4, ror 6
	eor	w1, w1, w4, ror 25
	add	w6, w6, w9
	bic	w3, w2, w4
	fmov	w2, s4
	and	w2, w4, w2
	eor	w3, w3, w2
	ror	w2, w5, 13
	add	w1, w1, w3
	fmov	w3, s0
	and	v0.8b, v2.8b, v1.8b
	add	w1, w1, w6
	eor	w2, w2, w5, ror 2
	eor	w2, w2, w5, ror 22
	and	w3, w3, w5
	fmov	w6, s0
	eor	w3, w3, w6
	fmov	w6, s6
	add	w2, w2, w3
	fmov	s6, s3
	add	w1, w1, w6
	fmov	s0, w1
	add	w1, w1, w2
	add	v5.2s, v0.2s, v7.2s
	fmov	s7, s1
	fmov	s0, w1
	cmp	x8, x7
	bne	.L5
	ins	v0.s[1], w5
	ins	v5.s[1], w4
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ins	v0.s[2], v2.s[0]
	ins	v5.s[2], v4.s[0]
	ins	v0.s[3], v1.s[0]
	ins	v5.s[3], v3.s[0]
	add	v0.4s, v0.4s, v17.4s
	add	v5.4s, v5.4s, v16.4s
	stp	q0, q5, [x0]
	mov	x0, x1
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L9
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L9:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
