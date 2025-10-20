	.arch armv8-a
	.file	"ecc_point_addition.c"
	.text
	.align	2
	.global	ecc_point_add
	.type	ecc_point_add, %function
ecc_point_add:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x0, x1, [sp, 32]
	stp	x2, x3, [sp, 16]
	str	x4, [sp, 8]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x1, x1, x0
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 32]
	sub	x0, x2, x0
	mul	x0, x1, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	mul	x1, x0, x0
	ldr	x0, [sp, 32]
	sub	x1, x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 64]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 64]
	sub	x1, x1, x0
	ldr	x0, [sp, 56]
	mul	x1, x1, x0
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 72]
	ldp	x0, x1, [sp, 64]
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
