	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"md5_padding.c"
	.text
	.align	1
	.global	md5_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	md5_padding, %function
md5_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r2
	mov	r2, r1
	mov	r1, r0
	mov	r0, r4
	bl	memcpy(PLT)
	movs	r3, #128
	strb	r3, [r4, r5]
	rsb	r6, r5, #55
	and	r6, r6, #63
	adds	r3, r5, #1
	add	r4, r4, r3
	mov	r2, r6
	movs	r1, #0
	mov	r0, r4
	bl	memset(PLT)
	lsls	r5, r5, #3
	adds	r3, r4, r6
	str	r5, [r4, r6]	@ unaligned
	movs	r2, #0
	str	r2, [r3, #4]	@ unaligned
	pop	{r4, r5, r6, pc}
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
