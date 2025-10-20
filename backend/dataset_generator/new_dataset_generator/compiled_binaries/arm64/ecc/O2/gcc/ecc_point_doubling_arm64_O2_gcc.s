	.arch armv8-a
	.file	"ecc_point_doubling.c"
	.text
	.align	2
	.p2align 4,,11
	.global	ecc_point_double
	.type	ecc_point_double, %function
ecc_point_double:
.LFB0:
	.cfi_startproc
	mov	x4, x0
	mul	x0, x0, x0
	lsl	x5, x1, 1
	add	x0, x0, x0, lsl 1
	add	x0, x0, x2
	udiv	x0, x0, x5
	udiv	x2, x0, x3
	msub	x2, x2, x3, x0
	mul	x5, x2, x2
	sub	x5, x5, x4, lsl 1
	udiv	x0, x5, x3
	msub	x0, x0, x3, x5
	sub	x4, x4, x0
	mul	x4, x4, x2
	sub	x4, x4, x1
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_point_double, .-ecc_point_double
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
