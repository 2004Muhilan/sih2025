	.arch armv8-a
	.file	"prng_xorshift.c"
	.text
	.align	2
	.global	prng_xorshift
	.type	prng_xorshift, %function
prng_xorshift:
.LFB0:
	.cfi_startproc
	ldr	w1, [x0]
	mov	x2, x0
	eor	w1, w1, w1, lsl 13
	eor	w1, w1, w1, lsr 17
	eor	w0, w1, w1, lsl 5
	str	w0, [x2]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
