	.arch armv8-a
	.file	"ecc_point_doubling.c"
	.text
	.align	2
	.global	ecc_point_double
	.type	ecc_point_double, %function
ecc_point_double:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x0, x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	mul	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldr	x0, [sp, 8]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	lsl	x0, x0, 1
	udiv	x0, x1, x0
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mul	x1, x0, x0
	ldr	x0, [sp, 16]
	lsl	x0, x0, 1
	sub	x0, x1, x0
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 48]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 48]
	sub	x1, x1, x0
	ldr	x0, [sp, 40]
	mul	x1, x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 56]
	ldp	x0, x1, [sp, 48]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
