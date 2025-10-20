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
	.file	"des_permutation_choice.c"
	.text
	.align	1
	.global	des_pc1
	.syntax unified
	.thumb
	.thumb_func
	.type	des_pc1, %function
des_pc1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	mov	lr, r1
	movs	r2, #55
	movs	r0, #0
	mov	r5, r0
.L2:
	add	r3, r2, #9
	rsb	ip, r2, #23
	sub	r1, r2, #23
	lsr	r3, r4, r3
	lsl	ip, lr, ip
	orr	r3, r3, ip
	lsr	r1, lr, r1
	orrs	r3, r3, r1
	and	r3, r3, #1
	sub	r1, r2, #32
	rsb	ip, r2, #32
	lsl	r1, r3, r1
	lsr	ip, r3, ip
	orr	r1, r1, ip
	lsls	r3, r3, r2
	orrs	r3, r3, r0
	orrs	r1, r1, r5
	mov	r0, r3
	mov	r5, r1
	subs	r2, r2, #1
	cmp	r2, #-1
	bne	.L2
	pop	{r4, r5, pc}
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
