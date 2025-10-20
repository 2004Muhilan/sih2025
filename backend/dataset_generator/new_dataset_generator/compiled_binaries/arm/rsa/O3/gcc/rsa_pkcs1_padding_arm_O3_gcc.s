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
	.file	"rsa_pkcs1_padding.c"
	.text
	.align	1
	.p2align 2,,3
	.global	rsa_pkcs1_pad
	.syntax unified
	.thumb
	.thumb_func
	.type	rsa_pkcs1_pad, %function
rsa_pkcs1_pad:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r5, r3, r1
	add	r8, r5, #-1
	mov	r3, #512
	mov	r6, r1
	mov	r4, r2
	mov	r7, r0
	cmp	r8, #2
	strh	r3, [r2]	@ unaligned
	bls	.L2
	subs	r2, r5, #3
	movs	r1, #255
	adds	r0, r4, #2
	bl	memset(PLT)
.L2:
	movs	r3, #0
	strb	r3, [r4, r8]
	mov	r2, r6
	mov	r1, r7
	adds	r0, r4, r5
	pop	{r4, r5, r6, r7, r8, lr}
	b	memcpy(PLT)
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
