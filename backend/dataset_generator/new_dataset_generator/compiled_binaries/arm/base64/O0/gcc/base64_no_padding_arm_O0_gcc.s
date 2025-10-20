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
	.file	"base64_no_padding.c"
	.text
	.section	.rodata
	.align	2
	.type	b64, %object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789+/\000"
	.text
	.align	1
	.global	base64_encode_no_padding
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_no_padding, %function
base64_encode_no_padding:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L2
.L7:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bls	.L3
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #28]
	orrs	r3, r3, r2
	str	r3, [r7, #28]
.L3:
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bls	.L4
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	orrs	r3, r3, r2
	str	r3, [r7, #28]
.L4:
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #18
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L8
.LPIC0:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #12
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L8+4
.LPIC1:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bls	.L5
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #6
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L8+8
.LPIC2:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L5:
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bls	.L6
	ldr	r3, [r7, #28]
	and	r2, r3, #63
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, .L8+12
.LPIC3:
	add	r1, pc
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L6:
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	str	r3, [r7, #24]
.L2:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L7
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	b64-(.LPIC0+4)
	.word	b64-(.LPIC1+4)
	.word	b64-(.LPIC2+4)
	.word	b64-(.LPIC3+4)
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
