	.arch armv8-a
	.file	"prng_lcg.c"
	.text
	.align	2
	.global	prng_lcg
	.type	prng_lcg, %function
prng_lcg:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	mov	w0, 20077
	movk	w0, 0x41c6, lsl 16
	mul	w1, w1, w0
	mov	w0, 12345
	add	w0, w1, w0
	and	w1, w0, 2147483647
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
