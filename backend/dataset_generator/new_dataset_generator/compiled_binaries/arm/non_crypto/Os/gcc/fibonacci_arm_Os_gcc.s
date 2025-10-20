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
	.file	"fibonacci.c"
	.text
	.align	1
	.global	fibonacci
	.syntax unified
	.thumb
	.thumb_func
	.type	fibonacci, %function
fibonacci:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	cmp	r0, #1
	push	{r4, lr}
	bls	.L1
	movs	r2, #2
	movs	r0, #1
	movs	r1, #0
.L3:
	mov	r4, r0
	adds	r2, r2, #1
	add	r0, r0, r1
	cmp	r3, r2
	mov	r1, r4
	bcs	.L3
.L1:
	pop	{r4, pc}
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
