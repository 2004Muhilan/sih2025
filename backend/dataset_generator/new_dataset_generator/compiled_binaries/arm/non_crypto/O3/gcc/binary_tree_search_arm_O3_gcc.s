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
	.file	"binary_tree_search.c"
	.text
	.align	1
	.p2align 2,,3
	.global	binary_tree_search
	.syntax unified
	.thumb
	.thumb_func
	.type	binary_tree_search, %function
binary_tree_search:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L3
	b	.L10
.L11:
	ldrd	r3, r0, [r0, #4]
	it	gt
	movgt	r0, r3
	cbz	r0, .L1
.L3:
	ldr	r3, [r0]
	cmp	r3, r1
	bne	.L11
	movs	r0, #1
.L1:
	bx	lr
.L10:
	bx	lr
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
