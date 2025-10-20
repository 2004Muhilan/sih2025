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
	.file	"md5_padding.c"
	.text
	.align	1
	.p2align 2,,3
	.global	md5_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_padding, %function
md5_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r2
	mov	r4, r1
	mov	r2, r1
	mov	r1, r0
	mov	r0, r6
	rsb	r5, r4, #55
	bl	memcpy(PLT)
	adds	r3, r4, #1
	and	r5, r5, #63
	add	r3, r3, r6
	movs	r2, #128
	movs	r1, #0
	strb	r2, [r6, r4]
	mov	r0, r3
	mov	r2, r5
	lsls	r4, r4, #3
	bl	memset(PLT)
	adds	r2, r0, r5
	movs	r1, #0
	str	r4, [r0, r5]	@ unaligned
	str	r1, [r2, #4]	@ unaligned
	pop	{r4, r5, r6, pc}
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
