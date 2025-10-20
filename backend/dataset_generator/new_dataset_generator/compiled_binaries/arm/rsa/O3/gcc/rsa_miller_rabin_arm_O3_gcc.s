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
	.file	"rsa_miller_rabin.c"
	.text
	.align	1
	.p2align 2,,3
	.global	rsa_miller_rabin
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_miller_rabin, %function
rsa_miller_rabin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2
	sbcs	r3, r1, #0
	bcc	.L3
	subs	r3, r0, #2
	adc	r1, r1, #-1
	cmp	r3, #2
	sbcs	r1, r1, #0
	bcc	.L4
	and	r0, r0, #1
	bx	lr
.L3:
	movs	r0, #0
	bx	lr
.L4:
	movs	r0, #1
	bx	lr
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
