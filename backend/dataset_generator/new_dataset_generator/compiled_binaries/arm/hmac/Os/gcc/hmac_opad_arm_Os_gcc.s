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
	.file	"hmac_opad.c"
	.text
	.align	1
	.global	hmac_create_opad
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_create_opad, %function
hmac_create_opad:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
.L3:
	cmp	r1, r3
	itee	ls
	movls	r4, #92
	ldrbhi	r4, [r0, r3]	@ zero_extendqisi2
	eorhi	r4, r4, #92
	strb	r4, [r2, r3]
	adds	r3, r3, #1
	cmp	r3, #64
	bne	.L3
	pop	{r4, pc}
	.size	hmac_create_opad, .-hmac_create_opad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
