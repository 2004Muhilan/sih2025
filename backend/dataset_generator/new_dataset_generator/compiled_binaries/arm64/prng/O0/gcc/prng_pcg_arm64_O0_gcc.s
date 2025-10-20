	.arch armv8-a
	.file	"prng_pcg.c"
	.text
	.align	2
	.global	prng_pcg
	.type	prng_pcg, %function
prng_pcg:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 32557
	movk	x0, 0x4c95, lsl 16
	movk	x0, 0xf42d, lsl 32
	movk	x0, 0x5851, lsl 48
	mul	x0, x1, x0
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	lsr	x1, x0, 18
	ldr	x0, [sp, 24]
	eor	x0, x1, x0
	lsr	x0, x0, 27
	str	w0, [sp, 16]
	ldr	x0, [sp, 24]
	lsr	x0, x0, 59
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 16]
	ror	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
