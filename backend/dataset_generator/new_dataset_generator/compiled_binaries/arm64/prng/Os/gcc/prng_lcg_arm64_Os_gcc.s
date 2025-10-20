	.arch armv8-a
	.file	"prng_lcg.c"
	.text
	.align	2
	.global	prng_lcg
	.type	prng_lcg, %function
prng_lcg:
.LFB0:
	.cfi_startproc
	mov	x2, x0
	mov	w3, 20077
	movk	w3, 0x41c6, lsl 16
	mov	w0, 12345
	ldr	w1, [x2]
	madd	w1, w1, w3, w0
	and	w0, w1, 2147483647
	str	w0, [x2]
	ret
	.cfi_endproc
.LFE0:
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
