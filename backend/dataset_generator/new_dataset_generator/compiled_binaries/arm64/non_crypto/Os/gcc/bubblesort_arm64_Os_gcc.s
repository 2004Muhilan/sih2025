	.arch armv8-a
	.file	"bubblesort.c"
	.text
	.align	2
	.global	bubblesort
	.type	bubblesort, %function
bubblesort:
.LFB0:
	.cfi_startproc
	sub	x1, x1, #1
	sub	x5, x0, #4
.L2:
	cbnz	x1, .L5
	ret
.L5:
	mov	x2, 0
.L4:
	ldr	w3, [x0, x2, lsl 2]
	add	x2, x2, 1
	ldr	w4, [x0, x2, lsl 2]
	cmp	w3, w4
	ble	.L3
	str	w4, [x5, x2, lsl 2]
	str	w3, [x0, x2, lsl 2]
.L3:
	cmp	x2, x1
	bcc	.L4
	sub	x1, x1, #1
	b	.L2
	.cfi_endproc
.LFE0:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
