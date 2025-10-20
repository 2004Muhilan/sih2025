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
	push	{r4, r5, lr}
	mov	lr, r0
	ldr	r4, [r0, r2, lsl #2]
	add	ip, r1, #-1
	cmp	r2, r1
	ble	.L3
	lsls	r0, r2, #2
	add	r1, lr, r1, lsl #2
	add	r0, r0, lr
.L5:
	ldr	r3, [r1], #4
	cmp	r3, r4
	itttt	lt
	addlt	ip, ip, #1
	ldrlt	r5, [lr, ip, lsl #2]
	strlt	r3, [lr, ip, lsl #2]
	strlt	r5, [r1, #-4]
	cmp	r1, r0
	bne	.L5
.L3:
	add	r0, ip, #1
	ldr	r3, [lr, r0, lsl #2]
	ldr	r1, [lr, r2, lsl #2]
	str	r1, [lr, r0, lsl #2]
	str	r3, [lr, r2, lsl #2]
	pop	{r4, r5, pc}
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
	cmp	r1, r2
	blt	.L14
	bx	lr
.L14:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	bl	partition(PLT)
	mov	r7, r0
	subs	r2, r0, #1
	mov	r1, r5
	mov	r0, r6
	bl	quicksort(PLT)
	mov	r2, r4
	adds	r1, r7, #1
	mov	r0, r6
	bl	quicksort(PLT)
	pop	{r3, r4, r5, r6, r7, pc}
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
