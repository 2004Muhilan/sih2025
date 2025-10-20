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
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, r1
	ble	.L39
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r1
	mov	r10, r0
	sub	sp, sp, #52
	mov	r4, r2
.L28:
	mov	r2, r4
	mov	r1, r9
	mov	r0, r10
	bl	partition(PLT)
	add	r8, r0, #-1
	mov	r6, r0
	cmp	r8, r9
	ble	.L12
	mov	r7, r0
	mov	r6, r8
	mov	fp, r10
	mov	r5, r4
.L27:
	mov	r2, r6
	mov	r1, r9
	mov	r0, fp
	bl	partition(PLT)
	add	r8, r0, #-1
	mov	r4, r0
	cmp	r8, r9
	ble	.L13
	strd	r6, r0, [sp, #20]
	mov	r6, r5
.L26:
	mov	r2, r8
	mov	r1, r9
	mov	r0, fp
	bl	partition(PLT)
	subs	r2, r0, #1
	cmp	r2, r9
	ble	.L14
	strd	r7, r8, [sp, #28]
	mov	r7, r2
	str	r0, [sp, #36]
.L25:
	mov	r2, r7
	mov	r1, r9
	mov	r0, fp
	bl	partition(PLT)
	subs	r5, r0, #1
	cmp	r5, r9
	ble	.L15
	str	r7, [sp, #40]
	mov	r7, r0
.L24:
	mov	r2, r5
	mov	r1, r9
	mov	r0, fp
	bl	partition(PLT)
	subs	r4, r0, #1
	mov	r8, r0
	cmp	r4, r9
	ble	.L16
	mov	r10, r4
.L23:
	mov	r2, r10
	mov	r1, r9
	mov	r0, fp
	bl	partition(PLT)
	subs	r2, r0, #1
	mov	lr, r0
	cmp	r2, r9
	ble	.L17
	mov	r3, r6
	mov	r6, r9
	mov	r9, r3
	str	r0, [sp]
.L22:
	mov	r1, r6
	mov	r0, fp
	bl	partition(PLT)
	subs	r4, r0, #1
	cmp	r4, r6
	str	r0, [sp, #16]
	ble	.L18
	strd	r7, r5, [sp, #4]
	mov	r5, r6
	str	r2, [sp, #12]
.L21:
	mov	r2, r4
	mov	r1, r5
	mov	r0, fp
	bl	partition(PLT)
	subs	r7, r0, #1
	mov	r6, r0
	cmp	r7, r5
	ble	.L19
	mov	r1, r5
.L20:
	mov	r2, r7
	mov	r0, fp
	str	r1, [sp, #44]
	bl	partition(PLT)
	ldr	r1, [sp, #44]
	mov	r5, r0
	subs	r2, r0, #1
	mov	r0, fp
	bl	quicksort(PLT)
	adds	r1, r5, #1
	cmp	r7, r1
	bgt	.L20
.L19:
	adds	r5, r6, #1
	cmp	r4, r5
	bgt	.L21
	ldrd	r7, r5, [sp, #4]
	ldr	r2, [sp, #12]
.L18:
	ldr	r6, [sp, #16]
	adds	r6, r6, #1
	cmp	r2, r6
	bgt	.L22
	ldr	lr, [sp]
	mov	r6, r9
.L17:
	add	r9, lr, #1
	cmp	r10, r9
	bgt	.L23
.L16:
	add	r9, r8, #1
	cmp	r5, r9
	bgt	.L24
	mov	r0, r7
	ldr	r7, [sp, #40]
.L15:
	add	r9, r0, #1
	cmp	r7, r9
	bgt	.L25
	ldrd	r7, r8, [sp, #28]
	ldr	r0, [sp, #36]
.L14:
	add	r9, r0, #1
	cmp	r8, r9
	bgt	.L26
	mov	r5, r6
	ldr	r4, [sp, #24]
	ldr	r6, [sp, #20]
.L13:
	add	r9, r4, #1
	cmp	r6, r9
	bgt	.L27
	mov	r6, r7
	mov	r10, fp
	mov	r4, r5
.L12:
	add	r9, r6, #1
	cmp	r9, r4
	blt	.L28
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L39:
	bx	lr
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
