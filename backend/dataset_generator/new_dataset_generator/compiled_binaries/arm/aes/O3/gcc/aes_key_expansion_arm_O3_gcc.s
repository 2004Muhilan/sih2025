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
	.file	"aes_key_expansion.c"
	.text
	.align	1
	.p2align 2,,3
	.global	aes_key_expansion
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_key_expansion, %function
aes_key_expansion:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r2, r0, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r2, r1, r2
	sub	sp, sp, #44
	mov	r3, r1
	cmp	r2, #2
	bls	.L2
	ldr	r2, [r0]	@ unaligned
	str	r2, [r1]	@ unaligned
	ldr	r2, [r0, #4]	@ unaligned
	str	r2, [r1, #4]	@ unaligned
	ldr	r2, [r0, #8]	@ unaligned
	str	r2, [r1, #8]	@ unaligned
	ldr	r2, [r0, #12]	@ unaligned
	str	r2, [r1, #12]	@ unaligned
.L3:
	ldrb	r2, [r3, #10]	@ zero_extendqisi2
	adds	r3, r3, #16
	str	r2, [sp]
	ldrb	r2, [r3, #-7]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r2, [r3, #-9]	@ zero_extendqisi2
	str	r2, [sp, #20]
	ldrb	r2, [r3, #-10]	@ zero_extendqisi2
	str	r2, [sp, #16]
	ldrb	r2, [r3, #-11]	@ zero_extendqisi2
	ldr	r1, .L8
	str	r2, [sp, #32]
	ldrb	r2, [r3, #-13]	@ zero_extendqisi2
.LPIC0:
	add	r1, pc
	str	r2, [sp, #12]
	subs	r6, r1, #1
	ldrb	r2, [r3, #-14]	@ zero_extendqisi2
	adds	r1, r1, #9
	ldrb	r10, [r3, #-5]	@ zero_extendqisi2
	ldrb	r9, [r3, #-8]	@ zero_extendqisi2
	ldrb	r8, [r3, #-12]	@ zero_extendqisi2
	ldrb	fp, [r3, #-15]	@ zero_extendqisi2
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	ldrb	r5, [r3, #-3]	@ zero_extendqisi2
	ldrb	r7, [r3, #-16]	@ zero_extendqisi2
	str	r2, [sp, #8]
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	str	r1, [sp, #36]
	strd	r7, r6, [sp, #24]
.L4:
	ldr	r1, [sp, #12]
	eor	r10, r2, r10
	ldr	r4, [sp, #20]
	eor	fp, r0, fp
	eors	r1, r1, r2
	str	r1, [sp, #12]
	ldr	r1, [sp, #4]
	eors	r4, r4, r2
	str	r4, [sp, #20]
	adds	r3, r3, #16
	ldr	r4, [sp, #16]
	eors	r1, r1, r0
	str	r1, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r6, [sp, #32]
	eor	r7, ip, r1
	str	r7, [sp, #8]
	eor	r7, ip, r4
	ldr	r4, [sp, #28]
	ldr	r1, [sp]
	eors	r6, r6, r0
	str	r7, [sp, #16]
	ldrb	lr, [r4, #1]!	@ zero_extendqisi2
	eor	r7, r1, ip
	ldr	r1, [sp, #24]
	eor	lr, r5, lr
	str	r7, [sp]
	str	r4, [sp, #28]
	eor	r7, lr, r1
	movs	r4, #0
	str	r7, [sp, #24]
	mov	r7, r2
	eors	r5, r5, r0
	eor	r8, lr, r8
	eor	r9, lr, r9
	eor	r0, r0, ip
	eor	r2, lr, r2
	eor	ip, r7, ip
	mov	lr, r4
	ldr	r7, [sp, #24]
	mov	r1, r4
	bfi	lr, r8, #0, #8
	str	r6, [sp, #32]
	bfi	r4, r7, #0, #8
	bfi	lr, r6, #8, #8
	ldr	r6, [sp, #8]
	bfi	r4, fp, #8, #8
	bfi	r4, r6, #16, #8
	ldr	r6, [sp, #16]
	bfi	lr, r6, #16, #8
	ldr	r6, [sp, #12]
	bfi	r4, r6, #24, #8
	str	r4, [r3, #-16]	@ unaligned
	ldr	r4, [sp, #20]
	ldr	r6, [sp, #4]
	bfi	lr, r4, #24, #8
	mov	r4, r1
	bfi	r1, r9, #0, #8
	str	lr, [r3, #-12]	@ unaligned
	bfi	r4, r2, #0, #8
	bfi	r1, r6, #8, #8
	ldr	r6, [sp]
	bfi	r4, r5, #8, #8
	bfi	r1, r6, #16, #8
	bfi	r4, r0, #16, #8
	bfi	r1, r10, #24, #8
	bfi	r4, ip, #24, #8
	str	r1, [r3, #-8]	@ unaligned
	str	r4, [r3, #-4]	@ unaligned
	ldr	r1, [sp, #36]
	ldr	r4, [sp, #28]
	cmp	r1, r4
	bne	.L4
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2:
	ldrb	r2, [r0]	@ zero_extendqisi2
	strb	r2, [r1]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	strb	r2, [r1, #1]
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	strb	r2, [r1, #2]
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	strb	r2, [r1, #3]
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	strb	r2, [r1, #4]
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	strb	r2, [r1, #5]
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	strb	r2, [r1, #6]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	strb	r2, [r1, #7]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	strb	r2, [r1, #8]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	strb	r2, [r1, #9]
	ldrb	r2, [r0, #10]	@ zero_extendqisi2
	strb	r2, [r1, #10]
	ldrb	r2, [r0, #11]	@ zero_extendqisi2
	strb	r2, [r1, #11]
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	strb	r2, [r1, #12]
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	strb	r2, [r1, #13]
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	strb	r2, [r1, #14]
	ldrb	r2, [r0, #15]	@ zero_extendqisi2
	strb	r2, [r1, #15]
	b	.L3
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
