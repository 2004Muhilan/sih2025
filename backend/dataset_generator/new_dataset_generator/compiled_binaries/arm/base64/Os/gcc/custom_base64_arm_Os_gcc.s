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
	.file	"custom_base64.c"
	.text
	.align	1
	.global	base64_encode
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode, %function
base64_encode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r3, #0
	ldr	r5, .L8
.LPIC0:
	add	r5, pc
.L2:
	cmp	r3, r1
	bcc	.L4
	pop	{r4, r5, r6, r7, pc}
.L4:
	adds	r4, r3, #1
	ldrb	ip, [r0, r3]	@ zero_extendqisi2
	cmp	r1, r4
	bls	.L5
	adds	r7, r3, #2
	ldrb	r6, [r0, r4]	@ zero_extendqisi2
	cmp	r1, r7
	bls	.L6
	adds	r4, r3, #3
	ldrb	r3, [r0, r7]	@ zero_extendqisi2
.L3:
	add	r3, r3, ip, lsl #16
	adds	r2, r2, #4
	add	r3, r3, r6, lsl #8
	lsrs	r6, r3, #18
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	strb	r6, [r2, #-4]
	ubfx	r6, r3, #12, #6
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	strb	r6, [r2, #-3]
	ubfx	r6, r3, #6, #6
	and	r3, r3, #63
	ldrb	r6, [r5, r6]	@ zero_extendqisi2
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	strb	r3, [r2, #-1]
	mov	r3, r4
	strb	r6, [r2, #-2]
	b	.L2
.L5:
	movs	r6, #0
.L7:
	movs	r3, #0
	b	.L3
.L6:
	mov	r4, r7
	b	.L7
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	base64_encode, .-base64_encode
	.align	1
	.global	base64_decode
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode, %function
base64_decode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #1
	subs	r1, r1, #1
	adds	r0, r0, #3
.L11:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	strb	r2, [r1, #1]!
	cmp	r3, r0
	bne	.L11
	bx	lr
	.size	base64_decode, .-base64_decode
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789+/\000"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
