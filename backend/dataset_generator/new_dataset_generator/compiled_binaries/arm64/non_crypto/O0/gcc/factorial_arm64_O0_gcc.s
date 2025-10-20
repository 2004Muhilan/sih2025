	.arch armv8-a
	.file	"factorial.c"
	.text
	.align	2
	.global	factorial
	.type	factorial, %function
factorial:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L2
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L3
.L2:
	mov	x0, 1
	b	.L4
.L3:
	mov	x0, 1
	str	x0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 20]
	b	.L5
.L6:
	ldr	w0, [sp, 20]
	ldr	x1, [sp, 24]
	mul	x0, x1, x0
	str	x0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L5:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bls	.L6
	ldr	x0, [sp, 24]
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
