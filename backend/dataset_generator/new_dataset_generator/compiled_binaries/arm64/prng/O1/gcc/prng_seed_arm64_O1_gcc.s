	.arch armv8-a
	.file	"prng_seed.c"
	.text
	.align	2
	.global	prng_seed
	.type	prng_seed, %function
prng_seed:
.LFB0:
	.cfi_startproc
	str	w1, [x0]
	mov	w2, 35173
	movk	w2, 0x6c07, lsl 16
	eor	w2, w1, w2
	str	w2, [x0, 4]
	mov	w2, 32144
	movk	w2, 0x30f4, lsl 16
	eor	w2, w1, w2
	str	w2, [x0, 8]
	mov	w2, 25749
	movk	w2, 0x5f35, lsl 16
	eor	w1, w1, w2
	str	w1, [x0, 12]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
