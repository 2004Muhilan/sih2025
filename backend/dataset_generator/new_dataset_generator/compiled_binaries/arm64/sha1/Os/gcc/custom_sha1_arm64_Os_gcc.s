	.arch armv8-a
	.file	"custom_sha1.c"
	.text
	.align	2
	.global	sha1_transform
	.type	sha1_transform, %function
sha1_transform:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #368
	.cfi_def_cfa_offset 368
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	add	x12, sp, 8
	stp	x29, x30, [sp, 336]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 336
	ldp	w11, w10, [x0]
	ldp	w9, w8, [x0, 8]
	ldr	w7, [x0, 16]
	str	x19, [sp, 352]
	.cfi_offset 19, -16
	ldr	x3, [x2]
	str	x3, [sp, 328]
	mov	x3, 0
.L2:
	ldrb	w4, [x1, 1]
	add	x1, x1, 4
	ldrb	w2, [x1, -4]
	ldrb	w5, [x1, -1]
	lsl	w4, w4, 16
	orr	w2, w4, w2, lsl 24
	ldrb	w4, [x1, -2]
	orr	w4, w5, w4, lsl 8
	orr	w2, w2, w4
	str	w2, [x3, x12]
	add	x3, x3, 4
	cmp	x3, 64
	bne	.L2
	mov	x1, x12
	mov	w3, 16
.L3:
	ldr	w4, [x1, 32]
	add	w3, w3, 1
	ldr	w2, [x1, 52]
	add	x1, x1, 4
	ldr	w5, [x1, -4]
	eor	w2, w2, w4
	ldr	w4, [x1, 4]
	eor	w4, w4, w5
	eor	w2, w2, w4
	ror	w2, w2, 31
	str	w2, [x1, 60]
	cmp	w3, 80
	bne	.L3
	mov	w15, 49622
	mov	w16, 48348
	mov	w17, 60321
	mov	w18, 31129
	mov	w14, w7
	mov	w3, w8
	mov	w4, w9
	mov	w6, w10
	mov	w13, w11
	mov	x5, 0
	movk	w15, 0xca62, lsl 16
	movk	w16, 0x8f1b, lsl 16
	movk	w17, 0x6ed9, lsl 16
	movk	w18, 0x5a82, lsl 16
.L8:
	cmp	x5, 19
	bhi	.L4
	eor	w1, w4, w3
	mov	w30, w18
	and	w1, w1, w6
	eor	w1, w1, w3
.L5:
	ldr	w19, [x12, x5, lsl 2]
	ror	w2, w13, 27
	add	w1, w1, w30
	add	x5, x5, 1
	add	w2, w2, w19
	add	w1, w2, w1
	ror	w2, w6, 2
	add	w1, w1, w14
	mov	w6, w13
	mov	w14, w3
	cmp	x5, 80
	bne	.L10
	add	w11, w11, w1
	add	w9, w9, w2
	add	w10, w10, w13
	add	w8, w8, w4
	add	w7, w7, w3
	stp	w11, w10, [x0]
	stp	w9, w8, [x0, 8]
	str	w7, [x0, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 328]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L9
	bl	__stack_chk_fail
.L10:
	mov	w3, w4
	mov	w13, w1
	mov	w4, w2
	b	.L8
.L4:
	cmp	x5, 39
	bhi	.L6
	eor	w1, w6, w4
	mov	w30, w17
	eor	w1, w1, w3
	b	.L5
.L6:
	cmp	x5, 59
	bhi	.L7
	orr	w1, w4, w3
	and	w2, w4, w3
	and	w1, w1, w6
	mov	w30, w16
	orr	w1, w1, w2
	b	.L5
.L7:
	eor	w1, w6, w4
	mov	w30, w15
	eor	w1, w1, w3
	b	.L5
.L9:
	ldp	x29, x30, [sp, 336]
	ldr	x19, [sp, 352]
	add	sp, sp, 368
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	sha1_transform, .-sha1_transform
	.align	2
	.global	sha1_init
	.type	sha1_init, %function
sha1_init:
.LFB15:
	.cfi_startproc
	mov	x1, 8961
	movk	x1, 0x6745, lsl 16
	movk	x1, 0xab89, lsl 32
	movk	x1, 0xefcd, lsl 48
	str	x1, [x0]
	mov	x1, 56574
	movk	x1, 0x98ba, lsl 16
	movk	x1, 0x5476, lsl 32
	movk	x1, 0x1032, lsl 48
	str	x1, [x0, 8]
	mov	w1, 57840
	movk	w1, 0xc3d2, lsl 16
	str	w1, [x0, 16]
	ret
	.cfi_endproc
.LFE15:
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
