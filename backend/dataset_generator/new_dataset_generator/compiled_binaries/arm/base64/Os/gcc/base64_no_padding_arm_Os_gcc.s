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
	.file	"base64_no_padding.c"
	.text
	.align	1
	.global	base64_encode_no_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	movs	r5, #2
	ldr	r7, .L8
	ldr	r8, .L8+4
	movs	r4, #0
.LPIC0:
	add	r7, pc
.LPIC3:
	add	r8, pc
.L2:
	subs	r3, r5, #2
	cmp	r3, r1
	bcc	.L7
	movs	r3, #0
	strb	r3, [r2, r4]
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L7:
	add	lr, r5, #-1
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r1, lr
	add	ip, r2, r4
	add	r0, r0, #3
	lsl	r3, r3, #16
	itt	hi
	ldrbhi	r6, [r0, #-2]	@ zero_extendqisi2
	orrhi	r3, r3, r6, lsl #8
	cmp	r1, r5
	itt	hi
	ldrbhi	r6, [r0, #-1]	@ zero_extendqisi2
	orrhi	r3, r3, r6
	cmp	r1, lr
	lsr	r6, r3, #18
	ubfx	r9, r3, #12, #6
	ldrb	r6, [r7, r6]	@ zero_extendqisi2
	ldrb	r9, [r7, r9]	@ zero_extendqisi2
	strb	r6, [r2, r4]
	add	r6, r4, #2
	strb	r9, [ip, #1]
	itttt	hi
	ubfxhi	ip, r3, #6, #6
	ldrbhi	ip, [r7, ip]	@ zero_extendqisi2
	strbhi	ip, [r2, r6]
	addhi	r6, r4, #3
	cmp	r1, r5
	add	r5, r5, #3
	itttt	hi
	andhi	r3, r3, #63
	ldrbhi	r3, [r8, r3]	@ zero_extendqisi2
	strbhi	r3, [r2, r6]
	addhi	r6, r6, #1
	mov	r4, r6
	b	.L2
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR0-(.LPIC3+4)
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789+/\000"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
