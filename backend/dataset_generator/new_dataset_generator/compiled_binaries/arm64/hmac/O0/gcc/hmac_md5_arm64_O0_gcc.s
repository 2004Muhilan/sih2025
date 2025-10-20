	.arch armv8-a
	.file	"hmac_md5.c"
	.text
	.align	2
	.global	hmac_md5
	.type	hmac_md5, %function
hmac_md5:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, 208]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 208
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	str	xzr, [sp, 64]
	b	.L2
.L7:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L3
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	ldrb	w1, [x0]
	mov	w0, 54
	eor	w0, w1, w0
	and	w0, w0, 255
	b	.L4
.L3:
	mov	w0, 54
.L4:
	ldr	x1, [sp, 64]
	add	x2, sp, 72
	strb	w0, [x2, x1]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L5
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	ldrb	w1, [x0]
	mov	w0, 92
	eor	w0, w1, w0
	and	w0, w0, 255
	b	.L6
.L5:
	mov	w0, 92
.L6:
	ldr	x1, [sp, 64]
	add	x2, sp, 136
	strb	w0, [x2, x1]
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L2:
	ldr	x0, [sp, 64]
	cmp	x0, 63
	bls	.L7
	str	wzr, [sp, 60]
	b	.L8
.L9:
	ldrsw	x0, [sp, 60]
	add	x1, sp, 72
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 60]
	add	x1, sp, 136
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 60]
	ldr	x3, [sp, 8]
	add	x0, x3, x0
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L8:
	ldr	w0, [sp, 60]
	cmp	w0, 15
	ble	.L9
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 200]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	ldp	x29, x30, [sp, 208]
	add	sp, sp, 224
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
