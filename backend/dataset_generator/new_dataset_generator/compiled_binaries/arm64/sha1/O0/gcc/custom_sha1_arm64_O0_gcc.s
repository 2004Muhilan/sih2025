	.arch armv8-a
	.file	"custom_sha1.c"
	.text
	.align	2
	.global	sha1_transform
	.type	sha1_transform, %function
sha1_transform:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	stp	x29, x30, [sp, 400]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 400
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 392]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	str	w0, [sp, 32]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	str	w0, [sp, 36]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	str	w0, [sp, 40]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	str	w0, [sp, 44]
	str	wzr, [sp, 48]
	b	.L2
.L3:
	ldr	w0, [sp, 48]
	lsl	w0, w0, 2
	sxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	lsl	w1, w0, 24
	ldr	w0, [sp, 48]
	lsl	w0, w0, 2
	sxtw	x0, w0
	add	x0, x0, 1
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 16
	orr	w1, w1, w0
	ldr	w0, [sp, 48]
	lsl	w0, w0, 2
	sxtw	x0, w0
	add	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 8
	orr	w0, w1, w0
	ldr	w1, [sp, 48]
	lsl	w1, w1, 2
	sxtw	x1, w1
	add	x1, x1, 3
	ldr	x2, [sp]
	add	x1, x2, x1
	ldrb	w1, [x1]
	orr	w0, w0, w1
	mov	w2, w0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	w2, [x1, x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w0, [sp, 48]
	cmp	w0, 15
	ble	.L3
	mov	w0, 16
	str	w0, [sp, 52]
	b	.L4
.L5:
	ldr	w0, [sp, 52]
	sub	w0, w0, #3
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #8
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	eor	w1, w1, w0
	ldr	w0, [sp, 52]
	sub	w0, w0, #14
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	eor	w1, w1, w0
	ldr	w0, [sp, 52]
	sub	w0, w0, #16
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	eor	w0, w1, w0
	ror	w2, w0, 31
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	w2, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L4:
	ldr	w0, [sp, 52]
	cmp	w0, 79
	ble	.L5
	str	wzr, [sp, 56]
	b	.L6
.L11:
	ldr	w0, [sp, 56]
	cmp	w0, 19
	bgt	.L7
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	and	w1, w1, w0
	ldr	w0, [sp, 32]
	mvn	w2, w0
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 60]
	mov	w0, 31129
	movk	w0, 0x5a82, lsl 16
	str	w0, [sp, 64]
	b	.L8
.L7:
	ldr	w0, [sp, 56]
	cmp	w0, 39
	bgt	.L9
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	eor	w0, w1, w0
	ldr	w1, [sp, 40]
	eor	w0, w1, w0
	str	w0, [sp, 60]
	mov	w0, 60321
	movk	w0, 0x6ed9, lsl 16
	str	w0, [sp, 64]
	b	.L8
.L9:
	ldr	w0, [sp, 56]
	cmp	w0, 59
	bgt	.L10
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	orr	w1, w1, w0
	ldr	w0, [sp, 32]
	and	w1, w1, w0
	ldr	w2, [sp, 36]
	ldr	w0, [sp, 40]
	and	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 60]
	mov	w0, 48348
	movk	w0, 0x8f1b, lsl 16
	str	w0, [sp, 64]
	b	.L8
.L10:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	eor	w0, w1, w0
	ldr	w1, [sp, 40]
	eor	w0, w1, w0
	str	w0, [sp, 60]
	mov	w0, 49622
	movk	w0, 0xca62, lsl 16
	str	w0, [sp, 64]
.L8:
	ldr	w0, [sp, 28]
	ror	w1, w0, 27
	ldr	w0, [sp, 60]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w0, [sp, 64]
	add	w1, w1, w0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x2, sp, 72
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ror	w0, w0, 2
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 68]
	str	w0, [sp, 28]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L6:
	ldr	w0, [sp, 56]
	cmp	w0, 79
	ble	.L11
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [sp, 32]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [sp, 36]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w1, [sp, 40]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w1, [sp, 44]
	add	w1, w2, w1
	str	w1, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 392]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L12
	bl	__stack_chk_fail
.L12:
	ldp	x29, x30, [sp, 400]
	add	sp, sp, 416
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sha1_transform, .-sha1_transform
	.align	2
	.global	sha1_init
	.type	sha1_init, %function
sha1_init:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	mov	w1, 8961
	movk	w1, 0x6745, lsl 16
	str	w1, [x0]
	ldr	x0, [sp, 8]
	mov	w1, 43913
	movk	w1, 0xefcd, lsl 16
	str	w1, [x0, 4]
	ldr	x0, [sp, 8]
	mov	w1, 56574
	movk	w1, 0x98ba, lsl 16
	str	w1, [x0, 8]
	ldr	x0, [sp, 8]
	mov	w1, 21622
	movk	w1, 0x1032, lsl 16
	str	w1, [x0, 12]
	ldr	x0, [sp, 8]
	mov	w1, 57840
	movk	w1, 0xc3d2, lsl 16
	str	w1, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
