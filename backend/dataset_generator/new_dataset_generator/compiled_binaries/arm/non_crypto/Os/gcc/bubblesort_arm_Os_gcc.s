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
	push	{r4, r5, lr}
.L7:
	subs	r1, r1, #1
	cbz	r1, .L1
	mov	r3, r0
	movs	r2, #0
.L4:
	ldr	r4, [r3]
	adds	r2, r2, #1
	ldr	r5, [r3, #4]
	cmp	r4, r5
	it	gt
	strdgt	r5, r4, [r3]
	adds	r3, r3, #4
	cmp	r2, r1
	bcc	.L4
	b	.L7
.L1:
	pop	{r4, r5, pc}
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
