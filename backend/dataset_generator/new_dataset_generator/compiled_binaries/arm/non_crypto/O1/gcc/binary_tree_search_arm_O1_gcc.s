	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"binary_tree_search.c"
	.text
	.align	1
	.global	binary_tree_search
	.syntax unified
	.thumb
	.thumb_func
	.type	binary_tree_search, %function
binary_tree_search:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L4
	push	{r3, lr}
	mov	r3, r0
	ldr	r2, [r0]
	cmp	r2, r1
	it	eq
	moveq	r0, #1
	beq	.L1
	ite	gt
	ldrgt	r0, [r3, #4]
	ldrle	r0, [r3, #8]
	bl	binary_tree_search(PLT)
.L1:
	pop	{r3, pc}
.L4:
	movs	r0, #0
	bx	lr
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
