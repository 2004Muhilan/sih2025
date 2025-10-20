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
	.file	"custom_des.c"
	.text
	.align	1
	.global	des_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	des_encrypt, %function
des_encrypt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, r7, lr}
	subs	r0, r0, #1
	movs	r5, #56
	mov	r4, r3
.L2:
	ldrb	r7, [r0, #1]!	@ zero_extendqisi2
	sub	r6, r5, #32
	rsb	ip, r5, #32
	lsl	r6, r7, r6
	lsr	ip, r7, ip
	orr	r6, r6, ip
	lsls	r7, r7, r5
	subs	r5, r5, #8
	orrs	r3, r3, r7
	orrs	r4, r4, r6
	cmn	r5, #8
	bne	.L2
	movs	r0, #0
.L3:
	eors	r4, r4, r3
	mov	r5, r3
	and	r3, r0, #7
	adds	r0, r0, #1
	cmp	r0, #16
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	eor	r3, r3, r4
	mov	r4, r5
	bne	.L3
	subs	r2, r2, #1
	movs	r1, #56
.L4:
	rsb	r6, r1, #32
	sub	r4, r1, #32
	lsr	r0, r3, r1
	subs	r1, r1, #8
	lsl	r6, r5, r6
	cmn	r1, #8
	orr	r0, r0, r6
	lsr	r4, r5, r4
	orr	r0, r0, r4
	strb	r0, [r2, #1]!
	bne	.L4
	pop	{r4, r5, r6, r7, pc}
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
