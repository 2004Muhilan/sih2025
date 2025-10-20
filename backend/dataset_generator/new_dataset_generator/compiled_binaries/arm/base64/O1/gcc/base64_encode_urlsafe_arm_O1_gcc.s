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
	.file	"base64_encode_urlsafe.c"
	.text
	.align	1
	.global	base64_encode_urlsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_urlsafe, %function
base64_encode_urlsafe:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r1, .L9
	push	{r4, r5, r6, r7, lr}
	mov	lr, r1
	movs	r1, #0
	mov	r5, r1
	ldr	ip, .L13
.LPIC0:
	add	ip, pc
	b	.L4
.L5:
	mov	r1, r3
	mov	r4, r5
	mov	r3, r5
.L3:
	add	r3, r3, r6, lsl #16
	add	r3, r3, r4, lsl #8
	lsrs	r4, r3, #18
	ldrb	r4, [ip, r4]	@ zero_extendqisi2
	strb	r4, [r2]
	ubfx	r4, r3, #12, #6
	ldrb	r4, [ip, r4]	@ zero_extendqisi2
	strb	r4, [r2, #1]
	ubfx	r4, r3, #6, #6
	ldrb	r4, [ip, r4]	@ zero_extendqisi2
	strb	r4, [r2, #2]
	and	r3, r3, #63
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	strb	r3, [r2, #3]
	adds	r2, r2, #4
	cmp	r1, lr
	bcs	.L12
.L4:
	adds	r3, r1, #1
	ldrb	r6, [r0, r1]	@ zero_extendqisi2
	cmp	lr, r3
	bls	.L5
	adds	r7, r1, #2
	ldrb	r4, [r0, r3]	@ zero_extendqisi2
	cmp	lr, r7
	bls	.L6
	adds	r1, r1, #3
	ldrb	r3, [r0, r7]	@ zero_extendqisi2
	b	.L3
.L6:
	mov	r1, r7
	movs	r3, #0
	b	.L3
.L12:
	pop	{r4, r5, r6, r7, pc}
.L9:
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	b64url, %object
	.size	b64url, 65
b64url:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789-_\000"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
