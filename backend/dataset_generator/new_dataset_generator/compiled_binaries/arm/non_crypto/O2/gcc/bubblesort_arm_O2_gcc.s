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
	.file	"bubblesort.c"
	.text
	.align	1
	.p2align 2,,3
	.global	bubblesort
	.syntax unified
	.thumb
	.thumb_func
	.type	bubblesort, %function
bubblesort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	beq	.L12
	sub	ip, r0, #4
	push	{lr}
	add	ip, ip, r1, lsl #2
	mov	lr, r1
.L5:
	mov	r3, r0
.L4:
	ldr	r2, [r3]
	ldr	r1, [r3, #4]!
	cmp	r2, r1
	it	gt
	strdgt	r1, r2, [r3, #-4]
	cmp	r3, ip
	bne	.L4
	add	lr, lr, #-1
	sub	ip, ip, #4
	cmp	lr, #1
	bne	.L5
	ldr	pc, [sp], #4
.L12:
	bx	lr
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
