	.arch armv8-a
	.file	"linked_list_insert.c"
	.text
	.align	2
	.p2align 4,,11
	.global	linked_list_insert
	.type	linked_list_insert, %function
linked_list_insert:
.LFB0:
	.cfi_startproc
	ldr	x0, [x0]
	cbz	x0, .L1
	.p2align 3,,7
.L3:
	ldr	x0, [x0, 8]
	cbnz	x0, .L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
