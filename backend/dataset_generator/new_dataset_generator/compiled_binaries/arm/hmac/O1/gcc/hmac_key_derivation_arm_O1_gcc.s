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
	.file	"hmac_key_derivation.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.global	hmac_key_derive
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_key_derive, %function
hmac_key_derive:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r0
	mov	r8, r1
	mov	r7, r2
	mov	r6, r3
	ldr	r5, [sp, #32]
	subs	r5, r5, #1
	movs	r4, #0
.L2:
	mov	r1, r8
	mov	r0, r4
	bl	__aeabi_uidivmod(PLT)
	mov	r10, r1
	mov	r1, r6
	mov	r0, r4
	bl	__aeabi_uidivmod(PLT)
	ldrb	ip, [r9, r10]	@ zero_extendqisi2
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	eor	ip, ip, r3
	strb	ip, [r5, #1]!
	adds	r4, r4, #1
	cmp	r4, #32
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
