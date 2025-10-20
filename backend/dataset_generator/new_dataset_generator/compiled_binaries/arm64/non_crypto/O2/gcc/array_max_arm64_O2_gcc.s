	.arch armv8-a
	.file	"array_max.c"
	.text
	.align	2
	.p2align 4,,11
	.global	array_max
	.type	array_max, %function
array_max:
.LFB0:
	.cfi_startproc
	mov	x2, x0
	mov	w0, 0
	cbz	x1, .L1
	ldr	w0, [x2]
	cmp	x1, 1
	beq	.L1
	add	x3, x2, x1, lsl 2
	add	x1, x2, 4
	.p2align 3,,7
.L3:
	ldr	w2, [x1], 4
	cmp	w0, w2
	csel	w0, w0, w2, ge
	cmp	x1, x3
	bne	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
