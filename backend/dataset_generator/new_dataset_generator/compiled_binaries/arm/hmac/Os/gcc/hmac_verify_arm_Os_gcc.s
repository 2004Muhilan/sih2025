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
	.file	"hmac_verify.c"
	.text
	.align	1
	.global	hmac_verify
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_verify, %function
hmac_verify:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, lr}
	mov	r4, r3
.L2:
	cmp	r3, r2
	bne	.L3
	clz	r0, r4
	lsrs	r0, r0, #5
	pop	{r4, r5, r6, pc}
.L3:
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	ldrb	r6, [r1, r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	eors	r5, r5, r6
	orrs	r4, r4, r5
	b	.L2
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
