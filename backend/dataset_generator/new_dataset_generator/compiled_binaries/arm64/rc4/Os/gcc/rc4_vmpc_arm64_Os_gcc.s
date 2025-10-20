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
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	ldr	x3, [x2]
	str	x3, [sp, 264]
	mov	x3, 0
	add	x2, sp, 8
.L2:
	strb	w3, [x3, x2]
	add	x3, x3, 1
	cmp	x3, 256
	bne	.L2
	mov	x3, 0
	mov	w5, 0
.L3:
	cmp	x3, x1
	bne	.L4
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 264]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L5
	bl	__stack_chk_fail
.L4:
	ldrb	w4, [x0, x3]
	ldrb	w6, [x0, x3]
	ldrb	w4, [x2, x4]
	add	w5, w5, w4
	and	x4, x5, 255
	ldrb	w5, [x2, x4]
	ldrb	w4, [x2, x4]
	ldrb	w4, [x2, x4]
	ldrb	w4, [x2, x4]
	add	w4, w4, 1
	and	x4, x4, 255
	ldrb	w4, [x2, x4]
	eor	w4, w6, w4
	strb	w4, [x0, x3]
	add	x3, x3, 1
	b	.L3
.L5:
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
