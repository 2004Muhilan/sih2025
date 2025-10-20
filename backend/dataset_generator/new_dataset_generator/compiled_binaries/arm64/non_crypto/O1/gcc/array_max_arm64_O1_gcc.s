	.arch armv8-a
	.file	"array_max.c"
	.text
	.align	2
	.global	array_max
	.type	array_max, %function
array_max:
.LFB0:
	.cfi_startproc
	mov	x3, x0
	mov	w0, 0
	cbz	x1, .L1
	ldr	w0, [x3]
	cmp	x1, 1
	bls	.L1
	add	x2, x3, 4
	add	x3, x3, x1, lsl 2
.L3:
	ldr	w1, [x2], 4
	cmp	w0, w1
	csel	w0, w0, w1, ge
	cmp	x2, x3
	bne	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
