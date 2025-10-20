	.arch armv8-a
	.file	"array_sum.c"
	.text
	.align	2
	.global	array_sum
	.type	array_sum, %function
array_sum:
.LFB0:
	.cfi_startproc
	cbz	x1, .L4
	mov	x2, x0
	add	x3, x0, x1, lsl 2
	mov	w0, 0
.L3:
	ldr	w1, [x2], 4
	add	w0, w0, w1
	cmp	x2, x3
	bne	.L3
.L1:
	ret
.L4:
	mov	w0, 0
	b	.L1
	.cfi_endproc
.LFE0:
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
