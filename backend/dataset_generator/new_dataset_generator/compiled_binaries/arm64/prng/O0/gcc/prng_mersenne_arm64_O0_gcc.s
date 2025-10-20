	.arch armv8-a
	.file	"prng_mersenne.c"
	.text
	.align	2
	.global	prng_mersenne_twist
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 24]
	b	.L2
.L4:
	ldr	x0, [sp, 8]
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	and	w2, w0, -2147483648
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, 8403
	movk	w1, 0xd20d, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w3, w1, 9
	asr	w1, w0, 31
	sub	w1, w3, w1
	mov	w3, 624
	mul	w1, w1, w3
	sub	w1, w0, w1
	ldr	x0, [sp, 8]
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	and	w0, w0, 2147483647
	orr	w0, w2, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 397
	mov	w1, 8403
	movk	w1, 0xd20d, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 9
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 624
	mul	w1, w1, w2
	sub	w1, w0, w1
	ldr	x0, [sp, 8]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsr	w0, w0, 1
	eor	w2, w1, w0
	ldr	x0, [sp, 8]
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 8]
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 45279
	movk	w0, 0x9908, lsl 16
	eor	w2, w1, w0
	ldr	x0, [sp, 8]
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L3:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 623
	ble	.L4
	ldr	x0, [sp, 8]
	str	wzr, [x0, 2496]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
