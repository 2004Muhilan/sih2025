	.arch armv8-a
	.file	"sha256_compress.c"
	.text
	.align	2
	.global	sha256_compress
	.type	sha256_compress, %function
sha256_compress:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	mov	w4, 16
	add	x5, sp, 8
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 272
	stp	x19, x20, [sp, 288]
	str	x21, [sp, 304]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	ldp	q0, q1, [x1]
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	mov	x2, x5
	stp	q0, q1, [x5]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x5, 32]
.L2:
	ldr	w1, [x2, 4]
	ldr	w3, [x2, 56]
	add	w4, w4, 1
	add	x2, x2, 4
	ror	w6, w1, 18
	eor	w6, w6, w1, ror 7
	eor	w1, w6, w1, lsr 3
	ror	w6, w3, 19
	eor	w6, w6, w3, ror 17
	eor	w3, w6, w3, lsr 10
	ldr	w6, [x2, 32]
	add	w1, w1, w3
	ldr	w3, [x2, -4]
	add	w3, w3, w6
	add	w1, w1, w3
	str	w1, [x2, 60]
	cmp	w4, 64
	bne	.L2
	ldp	w17, w16, [x0]
	mov	w19, 12184
	ldp	w15, w14, [x0, 8]
	mov	w7, w16
	ldp	w13, w12, [x0, 16]
	mov	w30, w14
	ldp	w10, w8, [x0, 24]
	mov	w11, w12
	mov	w2, w13
	mov	w6, w15
	mov	w20, w8
	mov	w9, w10
	mov	w3, w17
	mov	x18, 0
	movk	w19, 0x428a, lsl 16
.L3:
	and	w21, w2, w11
	ror	w1, w2, 11
	eor	w1, w1, w2, ror 6
	bic	w4, w9, w2
	eor	w4, w4, w21
	eor	w1, w1, w2, ror 25
	add	w1, w1, w4
	ldr	w4, [x5, x18, lsl 2]
	and	w21, w7, w6
	add	x18, x18, 1
	add	w4, w4, w19
	add	w1, w1, w4
	ror	w4, w3, 13
	add	w1, w1, w20
	eor	w20, w7, w6
	eor	w4, w4, w3, ror 2
	and	w20, w20, w3
	eor	w20, w20, w21
	eor	w4, w4, w3, ror 22
	add	w4, w4, w20
	add	w21, w1, w30
	mov	w20, w9
	add	w1, w1, w4
	mov	w30, w6
	cmp	x18, 64
	bne	.L5
	add	w17, w17, w1
	add	w12, w12, w2
	add	w16, w16, w3
	add	w15, w15, w7
	add	w14, w14, w6
	add	w13, w13, w21
	add	w10, w10, w11
	add	w8, w8, w9
	stp	w17, w16, [x0]
	stp	w15, w14, [x0, 8]
	stp	w13, w12, [x0, 16]
	stp	w10, w8, [x0, 24]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L4
	bl	__stack_chk_fail
.L5:
	mov	w9, w11
	mov	w6, w7
	mov	w11, w2
	mov	w7, w3
	mov	w2, w21
	mov	w3, w1
	b	.L3
.L4:
	ldp	x29, x30, [sp, 272]
	ldp	x19, x20, [sp, 288]
	ldr	x21, [sp, 304]
	add	sp, sp, 320
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
