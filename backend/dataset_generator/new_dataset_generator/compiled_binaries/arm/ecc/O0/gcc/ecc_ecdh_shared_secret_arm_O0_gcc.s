	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ecc_ecdh_shared_secret.c"
	.text
	.global	__aeabi_uldivmod
	.align	1
	.global	ecc_ecdh_shared
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_ecdh_shared, %function
ecc_ecdh_shared:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r6, r7
	stm	r6, {r0, r1, r2, r3}
	ldrd	r2, [r7]
	ldr	r1, [r7, #40]
	mul	r0, r3, r1
	ldr	r1, [r7, #44]
	mul	r1, r2, r1
	add	r1, r1, r0
	ldr	r0, [r7, #40]
	umull	r4, r5, r0, r2
	adds	r3, r1, r5
	mov	r5, r3
	mov	r2, #-1
	mov	r3, #0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
