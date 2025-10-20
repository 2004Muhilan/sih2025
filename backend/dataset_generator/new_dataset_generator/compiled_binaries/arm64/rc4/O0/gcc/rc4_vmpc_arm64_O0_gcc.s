	.arch armv8-a
	.file	"rc4_vmpc.c"
	.text
	.align	2
	.global	rc4_vmpc_variant
	.type	rc4_vmpc_variant, %function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 312]
	mov	x1, 0
	str	wzr, [sp, 44]
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	and	w2, w0, 255
	ldrsw	x0, [sp, 44]
	add	x1, sp, 56
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 255
	ble	.L3
	strb	wzr, [sp, 43]
	str	xzr, [sp, 48]
	b	.L4
.L5:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 43]
	add	w0, w0, w1
	and	w0, w0, 255
	sxtw	x0, w0
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 43]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrb	w0, [sp, 43]
	sxtw	x0, w0
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	sxtw	x0, w0
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 255
	and	w1, w1, 255
	csneg	w0, w0, w1, mi
	sxtw	x0, w0
	add	x1, sp, 56
	ldrb	w1, [x1, x0]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x3, x0
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L4:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L5
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 312]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
