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
	.file	"base64_encode_standard.c"
	.text
	.align	1
	.p2align 2,,3
	.global	base64_encode_standard
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_encode_standard, %function
base64_encode_standard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L10
	push	{r4, r5, r6, r7, lr}
	mov	lr, #0
	ldr	r4, .L14
.LPIC0:
	add	r4, pc
.L4:
	add	r3, lr, #1
	mov	ip, #0
	cmp	r1, r3
	ldrb	r6, [r0, lr]	@ zero_extendqisi2
	add	r5, lr, #2
	itt	ls
	movls	lr, r3
	movls	r3, ip
	bls	.L3
	cmp	r1, r5
	ldrb	ip, [r0, r3]	@ zero_extendqisi2
	add	lr, lr, #3
	itte	ls
	movls	r3, #0
	movls	lr, r5
	ldrbhi	r3, [r0, r5]	@ zero_extendqisi2
	lsl	ip, ip, #8
.L3:
	add	r3, r3, ip
	mov	ip, #0
	add	r3, r3, r6, lsl #16
	cmp	lr, r1
	and	r5, r3, #63
	lsr	r7, r3, #18
	ubfx	r6, r3, #12, #6
	ubfx	r3, r3, #6, #6
	ldrb	r5, [r4, r5]	@ zero_extendqisi2
	ldrb	r7, [r4, r7]	@ zero_extendqisi2
	ldrb	r6, [r4, r6]	@ zero_extendqisi2
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	bfi	ip, r7, #0, #8
	bfi	ip, r6, #8, #8
	bfi	ip, r3, #16, #8
	bfi	ip, r5, #24, #8
	str	ip, [r2], #4	@ unaligned
	bcc	.L4
	pop	{r4, r5, r6, r7, pc}
.L10:
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	base64_encode_standard, .-base64_encode_standard
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
