	.arch armv8-a
	.file	"prng_mersenne.c"
	.text
	.align	2
	.global	prng_mersenne_twist
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	mov	w6, 45279
	mov	x2, 0
	mov	w4, 624
	movk	w6, 0x9908, lsl 16
.L2:
	add	w3, w2, 1
	add	w5, w2, 397
	udiv	w1, w3, w4
	msub	w1, w1, w4, w3
	ldr	w3, [x0, w1, sxtw 2]
	ldr	w1, [x0, x2, lsl 2]
	bfi	w1, w3, 0, 31
	udiv	w3, w5, w4
	msub	w3, w3, w4, w5
	ldr	w3, [x0, w3, sxtw 2]
	eor	w3, w3, w1, lsr 1
	sbfx	x1, x1, 0, 1
	and	w1, w1, w6
	eor	w1, w3, w1
	str	w1, [x0, x2, lsl 2]
	add	x2, x2, 1
	cmp	x2, 624
	bne	.L2
	str	wzr, [x0, 2496]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
