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
	.file	"array_sum.c"
	.text
	.align	1
	.p2align 2,,3
	.global	array_sum
	.syntax unified
	.thumb
	.thumb_func
	.type	array_sum, %function
array_sum:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L4
	mov	r3, r0
	movs	r0, #0
	add	r1, r3, r1, lsl #2
.L3:
	ldr	r2, [r3], #4
	add	r0, r0, r2
	cmp	r3, r1
	bne	.L3
	bx	lr
.L4:
	mov	r0, r1
	bx	lr
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
