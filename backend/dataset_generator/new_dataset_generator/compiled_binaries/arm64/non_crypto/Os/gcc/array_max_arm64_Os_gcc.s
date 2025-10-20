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
	cbz	x1, .L5
	ldr	w0, [x0]
	mov	x2, 1
.L3:
	cmp	x2, x1
	bne	.L4
.L1:
	ret
.L4:
	ldr	w4, [x3, x2, lsl 2]
	add	x2, x2, 1
	cmp	w0, w4
	csel	w0, w0, w4, ge
	b	.L3
.L5:
	mov	w0, 0
	b	.L1
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
