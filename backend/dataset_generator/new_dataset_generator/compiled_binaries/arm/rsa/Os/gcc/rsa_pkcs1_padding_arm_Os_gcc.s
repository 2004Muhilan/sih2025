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
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	1
	.global	rsa_pkcs1_pad
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	mov	r4, r2
	subs	r3, r3, r1
	movs	r2, #0
	movs	r6, #255
	strb	r2, [r4]
	subs	r2, r3, #1
	movs	r5, #2
	strb	r5, [r4, #1]
.L2:
	cmp	r2, r5
	bhi	.L3
	movs	r5, #0
	strb	r5, [r4, r2]
	mov	r2, r1
	mov	r1, r0
	adds	r0, r4, r3
	pop	{r4, r5, r6}
	b	memcpy(PLT)
.L3:
	strb	r6, [r4, r5]
	adds	r5, r5, #1
	b	.L2
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
