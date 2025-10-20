	.arch armv8-a
	.file	"prng_mersenne.c"
	.text
	.align	2
	.p2align 4,,11
	.global	prng_mersenne_twist
	.type	prng_mersenne_twist, %function
prng_mersenne_twist:
.LFB0:
	.cfi_startproc
	mov	w8, 42011
	mov	w9, 45279
	mov	x4, 0
	movk	w8, 0x1a41, lsl 16
	mov	w7, 624
	movk	w9, 0x9908, lsl 16
	.p2align 3,,7
.L2:
	add	w6, w4, 1
	add	w5, w4, 397
	ldr	w1, [x0, x4, lsl 2]
	lsr	w3, w6, 4
	lsr	w2, w5, 4
	umull	x3, w3, w8
	umull	x2, w2, w8
	lsr	x3, x3, 34
	lsr	x2, x2, 34
	msub	w3, w3, w7, w6
	msub	w2, w2, w7, w5
	ldr	w5, [x0, w3, sxtw 2]
	ldr	w3, [x0, w2, sxtw 2]
	bfi	w1, w5, 0, 31
	sbfx	x2, x1, 0, 1
	eor	w1, w3, w1, lsr 1
	and	w2, w2, w9
	eor	w1, w1, w2
	str	w1, [x0, x4, lsl 2]
	add	x4, x4, 1
	cmp	x4, 624
	bne	.L2
	str	wzr, [x0, 2496]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
