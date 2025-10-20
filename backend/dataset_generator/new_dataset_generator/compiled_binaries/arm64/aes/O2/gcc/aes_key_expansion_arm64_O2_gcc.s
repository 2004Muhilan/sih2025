	.arch armv8-a
	.file	"aes_key_expansion.c"
	.text
	.align	2
	.p2align 4,,11
	.global	aes_key_expansion
	.type	aes_key_expansion, %function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	x3, x1
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 16
	ldr	x1, [x2]
	str	x1, [sp, 8]
	mov	x1, 0
	.p2align 3,,7
.L2:
	ldrb	w2, [x0, x1]
	strb	w2, [x3, x1]
	add	x1, x1, 1
	cmp	x1, 16
	bne	.L2
	adrp	x8, .LANCHOR0
	add	x4, x3, 16
	add	x11, x3, 160
	add	x8, x8, :lo12:.LANCHOR0
	mov	x5, sp
	.p2align 3,,7
.L3:
	ldr	w6, [x3, 12]
	mov	w2, 0
	ldrb	w1, [x8]
	mov	x0, 1
	ldrb	w7, [x3]
	ubfx	x9, x6, 8, 8
	ubfx	x10, x6, 16, 8
	eor	w1, w1, w9
	lsr	w9, w6, 24
	and	w1, w1, 255
	eor	w7, w1, w7
	strb	w7, [x3, 16]
	bfi	w2, w1, 0, 8
	bfi	w2, w10, 8, 8
	bfi	w2, w9, 16, 8
	bfi	w2, w6, 24, 8
	str	w2, [sp]
	.p2align 3,,7
.L4:
	and	w1, w0, 3
	ldrb	w2, [x3, x0]
	ldrb	w1, [x5, w1, sxtw]
	eor	w1, w1, w2
	strb	w1, [x4, x0]
	add	x0, x0, 1
	cmp	x0, 16
	bne	.L4
	add	x3, x3, 16
	add	x8, x8, 1
	add	x4, x4, 16
	cmp	x3, x11
	bne	.L3
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L11
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 32
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
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
