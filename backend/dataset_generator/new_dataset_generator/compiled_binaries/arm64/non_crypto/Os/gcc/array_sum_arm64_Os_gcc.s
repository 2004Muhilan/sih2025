	.arch armv8-a
	.file	"array_sum.c"
	.text
	.align	2
	.global	array_sum
	.type	array_sum, %function
array_sum:
.LFB0:
	.cfi_startproc
	mov	x3, x0
	mov	x2, 0
	mov	w0, 0
.L2:
	cmp	x2, x1
	bne	.L3
	ret
.L3:
	ldr	w4, [x3, x2, lsl 2]
	add	x2, x2, 1
	add	w0, w0, w4
	b	.L2
	.cfi_endproc
.LFE0:
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
