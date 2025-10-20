	.arch armv8-a
	.file	"ecc_point_addition.c"
	.text
	.align	2
	.p2align 4,,11
	.global	ecc_point_add
	.type	ecc_point_add, %function
ecc_point_add:
.LFB0:
	.cfi_startproc
	mov	x5, x0
	sub	x3, x3, x1
	sub	x0, x2, x0
	add	x2, x5, x2
	mul	x3, x3, x0
	udiv	x0, x3, x4
	msub	x3, x0, x4, x3
	mul	x0, x3, x3
	sub	x2, x0, x2
	udiv	x0, x2, x4
	msub	x0, x0, x4, x2
	sub	x5, x5, x0
	mul	x5, x5, x3
	sub	x5, x5, x1
	udiv	x1, x5, x4
	msub	x1, x1, x4, x5
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_point_add, .-ecc_point_add
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
