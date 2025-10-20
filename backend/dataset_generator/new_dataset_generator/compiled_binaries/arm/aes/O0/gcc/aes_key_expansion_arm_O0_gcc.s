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
	.file	"aes_key_expansion.c"
	.text
	.section	.rodata
	.align	2
	.type	rcon, %object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.text
	.align	1
	.global	aes_key_expansion
	.syntax unified
	.thumb
	.thumb_func
	.type	aes_key_expansion, %function
aes_key_expansion:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L11
.LPIC1:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	mov	r3, #0
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L2
.L3:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #16]
	cmp	r3, #15
	ble	.L3
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L4
.L9:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L5
.L6:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r2, r3, #12
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r2, r7, #32
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L5:
	ldr	r3, [r7, #24]
	cmp	r3, #3
	ble	.L6
	ldrb	r3, [r7, #32]
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	strb	r3, [r7, #32]
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	strb	r3, [r7, #33]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	strb	r3, [r7, #34]
	ldrb	r3, [r7, #15]
	strb	r3, [r7, #35]
	ldrb	r2, [r7, #32]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldr	r1, .L11+8
.LPIC0:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L7
.L8:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	lsls	r2, r3, #4
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #28]
	rsbs	r2, r3, #0
	and	r3, r3, #3
	and	r2, r2, #3
	it	pl
	rsbpl	r3, r2, #0
	adds	r3, r3, #40
	add	r3, r3, r7
	ldrb	r2, [r3, #-8]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	lsls	r0, r3, #4
	ldr	r3, [r7, #28]
	add	r3, r3, r0
	mov	r0, r3
	ldr	r3, [r7]
	add	r3, r3, r0
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L7:
	ldr	r3, [r7, #28]
	cmp	r3, #15
	ble	.L8
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L4:
	ldr	r3, [r7, #20]
	cmp	r3, #10
	ble	.L9
	nop
	ldr	r2, .L11+12
.LPIC2:
	add	r2, pc
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L10
	bl	__stack_chk_fail(PLT)
.L10:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	rcon-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	aes_key_expansion, .-aes_key_expansion
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
