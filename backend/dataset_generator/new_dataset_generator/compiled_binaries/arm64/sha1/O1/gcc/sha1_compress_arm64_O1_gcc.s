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
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 336
	str	x19, [sp, 352]
	.cfi_offset 19, -16
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 328]
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
	add	x8, sp, 8
	add	x5, sp, 264
	mov	x1, x8
.L3:
	ldr	w2, [x1, 8]
	ldr	w3, [x1]
	eor	w2, w2, w3
	ldr	w3, [x1, 52]
	ldr	w4, [x1, 32]
	eor	w3, w3, w4
	eor	w2, w2, w3
	ror	w2, w2, 31
	str	w2, [x1, 64]
	add	x1, x1, 4
	cmp	x1, x5
	bne	.L3
	ldr	w18, [x0]
	ldr	w17, [x0, 4]
	ldr	w16, [x0, 8]
	ldr	w15, [x0, 12]
	ldr	w14, [x0, 16]
	mov	w9, w14
	mov	w5, w15
	mov	w6, w16
	mov	w3, w17
	mov	w7, w18
	mov	w4, 0
	mov	w13, 49622
	movk	w13, 0xca62, lsl 16
	mov	w11, 48348
	movk	w11, 0x8f1b, lsl 16
	mov	w10, 60321
	movk	w10, 0x6ed9, lsl 16
	mov	w12, 31129
	movk	w12, 0x5a82, lsl 16
	b	.L9
.L16:
	eor	w2, w6, w5
	and	w2, w2, w3
	eor	w2, w2, w5
	mov	w19, w12
	b	.L5
.L6:
	cmp	w4, 59
	bgt	.L7
	orr	w2, w6, w5
	and	w2, w2, w3
	and	w1, w6, w5
	orr	w2, w2, w1
	mov	w19, w11
.L5:
	ror	w1, w7, 27
	ldr	w30, [x8], 4
	add	w1, w1, w30
	add	w2, w2, w19
	add	w1, w1, w2
	add	w1, w1, w9
	ror	w3, w3, 2
	add	w4, w4, 1
.L10:
	mov	w9, w5
	mov	w5, w6
	mov	w6, w3
	mov	w3, w7
	mov	w7, w1
.L9:
	cmp	w4, 19
	ble	.L16
	cmp	w4, 39
	bgt	.L6
	eor	w2, w3, w6
	eor	w2, w2, w5
	mov	w19, w10
	b	.L5
.L7:
	ror	w1, w7, 27
	ldr	w2, [x8], 4
	add	w1, w1, w2
	eor	w2, w3, w6
	eor	w2, w2, w5
	add	w2, w2, w13
	add	w1, w1, w2
	add	w1, w1, w9
	ror	w3, w3, 2
	add	w4, w4, 1
	cmp	w4, 80
	bne	.L10
	add	w18, w18, w1
	str	w18, [x0]
	add	w17, w17, w7
	str	w17, [x0, 4]
	add	w16, w16, w3
	str	w16, [x0, 8]
	add	w15, w15, w6
	str	w15, [x0, 12]
	add	w14, w14, w5
	str	w14, [x0, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 328]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L17
	ldr	x19, [sp, 352]
	ldp	x29, x30, [sp, 336]
	add	sp, sp, 368
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
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
