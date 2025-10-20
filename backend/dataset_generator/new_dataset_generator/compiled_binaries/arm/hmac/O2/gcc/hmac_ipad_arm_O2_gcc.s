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
	.file	"hmac_ipad.c"
	.text
	.align	1
	.p2align 2,,3
	.global	hmac_create_ipad
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_create_ipad, %function
hmac_create_ipad:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	ip, r2, #-1
	movs	r3, #0
.L3:
	cmp	r1, r3
	mov	r2, #54
	it	hi
	ldrbhi	r2, [r0, r3]	@ zero_extendqisi2
	add	r3, r3, #1
	it	hi
	eorhi	r2, r2, #54
	cmp	r3, #64
	strb	r2, [ip, #1]!
	bne	.L3
	bx	lr
	.size	hmac_create_ipad, .-hmac_create_ipad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
