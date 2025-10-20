	.arch armv8-a
	.file	"binary_tree_search.c"
	.text
	.align	2
	.global	binary_tree_search
	.type	binary_tree_search, %function
binary_tree_search:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	b	.L3
.L4:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L5
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 20]
	bl	binary_tree_search
	b	.L3
.L5:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	ldr	w1, [sp, 20]
	bl	binary_tree_search
.L3:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
