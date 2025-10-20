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
	.file	"base64_no_padding.c"
	.text
	.align	1
	.global	base64_encode_no_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	ip, r1
	cmp	r1, #0
	beq	.L8
	movs	r4, #2
	movs	r1, #1
	mov	lr, #0
	add	r9, r0, #-1
	add	fp, r0, r1
	ldr	r7, .L12
.LPIC0:
	add	r7, pc
	ldr	r10, .L12+4
.LPIC2:
	add	r10, pc
	ldr	r3, .L12+8
.LPIC3:
	add	r3, pc
	str	r3, [sp, #4]
	b	.L7
.L10:
	mov	r1, r3
.L7:
	ldrb	r3, [r9, r1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	cmp	r1, ip
	itt	cc
	ldrbcc	r5, [r0, r1]	@ zero_extendqisi2
	orrcc	r3, r3, r5, lsl #8
	cmp	ip, r4
	itt	hi
	ldrbhi	r5, [fp, r1]	@ zero_extendqisi2
	orrhi	r3, r3, r5
	lsrs	r5, r3, #18
	ldrb	r5, [r7, r5]	@ zero_extendqisi2
	strb	r5, [r2, lr]
	add	r6, lr, #2
	add	r5, r2, lr
	ubfx	r8, r3, #12, #6
	ldrb	r8, [r7, r8]	@ zero_extendqisi2
	strb	r8, [r5, #1]
	cmp	r1, ip
	itttt	cc
	ubfxcc	r5, r3, #6, #6
	ldrbcc	r5, [r10, r5]	@ zero_extendqisi2
	strbcc	r5, [r2, r6]
	addcc	r6, lr, #3
	cmp	ip, r4
	itttt	hi
	addhi	lr, r6, #1
	andhi	r3, r3, #63
	ldrhi	r5, [sp, #4]
	ldrbhi	r3, [r5, r3]	@ zero_extendqisi2
	ite	hi
	strbhi	r3, [r2, r6]
	movls	lr, r6
	adds	r3, r1, #3
	adds	r4, r4, #3
	adds	r1, r1, #2
	cmp	ip, r1
	bhi	.L10
.L2:
	movs	r3, #0
	strb	r3, [r2, lr]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L8:
	mov	lr, r1
	b	.L2
.L13:
	.align	2
.L12:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR0-(.LPIC2+4)
	.word	.LANCHOR0-(.LPIC3+4)
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	b64, %object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789+/\000"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
