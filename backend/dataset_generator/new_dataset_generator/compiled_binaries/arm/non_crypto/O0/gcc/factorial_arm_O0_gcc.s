	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"factorial.c"
	.text
	.align	1
	.global	factorial
	.syntax unified
	.thumb
	.thumb_func
	.type	factorial, %function
factorial:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, [r7, #4]
	cmp	r1, #0
	beq	.L2
	ldr	r1, [r7, #4]
	cmp	r1, #1
	bne	.L3
.L2:
	mov	r2, #1
	mov	r3, #0
	b	.L4
.L3:
	mov	r0, #1
	mov	r1, #0
	strd	r0, [r7, #16]
	movs	r1, #2
	str	r1, [r7, #12]
	b	.L5
.L6:
	ldr	r1, [r7, #12]
	movs	r0, #0
	mov	r4, r1
	mov	r5, r0
	ldr	r1, [r7, #20]
	mul	r0, r4, r1
	ldr	r1, [r7, #16]
	mul	r1, r5, r1
	add	r1, r1, r0
	ldr	r0, [r7, #16]
	umull	r2, r3, r0, r4
	add	r1, r1, r3
	mov	r3, r1
	strd	r2, [r7, #16]
	strd	r2, [r7, #16]
	ldr	r1, [r7, #12]
	adds	r1, r1, #1
	str	r1, [r7, #12]
.L5:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	cmp	r0, r1
	bls	.L6
	ldrd	r2, [r7, #16]
.L4:
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
