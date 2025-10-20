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
	.file	"hmac_verify.c"
	.text
	.align	1
	.p2align 2,,3
	.global	hmac_verify
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_verify, %function
hmac_verify:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	beq	.L6
	subs	r3, r2, #1
	push	{r4, r5, r6, r7, lr}
	cmp	r3, #3
	bls	.L7
	bic	r6, r2, #3
	mov	ip, r0
	mov	r4, r1
	mov	lr, #0
	adds	r7, r0, r6
.L4:
	ldr	r5, [ip], #4	@ unaligned
	ldr	r3, [r4], #4	@ unaligned
	cmp	ip, r7
	eor	r3, r3, r5
	orr	lr, r3, lr
	bne	.L4
	ubfx	r3, lr, #8, #8
	ubfx	r4, lr, #16, #8
	orr	r3, lr, r3
	cmp	r2, r6
	orr	r3, r3, r4
	orr	r3, r3, lr, lsr #24
	uxtb	r3, r3
	beq	.L5
.L3:
	ldrb	r5, [r1, r6]	@ zero_extendqisi2
	ldrb	r4, [r0, r6]	@ zero_extendqisi2
	eors	r4, r4, r5
	adds	r5, r6, #1
	orrs	r3, r3, r4
	cmp	r2, r5
	bls	.L5
	ldrb	r4, [r0, r5]	@ zero_extendqisi2
	ldrb	r5, [r1, r5]	@ zero_extendqisi2
	eors	r4, r4, r5
	adds	r5, r6, #2
	orrs	r3, r3, r4
	cmp	r2, r5
	uxtb	r3, r3
	bls	.L5
	adds	r4, r6, #3
	ldrb	r6, [r0, r5]	@ zero_extendqisi2
	cmp	r2, r4
	ldrb	r5, [r1, r5]	@ zero_extendqisi2
	eor	r5, r5, r6
	it	hi
	ldrbhi	r2, [r1, r4]	@ zero_extendqisi2
	orr	r3, r3, r5
	ittt	hi
	ldrbhi	r1, [r0, r4]	@ zero_extendqisi2
	eorhi	r2, r2, r1
	orrhi	r3, r3, r2
.L5:
	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5, r6, r7, pc}
.L6:
	movs	r0, #1
	bx	lr
.L7:
	movs	r6, #0
	mov	r3, r6
	b	.L3
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
