	.arch armv8-a
	.file	"binary_tree_search.c"
	.text
	.align	2
	.global	binary_tree_search
	.type	binary_tree_search, %function
binary_tree_search:
.LFB0:
	.cfi_startproc
	cbz	x0, .L4
	mov	x2, x0
	ldr	w3, [x0]
	mov	w0, 1
	cmp	w3, w1
	beq	.L7
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	ble	.L3
	ldr	x0, [x2, 8]
	bl	binary_tree_search
.L1:
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
.L3:
	.cfi_restore_state
	ldr	x0, [x2, 16]
	bl	binary_tree_search
	b	.L1
.L4:
	.cfi_def_cfa_offset 0
	.cfi_restore 29
	.cfi_restore 30
	mov	w0, 0
	ret
.L7:
	ret
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
