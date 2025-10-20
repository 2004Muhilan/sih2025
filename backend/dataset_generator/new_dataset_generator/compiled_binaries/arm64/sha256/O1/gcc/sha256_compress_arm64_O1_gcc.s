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
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 272
	stp	x19, x20, [sp, 288]
	str	x21, [sp, 304]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	mov	x2, 1
	add	x5, sp, 8
	sub	x4, x1, #4
.L2:
	add	x1, x5, x2, lsl 2
	ldr	w3, [x4, x2, lsl 2]
	str	w3, [x1, -4]
	add	x2, x2, 1
	cmp	x2, 17
	bne	.L2
	add	x7, sp, 8
	add	x5, sp, 200
	mov	x2, x7
.L3:
	ldr	w1, [x2, 4]
	ldr	w3, [x2, 56]
	ror	w4, w1, 18
	eor	w4, w4, w1, ror 7
	eor	w1, w4, w1, lsr 3
	ror	w4, w3, 19
	eor	w4, w4, w3, ror 17
	eor	w3, w4, w3, lsr 10
	add	w1, w1, w3
	ldr	w3, [x2]
	ldr	w4, [x2, 36]
	add	w3, w3, w4
	add	w1, w1, w3
	str	w1, [x2, 64]
	add	x2, x2, 4
	cmp	x2, x5
	bne	.L3
	ldr	w19, [x0]
	ldr	w30, [x0, 4]
	ldr	w18, [x0, 8]
	ldr	w17, [x0, 12]
	ldr	w16, [x0, 16]
	ldr	w15, [x0, 20]
	ldr	w14, [x0, 24]
	ldr	w13, [x0, 28]
	add	x12, x7, 256
	mov	w20, w13
	mov	w8, w14
	mov	w9, w15
	mov	w3, w16
	mov	w10, w17
	mov	w5, w18
	mov	w6, w30
	mov	w4, w19
	mov	w11, 12184
	movk	w11, 0x428a, lsl 16
	b	.L4
.L6:
	mov	w8, w9
	mov	w9, w3
	mov	w3, w21
	mov	w5, w6
	mov	w6, w4
	mov	w4, w1
.L4:
	ror	w1, w3, 11
	eor	w1, w1, w3, ror 6
	eor	w1, w1, w3, ror 25
	bic	w2, w8, w3
	and	w21, w3, w9
	eor	w2, w2, w21
	add	w1, w1, w2
	ldr	w2, [x7], 4
	add	w2, w2, w11
	add	w1, w1, w2
	add	w1, w1, w20
	ror	w2, w4, 13
	eor	w2, w2, w4, ror 2
	eor	w2, w2, w4, ror 22
	eor	w20, w6, w5
	and	w20, w20, w4
	and	w21, w6, w5
	eor	w20, w20, w21
	add	w2, w2, w20
	add	w21, w1, w10
	add	w1, w1, w2
	mov	w10, w5
	mov	w20, w8
	cmp	x7, x12
	bne	.L6
	add	w19, w19, w1
	str	w19, [x0]
	add	w30, w30, w4
	str	w30, [x0, 4]
	add	w18, w18, w6
	str	w18, [x0, 8]
	add	w17, w17, w5
	str	w17, [x0, 12]
	add	w16, w16, w21
	str	w16, [x0, 16]
	add	w15, w15, w3
	str	w15, [x0, 20]
	add	w14, w14, w9
	str	w14, [x0, 24]
	add	w13, w13, w8
	str	w13, [x0, 28]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L10
	ldp	x19, x20, [sp, 288]
	ldr	x21, [sp, 304]
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 320
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L10:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
