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
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 16
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
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
	mov	x5, x1
	add	x4, x1, 16
	adrp	x7, .LANCHOR0
	add	x7, x7, :lo12:.LANCHOR0
	add	x6, x1, 11
	mov	x8, 0
	mov	x3, sp
	b	.L3
.L12:
	ldrb	w1, [sp]
	ldrb	w0, [sp, 1]
	ldrb	w2, [sp, 2]
	strb	w2, [sp, 1]
	ldrb	w2, [sp, 3]
	strb	w2, [sp, 2]
	strb	w1, [sp, 3]
	ldrb	w1, [x7]
	eor	w0, w0, w1
	strb	w0, [sp]
	mov	x0, 0
.L5:
	negs	w1, w0
	and	w2, w0, 3
	and	w1, w1, 3
	csneg	w1, w2, w1, mi
	ldrb	w1, [x3, w1, sxtw]
	ldrb	w2, [x5, x0]
	eor	w1, w1, w2
	strb	w1, [x4, x0]
	add	x0, x0, 1
	cmp	x0, 16
	bne	.L5
	add	x5, x5, 16
	add	x4, x4, 16
	add	x7, x7, 1
	add	x6, x6, 16
	add	x8, x8, 16
	cmp	x8, 160
	beq	.L1
.L3:
	mov	x0, 1
.L4:
	add	x1, x0, x3
	ldrb	w2, [x6, x0]
	strb	w2, [x1, -1]
	add	x0, x0, 1
	cmp	x0, 5
	bne	.L4
	b	.L12
.L1:
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 8]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L13
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 32
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L13:
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
