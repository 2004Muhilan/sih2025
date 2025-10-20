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
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.align	1
	.global	tc_aes128_set_encrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #52
	mov	r4, r0
	mov	r5, r1
	ldr	r2, .L13
.LPIC6:
	add	r2, pc
	ldr	r3, .L13+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	mov	ip, sp
	ldr	lr, .L13+8
.LPIC0:
	add	lr, pc
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	cmp	r4, #0
	it	ne
	cmpne	r5, #0
	it	eq
	moveq	r0, #0
	beq	.L1
	mov	r2, r5
	subs	r1, r4, #4
	add	ip, r4, #12
	mov	r0, r1
.L3:
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, lr, lsl #24
	ldrb	lr, [r2, #3]	@ zero_extendqisi2
	orr	r3, r3, lr
	ldrb	lr, [r2, #2]	@ zero_extendqisi2
	orr	r3, r3, lr, lsl #8
	str	r3, [r0, #4]!
	adds	r2, r2, #4
	cmp	r0, ip
	bne	.L3
	movs	r2, #4
	ldr	ip, .L13+12
.LPIC1:
	add	ip, pc
	b	.L5
.L4:
	ldr	r0, [r1, #4]!
	eors	r3, r3, r0
	str	r3, [r1, #16]
	adds	r2, r2, #1
	cmp	r2, #44
	beq	.L11
.L5:
	ldr	r3, [r1, #16]
	tst	r2, #3
	bne	.L4
	ror	r3, r3, #24
	add	r0, ip, r3, lsr #24
	ldrb	lr, [r0, #44]	@ zero_extendqisi2
	uxtab	r0, ip, r3
	ldrb	r0, [r0, #44]	@ zero_extendqisi2
	orr	r0, r0, lr, lsl #24
	ubfx	lr, r3, #16, #8
	add	lr, lr, ip
	ldrb	lr, [lr, #44]	@ zero_extendqisi2
	orr	r0, r0, lr, lsl #16
	ubfx	r3, r3, #8, #8
	add	r3, r3, ip
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	orr	r0, r0, r3, lsl #8
	bic	r3, r2, #3
	adds	r3, r3, #48
	add	r3, sp, r3
	ldr	r3, [r3, #-48]
	eors	r3, r3, r0
	b	.L4
.L11:
	movs	r0, #1
.L1:
	ldr	r2, .L13+16
.LPIC5:
	add	r2, pc
	ldr	r3, .L13+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L12
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, pc}
.L12:
	bl	__stack_chk_fail(PLT)
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR0-(.LPIC1+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	1
	.global	tc_aes_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r4, .L28
.LPIC10:
	add	r4, pc
	ldr	r3, .L28+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #52]
	mov	r3, #0
	mov	r4, r1
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	ite	eq
	moveq	r1, #1
	movne	r1, #0
	cmp	r0, #0
	it	eq
	orreq	r1, r1, #1
	cbz	r1, .L26
	movs	r0, #0
.L15:
	ldr	r2, .L28+8
.LPIC9:
	add	r2, pc
	ldr	r3, .L28+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #52]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L27
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	mov	r9, r2
	mov	r8, r0
	movs	r3, #16
	mov	r2, r4
	mov	r1, r3
	add	r0, sp, #20
	bl	_copy(PLT)
	ldr	r3, [r9]
	ldrb	r2, [sp, #20]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #20]
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #21]
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #22]
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #23]
	ldr	r3, [r9, #4]
	ldrb	r2, [sp, #24]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #24]
	ldrb	r2, [sp, #25]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #25]
	ldrb	r2, [sp, #26]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #26]
	ldrb	r2, [sp, #27]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #27]
	ldr	r3, [r9, #8]
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #28]
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #29]
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #30]
	ldrb	r2, [sp, #31]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #31]
	ldr	r3, [r9, #12]
	ldrb	r2, [sp, #32]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #32]
	ldrb	r2, [sp, #33]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #33]
	ldrb	r2, [sp, #34]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #34]
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #35]
	mov	r6, r9
	add	r3, r9, #144
	str	r3, [sp, #4]
	add	r4, sp, #36
	ldr	r5, .L28+12
.LPIC7:
	add	r5, pc
	mov	r10, #16
	str	r8, [sp, #8]
	str	r9, [sp, #12]
.L17:
	add	r7, sp, #20
	mov	r3, r7
.L18:
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r2, r2, r5
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r3, r4
	bne	.L18
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	strb	r3, [sp, #36]
	ldrb	r3, [sp, #25]	@ zero_extendqisi2
	strb	r3, [sp, #37]
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	strb	r3, [sp, #38]
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	strb	r3, [sp, #39]
	ldrb	r3, [sp, #24]	@ zero_extendqisi2
	strb	r3, [sp, #40]
	ldrb	r3, [sp, #29]	@ zero_extendqisi2
	strb	r3, [sp, #41]
	ldrb	r3, [sp, #34]	@ zero_extendqisi2
	strb	r3, [sp, #42]
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	strb	r3, [sp, #43]
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	strb	r3, [sp, #44]
	ldrb	r3, [sp, #33]	@ zero_extendqisi2
	strb	r3, [sp, #45]
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	strb	r3, [sp, #46]
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	strb	r3, [sp, #47]
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	strb	r3, [sp, #48]
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	strb	r3, [sp, #49]
	ldrb	r3, [sp, #26]	@ zero_extendqisi2
	strb	r3, [sp, #50]
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	strb	r3, [sp, #51]
	mov	r3, r10
	mov	r2, r4
	mov	r1, r10
	add	fp, sp, #20
	mov	r0, fp
	bl	_copy(PLT)
	ldrb	r0, [sp, #20]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #21]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #21]	@ zero_extendqisi2
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r1, [sp, #23]	@ zero_extendqisi2
	eors	r3, r3, r1
	eor	r8, r8, r3
	eor	r3, r2, r8
	strb	r3, [sp, #36]
	ldrb	r9, [sp, #20]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #22]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #22]	@ zero_extendqisi2
	eor	r9, r9, r0
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	eor	r9, r9, r2
	eor	r8, r8, r9
	eor	r3, r3, r8
	strb	r3, [sp, #37]
	ldrb	r9, [sp, #20]	@ zero_extendqisi2
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	eor	r9, r9, r3
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #23]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	eor	r9, r9, r3
	eor	r8, r8, r9
	eor	r0, r0, r8
	strb	r0, [sp, #38]
	ldrb	r0, [sp, #20]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	eors	r3, r3, r2
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	eors	r3, r3, r2
	eor	r8, r0, r3
	uxtb	r8, r8
	ldrb	r0, [sp, #23]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	eor	r8, r8, r0
	strb	r8, [sp, #39]
	ldrb	r0, [sp, #24]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #25]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #25]	@ zero_extendqisi2
	ldrb	r3, [sp, #26]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r1, [sp, #27]	@ zero_extendqisi2
	eors	r3, r3, r1
	eor	r8, r8, r3
	eor	r3, r2, r8
	strb	r3, [sp, #40]
	ldrb	r9, [sp, #24]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #26]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #26]	@ zero_extendqisi2
	eor	r9, r9, r0
	ldrb	r2, [sp, #27]	@ zero_extendqisi2
	eor	r2, r2, r9
	eor	r8, r8, r2
	eor	r3, r3, r8
	strb	r3, [sp, #41]
	ldrb	r9, [sp, #24]	@ zero_extendqisi2
	ldrb	r3, [sp, #25]	@ zero_extendqisi2
	eor	r9, r9, r3
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #27]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	eor	r9, r9, r3
	eor	r8, r8, r9
	eor	r0, r0, r8
	strb	r0, [sp, #42]
	ldrb	r0, [sp, #24]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #24]	@ zero_extendqisi2
	ldrb	r2, [sp, #25]	@ zero_extendqisi2
	eors	r3, r3, r2
	ldrb	r2, [sp, #26]	@ zero_extendqisi2
	eors	r3, r3, r2
	eor	r8, r0, r3
	uxtb	r8, r8
	ldrb	r0, [sp, #27]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	eor	r8, r8, r0
	strb	r8, [sp, #43]
	ldrb	r0, [sp, #28]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #29]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #29]	@ zero_extendqisi2
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r1, [sp, #31]	@ zero_extendqisi2
	eors	r3, r3, r1
	eor	r8, r8, r3
	eor	r3, r2, r8
	strb	r3, [sp, #44]
	ldrb	r9, [sp, #28]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #30]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #30]	@ zero_extendqisi2
	eor	r9, r9, r0
	ldrb	r2, [sp, #31]	@ zero_extendqisi2
	eor	r9, r9, r2
	eor	r8, r8, r9
	eor	r3, r3, r8
	strb	r3, [sp, #45]
	ldrb	r9, [sp, #28]	@ zero_extendqisi2
	ldrb	r3, [sp, #29]	@ zero_extendqisi2
	eor	r9, r9, r3
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #31]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	eor	r9, r9, r3
	eor	r8, r8, r9
	eor	r0, r0, r8
	strb	r0, [sp, #46]
	ldrb	r0, [sp, #28]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	eors	r3, r3, r2
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	eors	r3, r3, r2
	eor	r8, r0, r3
	uxtb	r8, r8
	ldrb	r0, [sp, #31]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	eor	r8, r8, r0
	strb	r8, [sp, #47]
	ldrb	r0, [sp, #32]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #33]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #33]	@ zero_extendqisi2
	ldrb	r3, [sp, #34]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r1, [sp, #35]	@ zero_extendqisi2
	eors	r3, r3, r1
	eor	r8, r8, r3
	eor	r3, r2, r8
	strb	r3, [sp, #48]
	ldrb	r9, [sp, #32]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #34]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #34]	@ zero_extendqisi2
	eor	r9, r9, r0
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	eor	r9, r9, r2
	eor	r8, r8, r9
	eor	r3, r3, r8
	strb	r3, [sp, #49]
	ldrb	r9, [sp, #32]	@ zero_extendqisi2
	ldrb	r3, [sp, #33]	@ zero_extendqisi2
	eor	r9, r9, r3
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [sp, #35]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	eor	r9, r9, r3
	eor	r8, r8, r9
	eor	r0, r0, r8
	strb	r0, [sp, #50]
	ldrb	r0, [sp, #32]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	ldrb	r2, [sp, #33]	@ zero_extendqisi2
	eors	r3, r3, r2
	ldrb	r2, [sp, #34]	@ zero_extendqisi2
	eors	r3, r3, r2
	eor	r8, r0, r3
	uxtb	r8, r8
	ldrb	r0, [sp, #35]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	eor	r8, r8, r0
	strb	r8, [sp, #51]
	mov	r3, r10
	mov	r2, r4
	mov	r1, r10
	mov	r0, fp
	bl	_copy(PLT)
	ldr	r3, [r6, #16]
	ldrb	r2, [sp, #20]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #20]
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #21]
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #22]
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #23]
	ldr	r3, [r6, #20]
	ldrb	r2, [sp, #24]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #24]
	ldrb	r2, [sp, #25]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #25]
	ldrb	r2, [sp, #26]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #26]
	ldrb	r2, [sp, #27]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #27]
	ldr	r3, [r6, #24]
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #28]
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #29]
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #30]
	ldrb	r2, [sp, #31]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #31]
	ldr	r3, [r6, #28]
	ldrb	r2, [sp, #32]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #32]
	ldrb	r2, [sp, #33]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #33]
	ldrb	r2, [sp, #34]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #34]
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #35]
	adds	r6, r6, #16
	ldr	r3, [sp, #4]
	cmp	r3, r6
	bne	.L17
	ldr	r8, [sp, #8]
	ldr	r9, [sp, #12]
	ldr	r2, .L28+16
.LPIC8:
	add	r2, pc
.L19:
	ldrb	r3, [r7]	@ zero_extendqisi2
	add	r3, r3, r2
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	strb	r3, [r7], #1
	cmp	r7, r4
	bne	.L19
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	strb	r3, [sp, #36]
	ldrb	r3, [sp, #25]	@ zero_extendqisi2
	strb	r3, [sp, #37]
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	strb	r3, [sp, #38]
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	strb	r3, [sp, #39]
	ldrb	r3, [sp, #24]	@ zero_extendqisi2
	strb	r3, [sp, #40]
	ldrb	r3, [sp, #29]	@ zero_extendqisi2
	strb	r3, [sp, #41]
	ldrb	r3, [sp, #34]	@ zero_extendqisi2
	strb	r3, [sp, #42]
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	strb	r3, [sp, #43]
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	strb	r3, [sp, #44]
	ldrb	r3, [sp, #33]	@ zero_extendqisi2
	strb	r3, [sp, #45]
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	strb	r3, [sp, #46]
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	strb	r3, [sp, #47]
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	strb	r3, [sp, #48]
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	strb	r3, [sp, #49]
	ldrb	r3, [sp, #26]	@ zero_extendqisi2
	strb	r3, [sp, #50]
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	strb	r3, [sp, #51]
	movs	r3, #16
	add	r2, sp, #36
	mov	r1, r3
	add	r4, sp, #20
	mov	r0, r4
	bl	_copy(PLT)
	ldr	r3, [r9, #160]
	ldrb	r2, [sp, #20]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #20]
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #21]
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #22]
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #23]
	ldr	r3, [r9, #164]
	ldrb	r2, [sp, #24]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #24]
	ldrb	r2, [sp, #25]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #25]
	ldrb	r2, [sp, #26]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #26]
	ldrb	r2, [sp, #27]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #27]
	ldr	r3, [r9, #168]
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #28]
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #29]
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #30]
	ldrb	r2, [sp, #31]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #31]
	ldr	r3, [r9, #172]
	ldrb	r2, [sp, #32]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #32]
	ldrb	r2, [sp, #33]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #33]
	ldrb	r2, [sp, #34]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #34]
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #35]
	movs	r3, #16
	mov	r2, r4
	mov	r1, r3
	mov	r0, r8
	bl	_copy(PLT)
	movs	r2, #16
	movs	r1, #0
	mov	r0, r4
	bl	_set(PLT)
	movs	r0, #1
	b	.L15
.L27:
	bl	__stack_chk_fail(PLT)
.L29:
	.align	2
.L28:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	.LANCHOR0-(.LPIC7+4)
	.word	.LANCHOR0-(.LPIC8+4)
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	16777216
	.word	33554432
	.word	67108864
	.word	134217728
	.word	268435456
	.word	536870912
	.word	1073741824
	.word	-2147483648
	.word	452984832
	.word	905969664
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372"
	.ascii	"YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367"
	.ascii	"\3144\245\345\361q\3301\025\004\307#\303\030\226\005"
	.ascii	"\232\007\022\200\342\353'\262u\011\203,\032\033nZ\240"
	.ascii	"R;\326\263)\343/\204S\321\000\355 \374\261[j\313\276"
	.ascii	"9JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250"
	.ascii	"Q\243@\217\222\2358\365\274\266\332!\020\377\363\322"
	.ascii	"\315\014\023\354_\227D\027\304\247~=d]\031s`\201O\334"
	.ascii	"\"*\220\210F\356\270\024\336^\013\333\3402:\012I\006"
	.ascii	"$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251"
	.ascii	"lV\364\352ez\256\010\272x%.\034\246\264\306\350\335"
	.ascii	"t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301"
	.ascii	"\035\236\341\370\230\021i\331\216\224\233\036\207\351"
	.ascii	"\316U(\337\214\241\211\015\277\346BhA\231-\017\260T"
	.ascii	"\273\026"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
