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
	ldr	r2, .L15
	ldr	r3, .L15+4
	push	{r4, r5, r6, r7, lr}
.LPIC6:
	add	r2, pc
	ldr	r6, .L15+8
	sub	sp, sp, #52
	mov	r7, r1
.LPIC0:
	add	r6, pc
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r4, sp
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	cmp	r5, #0
	it	ne
	cmpne	r7, #0
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r6, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	it	eq
	moveq	r0, #0
	beq	.L1
	ldrb	r1, [r7]	@ zero_extendqisi2
	sub	ip, r5, #4
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldr	lr, .L15+12
	orr	r3, r3, r1, lsl #24
	orr	r3, r3, r2, lsl #16
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
.LPIC1:
	add	lr, pc
	orr	r3, r3, r2, lsl #8
	str	r3, [r5]
	ldrb	r3, [r7, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #5]	@ zero_extendqisi2
	lsls	r3, r3, #24
	orr	r3, r3, r2, lsl #16
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	orr	r3, r3, r2, lsl #8
	str	r3, [r5, #4]
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	ldrb	r2, [r7, #8]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r2, lsl #24
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldrb	r2, [r7, #10]	@ zero_extendqisi2
	orr	r3, r3, r2, lsl #8
	str	r3, [r5, #8]
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	ldrb	r2, [r7, #12]	@ zero_extendqisi2
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r2, lsl #24
	ldrb	r2, [r7, #14]	@ zero_extendqisi2
	orrs	r3, r3, r1
	movs	r1, #4
	orr	r3, r3, r2, lsl #8
	str	r3, [r5, #12]
.L6:
	lsls	r2, r1, #30
	bne	.L3
	ror	r3, r3, #24
	bic	r5, r1, #3
	add	r2, r5, #48
	ldr	r4, [ip, #4]!
	add	r6, lr, r3, lsr #24
	add	r5, sp, r2
	ubfx	r0, r3, #16, #8
	uxtab	r2, lr, r3
	add	r0, r0, lr
	ubfx	r3, r3, #8, #8
	add	r3, r3, lr
	ldrb	r7, [r6, #44]	@ zero_extendqisi2
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r6, [r0, #44]	@ zero_extendqisi2
	cmp	r1, #44
	ldrb	r0, [r3, #44]	@ zero_extendqisi2
	orr	r3, r2, r7, lsl #24
	ldr	r5, [r5, #-48]
	orr	r3, r3, r6, lsl #16
	orr	r3, r3, r0, lsl #8
	eor	r3, r3, r5
	eor	r3, r3, r4
	str	r3, [ip, #16]
	bne	.L6
	movs	r0, #1
.L1:
	ldr	r2, .L15+16
	ldr	r3, .L15+4
.LPIC5:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L14
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L3:
	ldr	r2, [ip, #4]!
	adds	r1, r1, #1
	cmp	r1, #44
	eor	r3, r3, r2
	str	r3, [ip, #16]
	bne	.L6
	movs	r0, #1
	b	.L1
.L14:
	bl	__stack_chk_fail(PLT)
.L16:
	.align	2
.L15:
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
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	it	eq
	moveq	r3, #1
	sub	sp, sp, #100
	it	ne
	movne	r3, #0
	cmp	r0, #0
	it	eq
	orreq	r3, r3, #1
	mov	r4, r2
	ldr	r2, .L26
	str	r0, [sp, #48]
	ldr	r0, .L26+4
.LPIC25:
	add	r0, pc
	ldr	r2, [r0, r2]
	movs	r0, #0
	ldr	r2, [r2]
	str	r2, [sp, #92]
	mov	r2, #0
	cbz	r3, .L24
.L17:
	ldr	r2, .L26+8
	ldr	r3, .L26
.LPIC24:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #92]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L25
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L24:
	movs	r3, #16
	mov	r2, r1
	add	r0, sp, #56
	mov	r1, r3
	str	r0, [sp, #36]
	bl	_copy(PLT)
	ldr	r2, [r4]
	ldrb	r3, [sp, #58]	@ zero_extendqisi2
	ldrb	r5, [sp, #59]	@ zero_extendqisi2
	ldrb	r7, [sp, #56]	@ zero_extendqisi2
	eor	r3, r3, r2, lsr #8
	ldrb	ip, [sp, #57]	@ zero_extendqisi2
	ldrd	r0, r6, [r4, #4]
	eors	r5, r5, r2
	uxtb	r1, r3
	ldrb	r3, [sp, #61]	@ zero_extendqisi2
	eor	ip, ip, r2, lsr #16
	eor	r7, r7, r2, lsr #24
	uxtb	r2, r5
	str	r2, [sp, #20]
	ldrb	r2, [sp, #63]	@ zero_extendqisi2
	eor	r3, r3, r0, lsr #16
	str	r1, [sp, #4]
	uxtb	ip, ip
	eors	r2, r2, r0
	uxtb	r1, r3
	ldrb	r3, [sp, #62]	@ zero_extendqisi2
	uxtb	r2, r2
	str	r2, [sp, #24]
	ldrb	r2, [sp, #67]	@ zero_extendqisi2
	eor	r3, r3, r0, lsr #8
	ldr	lr, [r4, #12]
	eors	r2, r2, r6
	str	r4, [sp, #52]
	uxtb	r8, r3
	ldrb	r3, [sp, #66]	@ zero_extendqisi2
	uxtb	r2, r2
	str	r2, [sp, #28]
	ldrb	r2, [sp, #71]	@ zero_extendqisi2
	eor	r3, r3, r6, lsr #8
	ldrb	r4, [sp, #70]	@ zero_extendqisi2
	eor	r2, r2, lr
	str	r1, [sp]
	uxtb	r10, r3
	ldrb	r1, [sp, #65]	@ zero_extendqisi2
	uxtb	r5, r2
	str	r5, [sp, #8]
	ldrb	r5, [sp, #60]	@ zero_extendqisi2
	eor	r4, r4, lr, lsr #8
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	eor	r1, r1, r6, lsr #16
	ldrb	r2, [sp, #68]	@ zero_extendqisi2
	uxtb	r4, r4
	eor	r5, r5, r0, lsr #24
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	eor	r3, r3, lr, lsr #16
	ldr	fp, .L26+12
	eor	r2, r2, lr, lsr #24
	ldr	lr, [sp, #8]
	eor	r0, r0, r6, lsr #24
	ldr	r6, [sp, #52]
	uxtb	r1, r1
	uxtb	r3, r3
.LPIC7:
	add	fp, pc
	mov	r9, r6
	str	r8, [sp, #16]
	adds	r6, r6, #144
	str	r6, [sp, #44]
	add	r6, sp, #76
	str	r6, [sp, #40]
.L19:
	ldr	r6, [sp]
	add	ip, ip, fp
	add	r7, r7, fp
	add	r0, r0, fp
	add	r6, r6, fp
	add	r3, r3, fp
	mov	r8, r6
	ldrb	r6, [ip, #44]	@ zero_extendqisi2
	ldrb	r7, [r7, #44]	@ zero_extendqisi2
	add	r2, r2, fp
	ldrb	r0, [r0, #44]	@ zero_extendqisi2
	add	r5, r5, fp
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	add	r1, r1, fp
	str	r7, [sp]
	mov	r7, r6
	ldr	r6, [sp, #24]
	add	r10, r10, fp
	str	r0, [sp, #8]
	add	r4, r4, fp
	ldr	r0, [sp, #16]
	add	r6, r6, fp
	str	r3, [sp, #16]
	mov	ip, r6
	ldr	r3, [sp, #20]
	add	r0, r0, fp
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	add	lr, lr, fp
	ldr	r6, [sp, #28]
	add	r3, r3, fp
	str	r2, [sp, #12]
	ldr	r2, [sp, #4]
	add	r6, r6, fp
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	add	r2, r2, fp
	ldrb	r5, [r5, #44]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldr	r3, [sp]
	str	r5, [sp, #32]
	ldrb	r5, [r8, #44]	@ zero_extendqisi2
	ldrb	r8, [r2, #44]	@ zero_extendqisi2
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldrb	r0, [r6, #44]	@ zero_extendqisi2
	movs	r6, #0
	ldrb	ip, [ip, #44]	@ zero_extendqisi2
	bfi	r6, r3, #0, #8
	ldr	r3, [sp, #4]
	ldrb	lr, [lr, #44]	@ zero_extendqisi2
	bfi	r6, r7, #8, #8
	ldrb	r1, [r1, #44]	@ zero_extendqisi2
	ldrb	r10, [r10, #44]	@ zero_extendqisi2
	bfi	r6, r8, #16, #8
	ldrb	r4, [r4, #44]	@ zero_extendqisi2
	str	r7, [sp, #20]
	bfi	r6, r3, #24, #8
	str	r6, [sp, #56]
	ldr	r3, [sp, #32]
	movs	r6, #0
	ldr	r7, [sp, #8]
	bfi	r6, r3, #0, #8
	bfi	r6, r5, #8, #8
	bfi	r6, r2, #16, #8
	bfi	r6, ip, #24, #8
	str	r6, [sp, #60]
	movs	r6, #0
	bfi	r6, r7, #0, #8
	ldr	r7, [sp, #12]
	bfi	r6, r1, #8, #8
	bfi	r6, r10, #16, #8
	bfi	r6, r0, #24, #8
	str	r6, [sp, #64]
	movs	r6, #0
	bfi	r6, r7, #0, #8
	ldr	r7, [sp, #16]
	bfi	r6, r7, #8, #8
	ldr	r7, [sp]
	bfi	r6, r4, #16, #8
	bfi	r6, lr, #24, #8
	str	r6, [sp, #68]
	movs	r6, #0
	bfi	r6, r7, #0, #8
	ldr	r7, [sp, #8]
	bfi	r6, r5, #8, #8
	movs	r5, #0
	bfi	r5, r3, #0, #8
	ldr	r3, [sp, #4]
	bfi	r6, r10, #16, #8
	bfi	r5, r1, #8, #8
	ldr	r1, [sp, #16]
	bfi	r6, lr, #24, #8
	str	r6, [sp, #76]
	bfi	r5, r4, #16, #8
	movs	r4, #0
	ldr	r6, [sp, #36]
	bfi	r5, r3, #24, #8
	movs	r3, #0
	str	r5, [sp, #80]
	bfi	r3, r7, #0, #8
	ldr	r7, [sp, #12]
	bfi	r3, r1, #8, #8
	bfi	r4, r7, #0, #8
	ldr	r7, [sp, #20]
	bfi	r3, r8, #16, #8
	bfi	r4, r7, #8, #8
	ldr	r7, [sp, #40]
	bfi	r3, ip, #24, #8
	str	r3, [sp, #84]
	bfi	r4, r2, #16, #8
	movs	r3, #16
	mov	r2, r7
	mov	r1, r3
	bfi	r4, r0, #24, #8
	mov	r0, r6
	str	r4, [sp, #88]
	bl	_copy(PLT)
	ldrb	r0, [sp, #56]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #57]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #58]	@ zero_extendqisi2
	mov	r2, r0
	ldrb	r0, [sp, #57]	@ zero_extendqisi2
	ldrb	r1, [sp, #59]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r5, [sp, #56]	@ zero_extendqisi2
	eors	r3, r3, r1
	eors	r4, r4, r3
	eors	r2, r2, r4
	strb	r2, [sp, #76]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #58]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #58]	@ zero_extendqisi2
	ldrb	r1, [sp, #59]	@ zero_extendqisi2
	eor	r3, r5, r0
	ldrb	r5, [sp, #56]	@ zero_extendqisi2
	eors	r3, r3, r1
	eors	r4, r4, r3
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	eors	r2, r2, r4
	strb	r2, [sp, #77]
	eors	r5, r5, r3
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #59]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #56]	@ zero_extendqisi2
	eors	r5, r5, r2
	eors	r4, r4, r5
	eors	r3, r3, r4
	strb	r3, [sp, #78]
	bl	_double_byte(PLT)
	ldrb	r1, [sp, #57]	@ zero_extendqisi2
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	mov	r4, r0
	ldrb	r2, [sp, #58]	@ zero_extendqisi2
	eors	r3, r3, r1
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	eors	r3, r3, r2
	eors	r4, r4, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	uxtb	r4, r4
	eors	r4, r4, r3
	strb	r4, [sp, #79]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #62]	@ zero_extendqisi2
	mov	r2, r0
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	ldrb	r1, [sp, #63]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r5, [sp, #60]	@ zero_extendqisi2
	eors	r3, r3, r1
	eors	r4, r4, r3
	eors	r2, r2, r4
	strb	r2, [sp, #80]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	ldrb	r2, [sp, #63]	@ zero_extendqisi2
	eors	r5, r5, r0
	eors	r2, r2, r5
	ldrb	r5, [sp, #60]	@ zero_extendqisi2
	eors	r4, r4, r2
	ldrb	r2, [sp, #61]	@ zero_extendqisi2
	eors	r3, r3, r4
	strb	r3, [sp, #81]
	eors	r5, r5, r2
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #63]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	eors	r5, r5, r2
	eors	r4, r4, r5
	eors	r3, r3, r4
	strb	r3, [sp, #82]
	bl	_double_byte(PLT)
	ldrb	r1, [sp, #61]	@ zero_extendqisi2
	ldrb	r3, [sp, #60]	@ zero_extendqisi2
	mov	r4, r0
	ldrb	r2, [sp, #62]	@ zero_extendqisi2
	eors	r3, r3, r1
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	eors	r3, r3, r2
	eors	r4, r4, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	uxtb	r4, r4
	eors	r4, r4, r3
	strb	r4, [sp, #83]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #66]	@ zero_extendqisi2
	mov	r2, r0
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	ldrb	r1, [sp, #67]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r5, [sp, #64]	@ zero_extendqisi2
	eors	r3, r3, r1
	eors	r4, r4, r3
	eors	r2, r2, r4
	strb	r2, [sp, #84]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	ldrb	r2, [sp, #67]	@ zero_extendqisi2
	eors	r5, r5, r0
	eors	r2, r2, r5
	ldrb	r5, [sp, #64]	@ zero_extendqisi2
	eors	r4, r4, r2
	ldrb	r2, [sp, #65]	@ zero_extendqisi2
	eors	r3, r3, r4
	strb	r3, [sp, #85]
	eors	r5, r5, r2
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #67]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	eors	r5, r5, r2
	eors	r4, r4, r5
	eors	r3, r3, r4
	strb	r3, [sp, #86]
	bl	_double_byte(PLT)
	ldrb	r1, [sp, #65]	@ zero_extendqisi2
	ldrb	r3, [sp, #64]	@ zero_extendqisi2
	mov	r4, r0
	ldrb	r2, [sp, #66]	@ zero_extendqisi2
	eors	r3, r3, r1
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	eors	r3, r3, r2
	eors	r4, r4, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	uxtb	r4, r4
	eors	r4, r4, r3
	strb	r4, [sp, #87]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [sp, #70]	@ zero_extendqisi2
	mov	r2, r0
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	ldrb	r1, [sp, #71]	@ zero_extendqisi2
	eors	r3, r3, r0
	ldrb	r5, [sp, #68]	@ zero_extendqisi2
	eors	r3, r3, r1
	eors	r4, r4, r3
	eors	r2, r2, r4
	strb	r2, [sp, #88]
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r1, [sp, #71]	@ zero_extendqisi2
	eor	r3, r5, r0
	ldrb	r5, [sp, #68]	@ zero_extendqisi2
	eors	r3, r3, r1
	eors	r4, r4, r3
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	eors	r2, r2, r4
	strb	r2, [sp, #89]
	eors	r5, r5, r3
	bl	_double_byte(PLT)
	mov	r4, r0
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [sp, #71]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	eors	r5, r5, r2
	eors	r4, r4, r5
	eors	r3, r3, r4
	strb	r3, [sp, #90]
	bl	_double_byte(PLT)
	ldrb	r1, [sp, #69]	@ zero_extendqisi2
	ldrb	r3, [sp, #68]	@ zero_extendqisi2
	mov	r4, r0
	ldrb	r2, [sp, #70]	@ zero_extendqisi2
	eors	r3, r3, r1
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	eors	r3, r3, r2
	eors	r4, r4, r3
	bl	_double_byte(PLT)
	movs	r3, #16
	mov	r2, r7
	uxtb	r4, r4
	mov	r1, r3
	eors	r4, r4, r0
	mov	r0, r6
	strb	r4, [sp, #91]
	bl	_copy(PLT)
	ldr	r3, [r9, #16]
	ldrb	r1, [sp, #58]	@ zero_extendqisi2
	ldrb	ip, [sp, #57]	@ zero_extendqisi2
	ldrb	r7, [sp, #56]	@ zero_extendqisi2
	ldrb	r2, [sp, #59]	@ zero_extendqisi2
	eor	r1, r1, r3, lsr #8
	ldr	r0, [r9, #20]
	eor	ip, ip, r3, lsr #16
	eors	r2, r2, r3
	eor	r7, r7, r3, lsr #24
	uxtb	r3, r1
	str	r3, [sp, #4]
	strb	r3, [sp, #58]
	uxtb	r2, r2
	ldrb	r3, [sp, #61]	@ zero_extendqisi2
	uxtb	ip, ip
	str	r2, [sp, #20]
	strb	r2, [sp, #59]
	eor	r3, r3, r0, lsr #16
	ldrb	r1, [sp, #65]	@ zero_extendqisi2
	ldrd	r2, r8, [r9, #24]
	uxtb	r3, r3
	str	r3, [sp]
	add	r9, r9, #16
	strb	r3, [sp, #61]
	ldrb	r3, [sp, #62]	@ zero_extendqisi2
	eor	r1, r1, r2, lsr #16
	ldrb	r10, [sp, #66]	@ zero_extendqisi2
	ldrb	r4, [sp, #63]	@ zero_extendqisi2
	uxtb	r1, r1
	eor	r3, r3, r0, lsr #8
	ldrb	r6, [sp, #67]	@ zero_extendqisi2
	eor	r10, r10, r2, lsr #8
	eors	r4, r4, r0
	uxtb	r3, r3
	str	r3, [sp, #16]
	strb	r3, [sp, #62]
	eors	r6, r6, r2
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	uxtb	r4, r4
	uxtb	r10, r10
	str	r4, [sp, #24]
	strb	r4, [sp, #63]
	uxtb	r4, r6
	eor	r3, r3, r8, lsr #16
	str	r4, [sp, #28]
	strb	r4, [sp, #67]
	uxtb	r3, r3
	strb	r7, [sp, #56]
	strb	ip, [sp, #57]
	strb	r1, [sp, #65]
	strb	r10, [sp, #66]
	strb	r3, [sp, #69]
	ldrb	r5, [sp, #60]	@ zero_extendqisi2
	ldrb	r4, [sp, #70]	@ zero_extendqisi2
	ldrb	lr, [sp, #71]	@ zero_extendqisi2
	eor	r5, r5, r0, lsr #24
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	ldr	r6, [sp, #44]
	eor	r4, r4, r8, lsr #8
	eor	lr, lr, r8
	strb	r5, [sp, #60]
	eor	r0, r0, r2, lsr #24
	ldrb	r2, [sp, #68]	@ zero_extendqisi2
	uxtb	r4, r4
	uxtb	lr, lr
	cmp	r9, r6
	strb	r0, [sp, #64]
	eor	r2, r2, r8, lsr #24
	strb	r4, [sp, #70]
	strb	r2, [sp, #68]
	strb	lr, [sp, #71]
	bne	.L19
	add	r3, fp, #44
	uxtb	r1, r7
	movs	r0, #0
	ldr	r2, [sp, #40]
	ldrb	r9, [r1, r3]	@ zero_extendqisi2
	uxtb	r1, r5
	ldrb	ip, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [sp, #57]	@ zero_extendqisi2
	ldrb	r4, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [sp, #61]	@ zero_extendqisi2
	str	r4, [sp, #8]
	ldrb	r8, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [sp, #58]	@ zero_extendqisi2
	ldrb	r5, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [sp, #62]	@ zero_extendqisi2
	str	r5, [sp, #12]
	ldrb	r6, [r1, r3]	@ zero_extendqisi2
	mov	r1, r0
	bfi	r0, r9, #0, #8
	str	r6, [sp, #16]
	bfi	r1, ip, #0, #8
	bfi	r0, r4, #8, #8
	ldrb	r4, [sp, #59]	@ zero_extendqisi2
	bfi	r1, r8, #8, #8
	bfi	r0, r5, #16, #8
	bfi	r1, r6, #16, #8
	ldrb	r5, [r4, r3]	@ zero_extendqisi2
	bfi	r0, r5, #24, #8
	str	r0, [sp, #56]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	str	r0, [sp, #20]
	bfi	r1, r0, #24, #8
	str	r1, [sp, #60]
	ldrb	r1, [sp, #64]	@ zero_extendqisi2
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	mov	r0, r1
	ldrb	r1, [sp, #68]	@ zero_extendqisi2
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	mov	fp, r1
	ldrb	r1, [sp, #65]	@ zero_extendqisi2
	ldrb	r7, [r1, r3]	@ zero_extendqisi2
	uxtb	r1, r10
	ldrb	lr, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [sp, #67]	@ zero_extendqisi2
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	str	r1, [sp]
	ldrb	r1, [sp, #69]	@ zero_extendqisi2
	ldrb	r10, [r1, r3]	@ zero_extendqisi2
	ldrb	r1, [sp, #70]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r6, [r1, r3]	@ zero_extendqisi2
	movs	r1, #0
	mov	r4, r1
	bfi	r1, r0, #0, #8
	ldr	r0, [sp]
	bfi	r4, fp, #0, #8
	bfi	r1, r7, #8, #8
	bfi	r4, r10, #8, #8
	bfi	r1, lr, #16, #8
	bfi	r4, r6, #16, #8
	bfi	r1, r0, #24, #8
	movs	r0, #0
	str	r1, [sp, #64]
	bfi	r0, r9, #0, #8
	bfi	r0, r8, #8, #8
	bfi	r0, lr, #16, #8
	mov	lr, #0
	bfi	lr, ip, #0, #8
	bfi	lr, r7, #8, #8
	ldr	r7, [sp, #4]
	bfi	lr, r6, #16, #8
	ldr	r6, [sp, #12]
	bfi	lr, r5, #24, #8
	movs	r5, #0
	bfi	r5, r7, #0, #8
	ldr	r7, [sp, #8]
	bfi	r5, r10, #8, #8
	bfi	r5, r6, #16, #8
	ldr	r6, [sp, #20]
	bfi	r5, r6, #24, #8
	movs	r6, #0
	strd	lr, r5, [sp, #80]
	bfi	r6, fp, #0, #8
	bfi	r6, r7, #8, #8
	ldr	r7, [sp, #16]
	bfi	r6, r7, #16, #8
	ldr	r7, [sp]
	bfi	r6, r7, #24, #8
	ldrb	r7, [sp, #71]	@ zero_extendqisi2
	str	r6, [sp, #88]
	ldr	r6, [sp, #36]
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	bfi	r4, r3, #24, #8
	bfi	r0, r3, #24, #8
	movs	r3, #16
	str	r0, [sp, #76]
	mov	r1, r3
	mov	r0, r6
	str	r4, [sp, #68]
	bl	_copy(PLT)
	ldr	r2, [sp, #52]
	ldr	r5, [sp, #60]
	ldr	r0, [sp, #48]
	ldrd	r1, r3, [r2, #160]
	rev	r4, r1
	rev	r1, r3
	ldrd	r3, r2, [r2, #168]
	eors	r1, r1, r5
	str	r1, [sp, #60]
	ldr	r1, [sp, #64]
	rev	r3, r3
	rev	r2, r2
	eors	r3, r3, r1
	ldr	r1, [sp, #68]
	str	r3, [sp, #64]
	movs	r3, #16
	eors	r2, r2, r1
	str	r2, [sp, #68]
	ldr	r2, [sp, #56]
	mov	r1, r3
	eors	r4, r4, r2
	mov	r2, r6
	str	r4, [sp, #56]
	bl	_copy(PLT)
	mov	r0, r6
	movs	r2, #16
	movs	r1, #0
	bl	_set(PLT)
	movs	r0, #1
	b	.L17
.L25:
	bl	__stack_chk_fail(PLT)
.L27:
	.align	2
.L26:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
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
