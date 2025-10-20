	.arch armv8-a
	.file	"aes_key_expansion.c"
	.text
	.align	2
	.global	aes_key_expansion
	.type	aes_key_expansion, %function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 16
	ldr	x3, [x2]
	str	x3, [sp, 8]
	mov	x3, 0
	mov	x2, 0
.L2:
	ldrb	w3, [x0, x2]
	strb	w3, [x1, x2]
	add	x2, x2, 1
	cmp	x2, 16
	bne	.L2
	adrp	x2, .LANCHOR0
	add	x1, x1, 16
	add	x2, x2, :lo12:.LANCHOR0
	mov	x6, sp
	mov	w4, 0
.L3:
	ldr	w0, [x1, -4]
	add	w4, w4, 16
	strb	w0, [sp, 3]
	ubfx	x3, x0, 16, 8
	strb	w3, [sp, 1]
	lsr	w3, w0, 24
	strb	w3, [sp, 2]
	ldrb	w3, [x2]
	ubfx	x0, x0, 8, 8
	eor	w0, w3, w0
	mov	x3, x1
	strb	w0, [sp]
	mov	w0, 0
.L4:
	and	x5, x0, 3
	ldrb	w7, [x3, -16]
	add	w0, w0, 1
	ldrb	w5, [x6, x5]
	eor	w5, w5, w7
	strb	w5, [x3], 1
	cmp	w0, 16
	bne	.L4
	add	x2, x2, 1
	add	x1, x1, 16
	cmp	w4, 160
	bne	.L3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 32
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
