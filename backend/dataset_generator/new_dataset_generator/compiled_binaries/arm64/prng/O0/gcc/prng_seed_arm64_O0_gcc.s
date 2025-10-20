	.arch armv8-a
	.file	"prng_seed.c"
	.text
	.align	2
	.global	prng_seed
	.type	prng_seed, %function
prng_seed:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 4]
	str	w1, [x0]
	ldr	w1, [sp, 4]
	mov	w0, 35173
	movk	w0, 0x6c07, lsl 16
	eor	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0, 4]
	ldr	w1, [sp, 4]
	mov	w0, 32144
	movk	w0, 0x30f4, lsl 16
	eor	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0, 8]
	ldr	w1, [sp, 4]
	mov	w0, 25749
	movk	w0, 0x5f35, lsl 16
	eor	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0, 12]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
