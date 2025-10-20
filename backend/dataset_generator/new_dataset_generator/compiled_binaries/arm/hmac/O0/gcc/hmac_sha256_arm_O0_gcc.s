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
	.file	"hmac_sha256.c"
	.text
	.align	1
	.global	hmac_sha256
	.syntax unified
	.thumb
	.thumb_func
	.type	hmac_sha256, %function
hmac_sha256:
	@ args = 4, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #168
	add	r7, sp, #0
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #176]
	str	r3, [r7, #4]
	ldr	r2, .L11
.LPIC0:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #164]
	mov	r3, #0
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L2
.L7:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L3
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #54
	uxtb	r1, r3
	b	.L4
.L3:
	movs	r1, #54
.L4:
	add	r2, r7, #36
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L5
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #92
	uxtb	r1, r3
	b	.L6
.L5:
	movs	r1, #92
.L6:
	add	r2, r7, #100
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L2:
	ldr	r3, [r7, #28]
	cmp	r3, #63
	bls	.L7
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L8
.L9:
	add	r2, r7, #36
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r2, r7, #100
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #4]
	add	r3, r3, r0
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L8:
	ldr	r3, [r7, #32]
	cmp	r3, #31
	ble	.L9
	nop
	ldr	r2, .L11+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #164]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L10
	bl	__stack_chk_fail(PLT)
.L10:
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
