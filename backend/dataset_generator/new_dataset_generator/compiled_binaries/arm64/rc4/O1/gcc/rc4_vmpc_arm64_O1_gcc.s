	.arch armv8-a
	.file	"rc4_vmpc.c"
	.text
	.align	2
	.global	rc4_vmpc_variant
	.type	rc4_vmpc_variant, %function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	add	x3, sp, 8
	mov	w2, 0
.L2:
	strb	w2, [x3], 1
	add	w2, w2, 1
	cmp	w2, 256
	bne	.L2
	cbz	x1, .L1
	mov	x5, x0
	add	x6, x0, x1
	mov	w1, 0
	add	x3, sp, 8
.L4:
	ldrb	w4, [x5]
	ldrb	w0, [x3, w4, sxtw]
	add	w1, w1, w0
	and	w1, w1, 255
	ldrb	w1, [x3, w1, sxtw]
	ldrb	w0, [x3, w1, sxtw]
	ldrb	w0, [x3, w0, sxtw]
	add	w0, w0, 1
	negs	w2, w0
	and	w0, w0, 255
	and	w2, w2, 255
	csneg	w0, w0, w2, mi
	ldrb	w0, [x3, w0, sxtw]
	eor	w4, w4, w0
	strb	w4, [x5], 1
	cmp	x5, x6
	bne	.L4
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
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
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
