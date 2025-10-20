	.arch armv8-a
	.file	"bubblesort.c"
	.text
	.align	2
	.p2align 4,,11
	.global	bubblesort
	.type	bubblesort, %function
bubblesort:
.LFB0:
	.cfi_startproc
	cmp	x1, 1
	beq	.L1
	add	x4, x0, x1, lsl 2
	add	x5, x0, 4
	.p2align 3,,7
.L5:
	mov	x0, x5
	.p2align 3,,7
.L4:
	ldp	w2, w3, [x0, -4]
	cmp	w2, w3
	ble	.L3
	stp	w3, w2, [x0, -4]
.L3:
	add	x0, x0, 4
	cmp	x0, x4
	bne	.L4
	sub	x1, x1, #1
	sub	x4, x4, #4
	cmp	x1, 1
	bne	.L5
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
