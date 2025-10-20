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
	.file	"fibonacci.c"
	.text
	.align	1
	.p2align 2,,3
	.global	fibonacci
	.syntax unified
	.thumb
	.thumb_func
	.type	fibonacci, %function
fibonacci:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, r0
	cmp	r0, #1
	bls	.L4
	movs	r3, #2
	movs	r0, #1
	movs	r2, #0
.L3:
	mov	r1, r0
	adds	r3, r3, #1
	add	r0, r0, r2
	cmp	ip, r3
	mov	r2, r1
	bcs	.L3
	bx	lr
.L4:
	bx	lr
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
