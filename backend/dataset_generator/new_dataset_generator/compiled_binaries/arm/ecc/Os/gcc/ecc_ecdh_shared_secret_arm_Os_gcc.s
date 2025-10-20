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
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	add	r4, sp, #16
	stmdb	r4, {r0, r1, r2, r3}
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #28]
	muls	r1, r3, r1
	mla	r4, r2, r0, r1
	mov	r2, #-1
	umull	r0, r1, r0, r3
	movs	r3, #0
	add	r1, r1, r4
	bl	__aeabi_uldivmod(PLT)
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
