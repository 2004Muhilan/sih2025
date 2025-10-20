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
	.file	"ecc_ecdh_shared_secret.c"
	.text
	.align	1
	.p2align 2,,3
	.global	ecc_ecdh_shared
	.syntax unified
	.thumb
	.thumb_func
	.type	ecc_ecdh_shared, %function
ecc_ecdh_shared:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	add	ip, sp, #16
	stmdb	ip, {r0, r1, r2, r3}
	ldrd	r0, r1, [sp, #16]
	ldrd	r2, r3, [sp]
	mul	r3, r0, r3
	mla	r3, r1, r2, r3
	movs	r1, #0
	umull	r0, ip, r2, r0
	add	r3, r3, ip
	adds	r0, r0, r3
	adc	r0, r0, #0
	cmp	r0, #-1
	it	cs
	addcs	r0, r0, #1
	add	sp, sp, #16
	@ sp needed
	bx	lr
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
