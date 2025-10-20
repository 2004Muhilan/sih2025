	.arch armv8-a
	.file	"linked_list_insert.c"
	.text
	.align	2
	.global	linked_list_insert
	.type	linked_list_insert, %function
linked_list_insert:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L6
	b	.L4
.L5:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	str	x0, [sp, 24]
.L4:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L5
	b	.L1
.L6:
	nop
.L1:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
