	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"array_max.c"
	.text
	.align	1
	.global	array_max
	.syntax unified
	.thumb
	.thumb_func
	.type	array_max, %function
array_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r1, .L5
	mov	r2, r0
	add	r3, r3, r1, lsl #2
	ldr	r0, [r2], #4
.L3:
	cmp	r2, r3
	bne	.L4
	bx	lr
.L4:
	ldr	r1, [r2], #4
	cmp	r0, r1
	it	lt
	movlt	r0, r1
	b	.L3
.L5:
	mov	r0, r1
	bx	lr
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
