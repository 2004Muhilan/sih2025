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
	.file	"hmac_key_derivation.c"
	.text
	.global	__aeabi_uidivmod
	.align	1
	.p2align 2,,3
	.global	hmac_key_derive
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_key_derive, %function
hmac_key_derive:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	ldr	r4, [sp, #32]
	mov	r7, r1
	mov	r6, r2
	add	r10, r4, #-1
	mov	r5, r3
	movs	r4, #0
.L2:
	mov	r0, r4
	mov	r1, r7
	bl	__aeabi_uidivmod(PLT)
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_uidivmod(PLT)
	ldrb	r3, [r6, r1]	@ zero_extendqisi2
	ldrb	ip, [r8, r9]	@ zero_extendqisi2
	adds	r4, r4, #1
	cmp	r4, #32
	eor	ip, ip, r3
	strb	ip, [r10, #1]!
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
