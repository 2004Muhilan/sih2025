	.arch armv8-a
	.file	"sha1_compress.c"
	.text
	.align	2
	.global	sha1_compress
	.type	sha1_compress, %function
sha1_compress:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #368
	.cfi_def_cfa_offset 368
	add	x7, sp, 8
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 336
	str	x19, [sp, 352]
	.cfi_offset 19, -16
	ldp	q0, q1, [x1]
	ldr	x3, [x2]
	str	x3, [sp, 328]
	mov	x3, 0
	mov	w3, 16
	stp	q0, q1, [x7]
	ldp	q0, q1, [x1, 32]
	mov	x1, x7
	stp	q0, q1, [x7, 32]
.L2:
	ldr	w4, [x1, 32]
	ldr	w2, [x1, 52]
	add	w3, w3, 1
	ldr	w5, [x1]
	add	x1, x1, 4
	eor	w2, w2, w4
	ldr	w4, [x1, 4]
	eor	w4, w4, w5
	eor	w2, w2, w4
	ror	w2, w2, 31
	str	w2, [x1, 60]
	cmp	w3, 80
	bne	.L2
	ldp	w13, w11, [x0]
	mov	w15, 49622
	ldp	w10, w9, [x0, 8]
	mov	w16, 48348
	ldr	w8, [x0, 16]
	mov	w17, 60321
	mov	w18, 31129
	mov	w3, w9
	mov	w14, w8
	mov	w4, w10
	mov	w6, w11
	mov	w12, w13
	mov	x5, 0
	movk	w15, 0xca62, lsl 16
	movk	w16, 0x8f1b, lsl 16
	movk	w17, 0x6ed9, lsl 16
	movk	w18, 0x5a82, lsl 16
.L7:
	cmp	x5, 19
	bhi	.L3
	eor	w1, w4, w3
	mov	w30, w18
	and	w1, w1, w6
	eor	w1, w1, w3
.L4:
	ldr	w19, [x7, x5, lsl 2]
	ror	w2, w12, 27
	add	w1, w1, w30
	add	x5, x5, 1
	add	w2, w2, w19
	add	w1, w2, w1
	ror	w2, w6, 2
	add	w1, w1, w14
	mov	w6, w12
	mov	w14, w3
	cmp	x5, 80
	bne	.L9
	add	w13, w13, w1
	add	w10, w10, w2
	add	w11, w11, w12
	add	w9, w9, w4
	add	w8, w8, w3
	stp	w13, w11, [x0]
	stp	w10, w9, [x0, 8]
	str	w8, [x0, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 328]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L9:
	mov	w3, w4
	mov	w12, w1
	mov	w4, w2
	b	.L7
.L3:
	cmp	x5, 39
	bhi	.L5
	eor	w1, w6, w4
	mov	w30, w17
	eor	w1, w1, w3
	b	.L4
.L5:
	cmp	x5, 59
	bhi	.L6
	orr	w1, w4, w3
	and	w2, w4, w3
	and	w1, w1, w6
	mov	w30, w16
	orr	w1, w1, w2
	b	.L4
.L6:
	eor	w1, w6, w4
	mov	w30, w15
	eor	w1, w1, w3
	b	.L4
.L8:
	ldp	x29, x30, [sp, 336]
	ldr	x19, [sp, 352]
	add	sp, sp, 368
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
