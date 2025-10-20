	.arch armv8-a
	.file	"prng_seed.c"
	.text
	.align	2
	.p2align 4,,11
	.global	prng_seed
	.type	prng_seed, %function
prng_seed:
.LFB0:
	.cfi_startproc
	mov	w4, 35173
	mov	w3, 32144
	mov	w2, 25749
	movk	w4, 0x6c07, lsl 16
	movk	w3, 0x30f4, lsl 16
	eor	w4, w1, w4
	eor	w3, w1, w3
	movk	w2, 0x5f35, lsl 16
	eor	w2, w1, w2
	stp	w1, w4, [x0]
	stp	w3, w2, [x0, 8]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
