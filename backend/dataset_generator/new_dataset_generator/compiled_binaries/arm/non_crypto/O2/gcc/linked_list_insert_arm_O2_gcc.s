	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"linked_list_insert.c"
	.text
	.align	1
	.p2align 2,,3
	.global	linked_list_insert
	.syntax unified
	.thumb
	.thumb_func
	.type	linked_list_insert, %function
linked_list_insert:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cbz	r3, .L1
.L3:
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L3
.L1:
	bx	lr
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
