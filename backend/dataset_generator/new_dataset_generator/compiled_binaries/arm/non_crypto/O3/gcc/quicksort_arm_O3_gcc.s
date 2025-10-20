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
	.file	"quicksort.c"
	.text
	.align	1
	.p2align 2,,3
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
	.p2align 2,,3
	.global	partition
	.syntax unified
	.thumb
	.thumb_func
	.type	partition, %function
partition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, r0
	push	{r4, r5, r6}
	add	r0, r0, r2, lsl #2
	cmp	r2, r1
	ldr	r5, [ip, r2, lsl #2]
	ble	.L7
	subs	r3, r1, #1
	add	r1, ip, r1, lsl #2
.L6:
	ldr	r4, [r1], #4
	cmp	r4, r5
	itttt	lt
	addlt	r3, r3, #1
	ldrlt	r6, [ip, r3, lsl #2]
	strlt	r4, [ip, r3, lsl #2]
	strlt	r6, [r1, #-4]
	cmp	r0, r1
	bne	.L6
	adds	r3, r3, #1
	ldr	r5, [ip, r2, lsl #2]
	mov	r0, r3
.L4:
	ldr	r1, [ip, r3, lsl #2]
	str	r5, [ip, r3, lsl #2]
	pop	{r4, r5, r6}
	str	r1, [ip, r2, lsl #2]
	bx	lr
.L7:
	mov	r0, r1
	mov	r3, r1
	b	.L4
	.size	partition, .-partition
	.align	1
	.p2align 2,,3
	.global	quicksort
	.syntax unified
	.thumb
	.thumb_func
	.type	quicksort, %function
quicksort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, r1
	ble	.L20
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r2
	mov	r6, r0
	add	r7, r0, r2, lsl #2
.L15:
	ldr	ip, [r7]
	subs	r5, r1, #1
	cmp	r8, r1
	ble	.L12
	add	r3, r6, r1, lsl #2
.L14:
	ldr	r4, [r3], #4
	cmp	ip, r4
	itttt	gt
	addgt	r5, r5, #1
	ldrgt	r0, [r6, r5, lsl #2]
	strgt	r4, [r6, r5, lsl #2]
	strgt	r0, [r3, #-4]
	cmp	r7, r3
	bne	.L14
	ldr	ip, [r7]
.L12:
	adds	r3, r5, #1
	mov	r2, r5
	mov	r0, r6
	ldr	r4, [r6, r3, lsl #2]
	str	ip, [r6, r3, lsl #2]
	str	r4, [r7]
	bl	quicksort(PLT)
	adds	r1, r5, #2
	cmp	r1, r8
	blt	.L15
	pop	{r4, r5, r6, r7, r8, pc}
.L20:
	bx	lr
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
