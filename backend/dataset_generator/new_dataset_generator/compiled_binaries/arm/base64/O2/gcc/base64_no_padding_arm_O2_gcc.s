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
	.file	"base64_no_padding.c"
	.text
	.align	1
	.p2align 2,,3
	.global	base64_encode_no_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L14
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, #1
	ldr	r6, .L18
	ldr	r10, .L18+4
	movs	r4, #2
.LPIC0:
	add	r6, pc
	mov	lr, #0
.LPIC3:
	add	r10, pc
	add	r8, r0, #-1
	add	r9, r0, ip
.L7:
	cmp	ip, r1
	ldrb	r3, [r8, ip]	@ zero_extendqisi2
	add	fp, lr, #2
	it	cc
	ldrbcc	r5, [r0, ip]	@ zero_extendqisi2
	lsl	r3, r3, #16
	it	cc
	orrcc	r3, r3, r5, lsl #8
	cmp	r1, r4
	itt	hi
	ldrbhi	r5, [r9, ip]	@ zero_extendqisi2
	orrhi	r3, r3, r5
	add	r5, r2, lr
	cmp	ip, r1
	lsr	r7, r3, #18
	ldrb	r7, [r6, r7]	@ zero_extendqisi2
	strb	r7, [r2, lr]
	ubfx	r7, r3, #12, #6
	ite	cc
	addcc	lr, lr, #3
	movcs	lr, fp
	ldrb	r7, [r6, r7]	@ zero_extendqisi2
	strb	r7, [r5, #1]
	ittt	cc
	ubfxcc	r5, r3, #6, #6
	ldrbcc	r5, [r6, r5]	@ zero_extendqisi2
	strbcc	r5, [r2, fp]
	cmp	r1, r4
	it	hi
	andhi	r3, r3, #63
	add	r4, r4, #3
	itt	hi
	ldrbhi	r3, [r10, r3]	@ zero_extendqisi2
	strbhi	r3, [r2, lr]
	add	r3, ip, #2
	it	hi
	addhi	lr, lr, #1
	add	ip, ip, #3
	cmp	r1, r3
	bhi	.L7
	add	r2, r2, lr
	movs	r3, #0
	strb	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	movs	r3, #0
	strb	r3, [r2]
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0-(.LPIC0+4)
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
