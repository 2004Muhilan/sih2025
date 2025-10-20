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
	cbz	r2, .L4
	add	ip, r0, #-1
	subs	r1, r1, #1
	add	r2, r2, ip
	movs	r0, #0
	push	{lr}
.L3:
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2
	cmp	ip, r2
	eor	r3, r3, lr
	orr	r0, r0, r3
	bne	.L3
	clz	r0, r0
	lsrs	r0, r0, #5
	ldr	pc, [sp], #4
.L4:
	movs	r0, #1
	bx	lr
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
