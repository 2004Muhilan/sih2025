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
	.file	"quicksort.c"
	.text
	.align	1
	.global	swap
	.syntax unified
	.thumb
	.thumb_func
	.type	swap, %function
swap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r1]
	str	r2, [r0]
	str	r3, [r1]
	bx	lr
	.size	swap, .-swap
	.align	1
	.global	partition
	.syntax unified
	.thumb
	.thumb_func
	.type	partition, %function
partition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, r0
	ldr	r6, [r0, r2, lsl #2]
	subs	r4, r1, #1
.L3:
	adds	r0, r4, #1
	cmp	r1, r2
	blt	.L5
	ldr	r1, [r3, r0, lsl #2]
	ldr	r4, [r3, r2, lsl #2]
	str	r4, [r3, r0, lsl #2]
	str	r1, [r3, r2, lsl #2]
	pop	{r4, r5, r6, pc}
.L5:
	ldr	r5, [r3, r1, lsl #2]
	cmp	r5, r6
	itttt	lt
	ldrlt	r4, [r3, r0, lsl #2]
	strlt	r5, [r3, r0, lsl #2]
	strlt	r4, [r3, r1, lsl #2]
	movlt	r4, r0
	adds	r1, r1, #1
	b	.L3
	.size	partition, .-partition
	.align	1
	.global	quicksort
	.syntax unified
	.thumb
	.thumb_func
	.type	quicksort, %function
quicksort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	mov	r4, r1
	mov	r7, r2
.L8:
	cmp	r4, r7
	bge	.L6
	mov	r1, r4
	mov	r2, r7
	mov	r0, r6
	bl	partition(PLT)
	mov	r1, r4
	mov	r5, r0
	subs	r2, r0, #1
	mov	r0, r6
	adds	r4, r5, #1
	bl	quicksort(PLT)
	b	.L8
.L6:
	pop	{r3, r4, r5, r6, r7, pc}
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
