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
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.align	1
	.p2align 2,,3
	.global	tc_aes128_set_encrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L13
	ldr	r3, .L13+4
.LPIC6:
	add	r2, pc
	ldr	ip, .L13+8
	push	{r4, r5, r6, lr}
	mov	r4, r1
.LPIC0:
	add	ip, pc
	ldr	r3, [r2, r3]
	sub	sp, sp, #48
	mov	r6, r0
	mov	r5, sp
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	cmp	r6, #0
	it	ne
	cmpne	r4, #0
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2}
	stm	r5, {r0, r1, r2}
	it	eq
	moveq	r0, #0
	beq	.L1
	sub	ip, r6, #4
	mov	r1, r4
	add	lr, r6, #12
	mov	r2, ip
.L3:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	adds	r1, r1, #4
	ldrb	r5, [r1, #-4]	@ zero_extendqisi2
	ldrb	r4, [r1, #-1]	@ zero_extendqisi2
	ldrb	r0, [r1, #-2]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r5, lsl #24
	orrs	r3, r3, r4
	orr	r3, r3, r0, lsl #8
	str	r3, [r2, #4]!
	cmp	r2, lr
	bne	.L3
	ldr	r0, .L13+12
	movs	r2, #4
	ldr	r3, [r6, #12]
.LPIC1:
	add	r0, pc
.L5:
	lsls	r1, r2, #30
	bne	.L4
	ror	r3, r3, #24
	bic	r4, r2, #3
	add	r1, r4, #48
	add	r5, r0, r3, lsr #24
	add	r4, sp, r1
	ubfx	lr, r3, #16, #8
	uxtab	r1, r0, r3
	add	lr, lr, r0
	ubfx	r3, r3, #8, #8
	add	r3, r3, r0
	ldrb	r6, [r5, #44]	@ zero_extendqisi2
	ldrb	r1, [r1, #44]	@ zero_extendqisi2
	ldrb	r5, [lr, #44]	@ zero_extendqisi2
	ldrb	lr, [r3, #44]	@ zero_extendqisi2
	orr	r3, r1, r6, lsl #24
	ldr	r4, [r4, #-48]
	orr	r3, r3, r5, lsl #16
	orr	r3, r3, lr, lsl #8
	eors	r3, r3, r4
.L4:
	ldr	r1, [ip, #4]!
	adds	r2, r2, #1
	cmp	r2, #44
	eor	r3, r3, r1
	str	r3, [ip, #16]
	bne	.L5
	movs	r0, #1
.L1:
	ldr	r2, .L13+16
	ldr	r3, .L13+4
.LPIC5:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L12
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, pc}
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
	.p2align 2,,3
	.global	tc_aes_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	mov	fp, r0
	cmp	r0, #0
	it	eq
	orreq	r3, r3, #1
	ldr	r0, .L28
	mov	r9, r2
	ldr	r2, .L28+4
.LPIC9:
	add	r0, pc
	sub	sp, sp, #60
	ldr	r2, [r0, r2]
	movs	r0, #0
	ldr	r2, [r2]
	str	r2, [sp, #52]
	mov	r2, #0
	cbz	r3, .L26
.L15:
	ldr	r2, .L28+8
	ldr	r3, .L28+4
.LPIC8:
	add	r2, pc
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
	movs	r3, #16
	add	r6, sp, #16
	mov	r2, r1
	mov	r0, r6
	mov	r1, r3
	mov	r5, r9
	bl	_copy(PLT)
	ldr	r4, [sp, #20]
	ldrd	r0, r3, [r9]
	add	r7, sp, #32
	add	r8, sp, #36
	add	r10, r9, #144
	rev	r1, r3
	ldr	r3, [r9, #8]
	eors	r1, r1, r4
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
	rev	r2, r3
	ldr	r3, [r9, #12]
	rev	r0, r0
	eors	r2, r2, r1
	ldr	r4, .L28+12
	str	r2, [sp, #24]
	rev	r3, r3
	ldr	r2, [sp, #28]
.LPIC7:
	add	r4, pc
	adds	r4, r4, #44
	strd	r10, fp, [sp, #4]
	eors	r3, r3, r2
	str	r3, [sp, #28]
	ldr	r3, [sp, #16]
	str	r9, [sp, #12]
	eors	r3, r3, r0
	str	r3, [sp, #16]
.L17:
	mov	r3, r6
.L18:
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	movs	r2, #0
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	adds	r3, r3, #8
	ldrb	lr, [r3, #-8]	@ zero_extendqisi2
	ldrb	r0, [r3, #-7]	@ zero_extendqisi2
	ldrb	r10, [ip, r4]	@ zero_extendqisi2
	ldrb	ip, [r1, r4]	@ zero_extendqisi2
	ldrb	r1, [r3, #-3]	@ zero_extendqisi2
	ldrb	fp, [lr, r4]	@ zero_extendqisi2
	ldrb	r9, [r0, r4]	@ zero_extendqisi2
	ldrb	lr, [r1, r4]	@ zero_extendqisi2
	ldrb	r1, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r1, r4]	@ zero_extendqisi2
	mov	r1, r2
	bfi	r2, fp, #0, #8
	bfi	r1, r10, #0, #8
	bfi	r2, r9, #8, #8
	bfi	r1, lr, #8, #8
	bfi	r2, ip, #16, #8
	ldrb	ip, [r3, #-5]	@ zero_extendqisi2
	bfi	r1, r0, #16, #8
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	ldrb	ip, [ip, r4]	@ zero_extendqisi2
	ldrb	r0, [r0, r4]	@ zero_extendqisi2
	bfi	r2, ip, #24, #8
	str	r2, [r3, #-8]
	bfi	r1, r0, #24, #8
	cmp	r3, r7
	str	r1, [r3, #-4]
	bne	.L18
	ldrb	r1, [sp, #20]	@ zero_extendqisi2
	movs	r3, #0
	ldrb	r0, [sp, #24]	@ zero_extendqisi2
	ldrb	ip, [sp, #16]	@ zero_extendqisi2
	bfi	r3, r1, #0, #8
	ldrb	r1, [sp, #25]	@ zero_extendqisi2
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	bfi	r3, r1, #8, #8
	ldrb	r1, [sp, #30]	@ zero_extendqisi2
	bfi	r3, r1, #16, #8
	ldrb	r1, [sp, #19]	@ zero_extendqisi2
	bfi	r3, r1, #24, #8
	str	r3, [sp, #40]
	movs	r3, #0
	mov	r1, r3
	bfi	r3, r0, #0, #8
	movs	r0, #0
	bfi	r1, r2, #0, #8
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	bfi	r0, ip, #0, #8
	ldrb	ip, [sp, #17]	@ zero_extendqisi2
	bfi	r3, r2, #8, #8
	ldrb	r2, [sp, #18]	@ zero_extendqisi2
	bfi	r1, ip, #8, #8
	ldrb	ip, [sp, #21]	@ zero_extendqisi2
	bfi	r3, r2, #16, #8
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	bfi	r0, ip, #8, #8
	ldrb	ip, [sp, #22]	@ zero_extendqisi2
	bfi	r3, r2, #24, #8
	str	r3, [sp, #44]
	bfi	r1, ip, #16, #8
	ldrb	ip, [sp, #26]	@ zero_extendqisi2
	movs	r3, #16
	mov	r2, r8
	bfi	r0, ip, #16, #8
	ldrb	ip, [sp, #27]	@ zero_extendqisi2
	bfi	r1, ip, #24, #8
	str	r1, [sp, #48]
	ldrb	r1, [sp, #31]	@ zero_extendqisi2
	bfi	r0, r1, #24, #8
	mov	r1, r3
	str	r0, [sp, #36]
	mov	r0, r6
	bl	_copy(PLT)
	ldrb	r0, [sp, #16]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #17]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #18]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r0, [sp, #17]	@ zero_extendqisi2
	ldrb	ip, [sp, #19]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	fp, [sp, #16]	@ zero_extendqisi2
	eor	r2, r2, ip
	eor	r2, r9, r2
	eors	r1, r1, r2
	strb	r1, [sp, #36]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #18]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #18]	@ zero_extendqisi2
	ldrb	ip, [sp, #19]	@ zero_extendqisi2
	eor	r3, fp, r0
	eor	r3, r3, ip
	eor	r2, r9, r3
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	eors	r2, r2, r1
	strb	r2, [sp, #37]
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	eor	fp, r3, r2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #19]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #19]	@ zero_extendqisi2
	eor	r3, fp, r0
	ldrb	r0, [sp, #16]	@ zero_extendqisi2
	eor	r2, r9, r3
	eor	r3, r1, r2
	strb	r3, [sp, #38]
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #17]	@ zero_extendqisi2
	ldrb	r1, [sp, #18]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	r0, [sp, #19]	@ zero_extendqisi2
	eors	r2, r2, r1
	eors	r3, r3, r2
	uxtb	r9, r3
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #20]	@ zero_extendqisi2
	eor	r3, r9, r2
	strb	r3, [sp, #39]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #21]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r0, [sp, #21]	@ zero_extendqisi2
	ldrb	ip, [sp, #23]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	fp, [sp, #20]	@ zero_extendqisi2
	eor	r2, r2, ip
	eor	r2, r9, r2
	eors	r1, r1, r2
	strb	r1, [sp, #40]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #22]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #22]	@ zero_extendqisi2
	ldrb	ip, [sp, #23]	@ zero_extendqisi2
	eor	r3, fp, r0
	eor	r3, r3, ip
	eor	r2, r9, r3
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	eors	r2, r2, r1
	strb	r2, [sp, #41]
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	eor	fp, r3, r2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #23]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #23]	@ zero_extendqisi2
	eor	r3, fp, r0
	ldrb	r0, [sp, #20]	@ zero_extendqisi2
	eor	r2, r9, r3
	eor	r3, r1, r2
	strb	r3, [sp, #42]
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #20]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #21]	@ zero_extendqisi2
	ldrb	r1, [sp, #22]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	r0, [sp, #23]	@ zero_extendqisi2
	eors	r2, r2, r1
	eors	r3, r3, r2
	uxtb	r9, r3
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #24]	@ zero_extendqisi2
	eor	r3, r9, r2
	strb	r3, [sp, #43]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #25]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #26]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r0, [sp, #25]	@ zero_extendqisi2
	ldrb	ip, [sp, #27]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	fp, [sp, #24]	@ zero_extendqisi2
	eor	r2, r2, ip
	eor	r3, r9, r2
	eors	r1, r1, r3
	strb	r1, [sp, #44]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #26]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #26]	@ zero_extendqisi2
	ldrb	r1, [sp, #27]	@ zero_extendqisi2
	eor	ip, fp, r0
	eor	r1, r1, ip
	eor	r3, r9, r1
	ldrb	r1, [sp, #24]	@ zero_extendqisi2
	eors	r2, r2, r3
	strb	r2, [sp, #45]
	ldrb	r2, [sp, #25]	@ zero_extendqisi2
	eor	fp, r1, r2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #27]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #27]	@ zero_extendqisi2
	eor	r3, fp, r0
	ldrb	r0, [sp, #24]	@ zero_extendqisi2
	eor	r2, r9, r3
	eor	r3, r1, r2
	strb	r3, [sp, #46]
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #24]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #25]	@ zero_extendqisi2
	ldrb	r1, [sp, #26]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	r0, [sp, #27]	@ zero_extendqisi2
	eors	r2, r2, r1
	eors	r3, r3, r2
	uxtb	r9, r3
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #28]	@ zero_extendqisi2
	eor	r3, r9, r2
	strb	r3, [sp, #47]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #29]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r0, [sp, #29]	@ zero_extendqisi2
	ldrb	ip, [sp, #31]	@ zero_extendqisi2
	eors	r2, r2, r0
	ldrb	fp, [sp, #28]	@ zero_extendqisi2
	eor	r2, r2, ip
	eor	r2, r9, r2
	eors	r1, r1, r2
	strb	r1, [sp, #48]
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #30]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #30]	@ zero_extendqisi2
	ldrb	ip, [sp, #31]	@ zero_extendqisi2
	eor	r3, fp, r0
	eor	r3, r3, ip
	eor	r2, r9, r3
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	eors	r2, r2, r1
	strb	r2, [sp, #49]
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	eor	fp, r3, r2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [sp, #31]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r1, r0
	ldrb	r0, [sp, #31]	@ zero_extendqisi2
	eor	r3, fp, r0
	ldrb	r0, [sp, #28]	@ zero_extendqisi2
	eor	r2, r9, r3
	eor	r3, r1, r2
	strb	r3, [sp, #50]
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r0, [sp, #29]	@ zero_extendqisi2
	ldrb	r2, [sp, #30]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r0, [sp, #31]	@ zero_extendqisi2
	eors	r3, r3, r2
	eors	r1, r1, r3
	uxtb	r9, r1
	bl	_double_byte(PLT)
	movs	r3, #16
	eor	r1, r9, r0
	mov	r2, r8
	strb	r1, [sp, #51]
	mov	r0, r6
	mov	r1, r3
	bl	_copy(PLT)
	ldrd	r3, r0, [r5, #16]
	ldrd	r1, r2, [r5, #24]
	rev	ip, r3
	ldr	r3, [sp, #20]
	rev	r0, r0
	rev	r1, r1
	rev	r2, r2
	eors	r0, r0, r3
	str	r0, [sp, #20]
	ldr	r0, [sp, #24]
	adds	r5, r5, #16
	eors	r1, r1, r0
	str	r1, [sp, #24]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #28]
	eor	r3, ip, r1
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	eors	r2, r2, r0
	str	r2, [sp, #28]
	cmp	r3, r5
	bne	.L17
	ldrd	fp, r9, [sp, #8]
	mov	r3, r6
	str	fp, [sp, #4]
.L19:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #8
	ldrb	fp, [r2, r4]	@ zero_extendqisi2
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	ldrb	r10, [r2, r4]	@ zero_extendqisi2
	ldrb	r2, [r3, #-7]	@ zero_extendqisi2
	ldrb	lr, [r2, r4]	@ zero_extendqisi2
	ldrb	r2, [r3, #-3]	@ zero_extendqisi2
	ldrb	ip, [r2, r4]	@ zero_extendqisi2
	ldrb	r2, [r3, #-6]	@ zero_extendqisi2
	ldrb	r5, [r2, r4]	@ zero_extendqisi2
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r2, r4]	@ zero_extendqisi2
	movs	r2, #0
	mov	r1, r2
	bfi	r2, fp, #0, #8
	bfi	r1, r10, #0, #8
	bfi	r2, lr, #8, #8
	bfi	r1, ip, #8, #8
	bfi	r2, r5, #16, #8
	bfi	r1, r0, #16, #8
	ldrb	r0, [r3, #-5]	@ zero_extendqisi2
	ldrb	r0, [r0, r4]	@ zero_extendqisi2
	bfi	r2, r0, #24, #8
	str	r2, [r3, #-8]
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	ldrb	r2, [r2, r4]	@ zero_extendqisi2
	bfi	r1, r2, #24, #8
	str	r1, [r3, #-4]
	cmp	r3, r7
	bne	.L19
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	movs	r4, #0
	ldrb	r1, [sp, #24]	@ zero_extendqisi2
	movs	r0, #0
	ldrb	r5, [sp, #16]	@ zero_extendqisi2
	mov	r2, r8
	bfi	r4, r3, #0, #8
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	bfi	r0, r1, #0, #8
	movs	r1, #0
	ldr	fp, [sp, #4]
	bfi	r1, r3, #0, #8
	movs	r3, #0
	bfi	r3, r5, #0, #8
	ldrb	r5, [sp, #25]	@ zero_extendqisi2
	bfi	r4, r5, #8, #8
	ldrb	r5, [sp, #29]	@ zero_extendqisi2
	bfi	r0, r5, #8, #8
	ldrb	r5, [sp, #17]	@ zero_extendqisi2
	bfi	r1, r5, #8, #8
	ldrb	r5, [sp, #21]	@ zero_extendqisi2
	bfi	r3, r5, #8, #8
	ldrb	r5, [sp, #30]	@ zero_extendqisi2
	bfi	r4, r5, #16, #8
	ldrb	r5, [sp, #18]	@ zero_extendqisi2
	bfi	r0, r5, #16, #8
	ldrb	r5, [sp, #22]	@ zero_extendqisi2
	bfi	r1, r5, #16, #8
	ldrb	r5, [sp, #26]	@ zero_extendqisi2
	bfi	r3, r5, #16, #8
	ldrb	r5, [sp, #19]	@ zero_extendqisi2
	bfi	r4, r5, #24, #8
	str	r4, [sp, #40]
	ldrb	r4, [sp, #23]	@ zero_extendqisi2
	bfi	r0, r4, #24, #8
	str	r0, [sp, #44]
	ldrb	r0, [sp, #27]	@ zero_extendqisi2
	bfi	r1, r0, #24, #8
	str	r1, [sp, #48]
	ldrb	r1, [sp, #31]	@ zero_extendqisi2
	mov	r0, r6
	bfi	r3, r1, #24, #8
	str	r3, [sp, #36]
	movs	r3, #16
	mov	r1, r3
	bl	_copy(PLT)
	ldr	r5, [sp, #20]
	ldrd	r1, r3, [r9, #160]
	mov	r0, fp
	rev	r4, r1
	rev	r1, r3
	ldrd	r3, r2, [r9, #168]
	eors	r1, r1, r5
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
	rev	r3, r3
	rev	r2, r2
	eors	r3, r3, r1
	ldr	r1, [sp, #28]
	str	r3, [sp, #24]
	movs	r3, #16
	eors	r2, r2, r1
	str	r2, [sp, #28]
	ldr	r2, [sp, #16]
	mov	r1, r3
	eors	r4, r4, r2
	mov	r2, r6
	str	r4, [sp, #16]
	bl	_copy(PLT)
	mov	r0, r6
	movs	r2, #16
	movs	r1, #0
	bl	_set(PLT)
	movs	r0, #1
	b	.L15
.L27:
	bl	__stack_chk_fail(PLT)
.L29:
	.align	2
.L28:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	.LANCHOR0-(.LPIC7+4)
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
