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
	.file	"bubblesort.c"
	.text
	.align	1
	.global	bubblesort
	.syntax unified
	.thumb
	.thumb_func
	.type	bubblesort, %function
bubblesort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	beq	.L8
	push	{lr}
	mov	lr, r1
	sub	ip, r0, #4
	add	ip, ip, r1, lsl #2
.L3:
	mov	r3, r0
.L5:
	ldr	r2, [r3]
	ldr	r1, [r3, #4]!
	cmp	r2, r1
	itt	gt
	strgt	r1, [r3, #-4]
	strgt	r2, [r3]
	cmp	r3, ip
	bne	.L5
	add	lr, lr, #-1
	sub	ip, ip, #4
	cmp	lr, #1
	bne	.L3
	ldr	pc, [sp], #4
.L8:
	bx	lr
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
