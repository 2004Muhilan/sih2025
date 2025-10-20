	.arch armv8-a
	.file	"hmac_sha256.c"
	.text
	.align	2
	.global	hmac_sha256
	.type	hmac_sha256, %function
hmac_sha256:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 136]
	mov	x3, 0
	mov	x2, 1
	mov	w9, 54
	mov	w8, 92
	sub	x10, x0, #1
	add	x7, sp, 8
	add	x6, sp, 72
	b	.L3
.L6:
	mov	w5, w9
	mov	w0, w8
.L2:
	add	x3, x2, x7
	strb	w5, [x3, -1]
	add	x3, x2, x6
	strb	w0, [x3, -1]
	add	x2, x2, 1
	cmp	x2, 65
	beq	.L10
.L3:
	sub	x0, x2, #1
	cmp	x1, x0
	bls	.L6
	ldrb	w0, [x10, x2]
	eor	w5, w0, w9
	eor	w0, w0, w8
	b	.L2
.L10:
	mov	x0, 1
	sub	x3, x4, #1
	add	x5, sp, 8
	add	x4, sp, 72
.L4:
	add	x1, x0, x5
	add	x2, x0, x4
	ldrb	w1, [x1, -1]
	ldrb	w2, [x2, -1]
	eor	w1, w1, w2
	strb	w1, [x3, x0]
	add	x0, x0, 1
	cmp	x0, 33
	bne	.L4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L11
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L11:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
