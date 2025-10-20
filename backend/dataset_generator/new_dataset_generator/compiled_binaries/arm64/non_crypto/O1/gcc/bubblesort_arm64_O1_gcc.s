	.arch armv8-a
	.file	"bubblesort.c"
	.text
	.align	2
	.global	bubblesort
	.type	bubblesort, %function
bubblesort:
.LFB0:
	.cfi_startproc
	cmp	x1, 1
	beq	.L1
	add	x5, x0, x1, lsl 2
	b	.L3
.L4:
	add	x2, x2, 4
	cmp	x2, x5
	beq	.L7
.L5:
	ldr	w3, [x2, -4]
	ldr	w4, [x2]
	cmp	w3, w4
	ble	.L4
	str	w4, [x2, -4]
	str	w3, [x2]
	b	.L4
.L7:
	sub	x1, x1, #1
	sub	x5, x5, #4
	cmp	x1, 1
	beq	.L1
.L3:
	add	x2, x0, 4
	b	.L5
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
