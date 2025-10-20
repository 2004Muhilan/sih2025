	.arch armv8-a
	.file	"binary_tree_search.c"
	.text
	.align	2
	.p2align 4,,11
	.global	binary_tree_search
	.type	binary_tree_search, %function
binary_tree_search:
.LFB0:
	.cfi_startproc
	cbz	x0, .L11
	.p2align 3,,7
.L3:
	ldr	w2, [x0]
	cmp	w2, w1
	beq	.L8
	ldp	x2, x0, [x0, 8]
	csel	x0, x0, x2, le
	cbnz	x0, .L3
.L11:
	mov	w0, 0
	ret
	.p2align 2,,3
.L8:
	mov	w0, 1
	ret
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
