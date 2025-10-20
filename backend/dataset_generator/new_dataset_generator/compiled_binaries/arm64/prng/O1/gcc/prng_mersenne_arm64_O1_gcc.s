	.arch armv8-a
	.file	"prng_mersenne.c"
	.text
	.align	2
	.global	prng_mersenne_twist
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	mov	x3, 0
	mov	w6, 8403
	movk	w6, 0xd20d, lsl 16
	mov	w5, 624
	mov	w7, 45279
	movk	w7, 0x9908, lsl 16
.L2:
	add	w2, w3, 1
	smull	x1, w2, w6
	lsr	x1, x1, 32
	add	w1, w2, w1
	asr	w1, w1, 9
	sub	w1, w1, w2, asr 31
	msub	w1, w1, w5, w2
	ldr	w1, [x0, w1, sxtw 2]
	ldr	w2, [x0, x3, lsl 2]
	bfi	w2, w1, 0, 31
	add	w4, w3, 397
	smull	x1, w4, w6
	lsr	x1, x1, 32
	add	w1, w4, w1
	asr	w1, w1, 9
	sub	w1, w1, w4, asr 31
	msub	w1, w1, w5, w4
	ldr	w1, [x0, w1, sxtw 2]
	eor	w1, w1, w2, lsr 1
	sbfx	x2, x2, 0, 1
	and	w2, w2, w7
	eor	w1, w1, w2
	str	w1, [x0, x3, lsl 2]
	add	x3, x3, 1
	cmp	x3, 624
	bne	.L2
	str	wzr, [x0, 2496]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
