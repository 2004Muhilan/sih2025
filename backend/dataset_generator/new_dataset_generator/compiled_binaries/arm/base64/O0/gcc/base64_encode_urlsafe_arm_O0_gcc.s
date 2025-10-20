	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"base64_encode_urlsafe.c"
	.text
	.section	.rodata
	.align	2
	.type	b64url, %object
	.size	b64url, 65
b64url:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789-_\000"
	.text
	.align	1
	.global	base64_encode_urlsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_urlsafe, %function
base64_encode_urlsafe:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L2
.L9:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L3
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L4
.L3:
	movs	r3, #0
.L4:
	str	r3, [r7, #24]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L5
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L6
.L5:
	movs	r3, #0
.L6:
	str	r3, [r7, #28]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L7
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L8
.L7:
	movs	r3, #0
.L8:
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #28]
	lsls	r3, r3, #8
	add	r3, r3, r2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #18
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L10
.LPIC0:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #12
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L10+4
.LPIC1:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #6
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L10+8
.LPIC2:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L10+12
.LPIC3:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L2:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L9
	nop
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	b64url-(.LPIC0+4)
	.word	b64url-(.LPIC1+4)
	.word	b64url-(.LPIC2+4)
	.word	b64url-(.LPIC3+4)
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
