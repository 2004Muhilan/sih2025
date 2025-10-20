	.arch armv8-a
	.file	"fibonacci.c"
	.text
	.align	2
	.global	fibonacci
	.type	fibonacci, %function
fibonacci:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bhi	.L2
	ldr	w0, [sp, 12]
	b	.L3
.L2:
	str	wzr, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 20]
	mov	w0, 2
	str	w0, [sp, 24]
	b	.L4
.L5:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	str	w0, [sp, 16]
	ldr	w0, [sp, 28]
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L4:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bls	.L5
	ldr	w0, [sp, 20]
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
