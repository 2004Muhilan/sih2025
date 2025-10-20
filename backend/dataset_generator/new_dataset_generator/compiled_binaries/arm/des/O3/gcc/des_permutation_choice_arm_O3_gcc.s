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
	.file	"des_permutation_choice.c"
	.text
	.align	1
	.p2align 2,,3
	.global	des_pc1
	.syntax unified
	.thumb
	.thumb_func
	.type	des_pc1, %function
des_pc1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	movs	r0, #0
	mov	r5, r1
	movs	r2, #55
	mov	r1, r0
.L2:
	add	r3, r2, #9
	rsb	r4, r2, #23
	sub	lr, r2, #23
	sub	ip, r2, #32
	lsr	r3, r6, r3
	lsl	r4, r5, r4
	lsr	lr, r5, lr
	orrs	r3, r3, r4
	orr	r3, r3, lr
	rsb	lr, r2, #32
	and	r3, r3, #1
	lsl	ip, r3, ip
	lsr	lr, r3, lr
	orr	ip, ip, lr
	lsls	r3, r3, r2
	subs	r2, r2, #1
	orrs	r0, r0, r3
	orr	r1, ip, r1
	adds	r3, r2, #1
	bne	.L2
	pop	{r4, r5, r6, pc}
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
