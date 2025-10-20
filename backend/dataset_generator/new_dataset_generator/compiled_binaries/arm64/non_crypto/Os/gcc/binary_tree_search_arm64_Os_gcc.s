	.arch armv8-a
	.file	"binary_tree_search.c"
	.text
	.align	2
	.global	binary_tree_search
	.type	binary_tree_search, %function
binary_tree_search:
.LFB0:
	.cfi_startproc
.L2:
	cbz	x0, .L5
	ldr	w2, [x0]
	cmp	w2, w1
	beq	.L6
	ldp	x2, x0, [x0, 8]
	csel	x0, x2, x0, gt
	b	.L2
.L5:
	mov	w0, 0
.L1:
	ret
.L6:
	mov	w0, 1
	b	.L1
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
