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
	.file	"factorial.c"
	.text
	.align	1
	.global	factorial
	.syntax unified
	.thumb
	.thumb_func
	.type	factorial, %function
factorial:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0
	cmp	r0, #1
	push	{r4, lr}
	bls	.L4
	movs	r3, #2
	movs	r0, #1
	movs	r1, #0
.L3:
	mul	r4, r3, r1
	umull	r0, r1, r0, r3
	adds	r3, r3, #1
	cmp	r2, r3
	add	r1, r1, r4
	bcs	.L3
.L1:
	pop	{r4, pc}
.L4:
	movs	r0, #1
	movs	r1, #0
	b	.L1
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
