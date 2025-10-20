	.arch armv8-a
	.file	"prng_pcg.c"
	.text
	.align	2
	.global	prng_pcg
	.type	prng_pcg, %function
prng_pcg:
.LFB0:
	.cfi_startproc
	ldr	x1, [x0]
	mov	x2, 32557
	movk	x2, 0x4c95, lsl 16
	movk	x2, 0xf42d, lsl 32
	movk	x2, 0x5851, lsl 48
	mul	x2, x1, x2
	add	x2, x2, 1
	str	x2, [x0]
	eor	x0, x1, x1, lsr 18
	lsr	x0, x0, 27
	lsr	x1, x1, 59
	ror	w0, w0, w1
	ret
	.cfi_endproc
.LFE0:
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
