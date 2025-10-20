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
	.file	"custom_des.c"
	.text
	.align	1
	.p2align 2,,3
	.global	des_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	des_encrypt, %function
des_encrypt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, lr}
	mov	ip, r3
	subs	r6, r0, #1
	mov	lr, #56
.L2:
	ldrb	r4, [r6, #1]!	@ zero_extendqisi2
	sub	r0, lr, #32
	rsb	r5, lr, #32
	lsl	r0, r4, r0
	lsr	r5, r4, r5
	orrs	r0, r0, r5
	lsl	r4, r4, lr
	sub	lr, lr, #8
	orrs	r3, r3, r4
	orr	ip, r0, ip
	cmn	lr, #8
	bne	.L2
	movs	r0, #0
.L3:
	and	r5, r0, #7
	eor	r4, ip, r3
	mov	lr, r3
	mov	ip, r3
	adds	r0, r0, #1
	ldrb	r3, [r1, r5]	@ zero_extendqisi2
	cmp	r0, #16
	eor	r3, r3, r4
	bne	.L3
	subs	r2, r2, #1
	movs	r1, #56
.L4:
	rsb	r5, r1, #32
	sub	r4, r1, #32
	lsr	r0, r3, r1
	subs	r1, r1, #8
	lsl	r5, lr, r5
	cmn	r1, #8
	lsr	r4, lr, r4
	orr	r0, r0, r5
	orr	r0, r0, r4
	strb	r0, [r2, #1]!
	bne	.L4
	pop	{r4, r5, r6, pc}
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
