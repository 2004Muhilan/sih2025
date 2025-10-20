	.arch armv8-a
	.file	"ecc_scalar_multiplication.c"
	.text
	.align	2
	.p2align 4,,11
	.global	ecc_scalar_mult
	.type	ecc_scalar_mult, %function
ecc_scalar_mult:
.LFB0:
	.cfi_startproc
	mov	x0, 0
	mov	x1, 0
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
