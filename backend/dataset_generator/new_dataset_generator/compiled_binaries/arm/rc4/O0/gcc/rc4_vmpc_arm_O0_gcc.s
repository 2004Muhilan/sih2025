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
	.file	"rc4_vmpc.c"
	.text
	.align	1
	.global	rc4_vmpc_variant
	.syntax unified
	.thumb
	.thumb_func
	.type	rc4_vmpc_variant, %function
rc4_vmpc_variant:
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #288
	add	r7, sp, #0
	add	r3, r7, #288
	sub	r3, r3, #276
	str	r0, [r3]
	add	r3, r7, #288
	sub	r3, r3, #280
	str	r1, [r3]
	add	r3, r7, #288
	sub	r3, r3, #284
	str	r2, [r3]
	ldr	r2, .L7
.LPIC0:
	add	r2, pc
	ldr	r3, .L7+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #284]
	mov	r3, #0
	add	r3, r7, #288
	sub	r3, r3, #268
	movs	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	add	r3, r7, #288
	sub	r3, r3, #268
	ldr	r3, [r3]
	uxtb	r1, r3
	add	r3, r7, #288
	sub	r2, r3, #260
	add	r3, r7, #288
	sub	r3, r3, #268
	ldr	r3, [r3]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	add	r3, r7, #288
	sub	r3, r3, #268
	add	r2, r7, #288
	sub	r2, r2, #268
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L2:
	add	r3, r7, #288
	sub	r3, r3, #268
	ldr	r3, [r3]
	cmp	r3, #255
	ble	.L3
	add	r3, r7, #288
	subw	r3, r3, #269
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #288
	sub	r3, r3, #264
	movs	r2, #0
	str	r2, [r3]
	b	.L4
.L5:
	add	r3, r7, #288
	sub	r2, r3, #276
	add	r3, r7, #288
	sub	r3, r3, #264
	ldr	r2, [r2]
	ldr	r3, [r3]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #288
	sub	r3, r3, #260
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	add	r3, r7, #288
	subw	r3, r3, #269
	ldrb	r3, [r3]
	add	r3, r3, r2
	uxtb	r3, r3
	mov	r1, r3
	add	r3, r7, #288
	subw	r3, r3, #269
	add	r2, r7, #288
	sub	r2, r2, #260
	ldrb	r2, [r2, r1]
	strb	r2, [r3]
	add	r3, r7, #288
	sub	r2, r3, #276
	add	r3, r7, #288
	sub	r3, r3, #264
	ldr	r2, [r2]
	ldr	r3, [r3]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r3, r7, #288
	subw	r3, r3, #269
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r2, r7, #288
	sub	r2, r2, #260
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #288
	sub	r3, r3, #260
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	adds	r3, r3, #1
	rsbs	r2, r3, #0
	uxtb	r3, r3
	uxtb	r2, r2
	it	pl
	rsbpl	r3, r2, #0
	add	r2, r7, #288
	sub	r2, r2, #260
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	add	r3, r7, #288
	sub	r0, r3, #276
	add	r3, r7, #288
	sub	r3, r3, #264
	ldr	r0, [r0]
	ldr	r3, [r3]
	add	r3, r3, r0
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	add	r3, r7, #288
	sub	r3, r3, #264
	add	r2, r7, #288
	sub	r2, r2, #264
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L4:
	add	r3, r7, #288
	sub	r2, r3, #264
	add	r3, r7, #288
	sub	r3, r3, #280
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L5
	nop
	ldr	r2, .L7+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L7+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #284]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L6
	bl	__stack_chk_fail(PLT)
.L6:
	add	r7, r7, #288
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
