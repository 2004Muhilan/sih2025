	.arch armv8-a
	.file	"aes_key_expansion.c"
	.text
	.section	.rodata
	.align	3
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.text
	.align	2
	.global	aes_key_expansion
	.type	aes_key_expansion, %function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 32]
	b	.L2
.L3:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 32]
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w0, [sp, 32]
	cmp	w0, 15
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L4
.L9:
	str	wzr, [sp, 40]
	b	.L5
.L6:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	lsl	w0, w0, 4
	add	w1, w0, 12
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 40]
	add	x1, sp, 48
	strb	w2, [x1, x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L5:
	ldr	w0, [sp, 40]
	cmp	w0, 3
	ble	.L6
	ldrb	w0, [sp, 48]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 49]
	strb	w0, [sp, 48]
	ldrb	w0, [sp, 50]
	strb	w0, [sp, 49]
	ldrb	w0, [sp, 51]
	strb	w0, [sp, 50]
	ldrb	w0, [sp, 31]
	strb	w0, [sp, 51]
	ldrb	w1, [sp, 48]
	ldr	w0, [sp, 36]
	sub	w3, w0, #1
	adrp	x0, rcon
	add	x2, x0, :lo12:rcon
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	strb	w0, [sp, 48]
	str	wzr, [sp, 44]
	b	.L7
.L8:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	lsl	w1, w0, 4
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	w0, [sp, 44]
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 36]
	lsl	w3, w0, 4
	ldr	w0, [sp, 44]
	add	w0, w3, w0
	sxtw	x0, w0
	ldr	x3, [sp]
	add	x0, x3, x0
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 44]
	cmp	w0, 15
	ble	.L8
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 36]
	cmp	w0, 10
	ble	.L9
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
