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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r4, [r0]	@ zero_extendqisi2
	ldrb	ip, [r0, #7]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldrb	r7, [r1]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #24
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r4, lsl #24
	ldrb	r4, [r0, #5]	@ zero_extendqisi2
	orr	ip, ip, r4, lsl #16
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #8
	ldrb	r4, [r0, #6]	@ zero_extendqisi2
	ldrb	r0, [r0, #3]	@ zero_extendqisi2
	orr	ip, ip, r4, lsl #8
	orrs	r3, r3, r0
	eor	r0, r7, ip
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	eors	r0, r0, r3
	eor	r3, r6, r0
	eor	r3, r3, ip
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	eor	lr, r5, r3
	eor	lr, lr, r0
	ldrb	r0, [r1, #5]	@ zero_extendqisi2
	eor	r8, r4, lr
	eor	r8, r8, r3
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	eor	r9, ip, r8
	ldrb	r1, [r1, #7]	@ zero_extendqisi2
	eor	r9, r9, lr
	mov	lr, #0
	eor	r10, r0, r9
	eor	r8, r10, r8
	eor	r10, r3, r8
	eor	r9, r10, r9
	eor	r10, r1, r9
	eor	r8, r10, r8
	eor	r7, r7, r8
	eor	r7, r7, r9
	eors	r6, r6, r7
	eor	r6, r6, r8
	eors	r5, r5, r6
	eors	r5, r5, r7
	eors	r4, r4, r5
	eors	r4, r4, r6
	eor	ip, ip, r4
	eor	ip, ip, r5
	eor	r0, r0, ip
	eors	r0, r0, r4
	eors	r3, r3, r0
	eor	r3, r3, ip
	eors	r1, r1, r3
	eors	r1, r1, r0
	lsrs	r0, r3, #24
	rev	r1, r1
	str	r1, [r2, #4]	@ unaligned
	bfi	lr, r0, #0, #8
	lsrs	r0, r3, #16
	lsrs	r1, r3, #8
	bfi	lr, r0, #8, #8
	bfi	lr, r1, #16, #8
	bfi	lr, r3, #24, #8
	str	lr, [r2]	@ unaligned
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
