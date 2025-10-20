	.arch armv8-a
	.file	"ecc_scalar_multiplication.c"
	.text
	.align	2
	.global	ecc_scalar_mult
	.type	ecc_scalar_mult, %function
ecc_scalar_mult:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x0, x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	str	xzr, [sp, 32]
	str	xzr, [sp, 40]
	ldp	x0, x1, [sp, 16]
	stp	x0, x1, [sp, 48]
	b	.L2
.L5:
	ldr	x0, [sp, 8]
	lsr	x0, x0, 1
	str	x0, [sp, 8]
.L2:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L5
	ldp	x0, x1, [sp, 32]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
