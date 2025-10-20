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
	.file	"tinycrypt_ecc.c"
	.text
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mult, %function
uECC_vli_mult:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	mov	r7, r2
	sub	sp, sp, #20
	subs	r10, r3, #0
	ble	.L13
	mov	lr, #0
	sub	r9, r0, #4
	mov	ip, lr
	mov	r3, lr
	mov	fp, r0
.L3:
	mov	r4, r3
	mov	r3, ip
	mov	ip, #0
	sxtb	r8, lr
	mov	r0, ip
	mov	r1, ip
	str	r9, [sp]
.L6:
	sub	r2, lr, r1
	ldr	r9, [r6, r1, lsl #2]
	adds	r0, r0, #1
	movs	r5, #0
	ldr	r2, [r7, r2, lsl #2]
	sxtb	r1, r0
	umull	r2, r9, r2, r9
	adds	r2, r2, r4
	adcs	r9, r9, r3
	mov	r4, r2
	it	cs
	movcs	r5, #1
	mov	r3, r9
	add	ip, ip, r5
	cmp	r8, r1
	bge	.L6
	ldr	r9, [sp]
	add	lr, lr, #1
	cmp	r10, lr
	str	r2, [r9, #4]!
	bne	.L3
	mov	r0, fp
.L2:
	mov	r2, #-1
	mov	r1, r10
	add	fp, r2, r10, lsl #1
	cmp	r10, fp
	bge	.L7
	uxtb	r4, r10
	subs	r2, r6, #4
	mov	r8, r10
	strd	fp, r2, [sp, #8]
	mov	r9, #1
	mov	r2, r4
	mov	lr, r7
.L12:
	sxtb	r4, r9
	cmp	r10, r4
	ble	.L14
	sub	r7, r2, r9
	subs	r5, r1, r4
	mov	r1, r3
	mov	r3, ip
	uxtab	r7, r4, r7
	add	ip, r4, #1073741824
	ldr	r4, [sp, #12]
	add	ip, ip, #-1
	strd	r8, r9, [sp]
	add	r5, lr, r5, lsl #2
	add	r7, r4, r7, lsl #2
	add	r4, r6, ip, lsl #2
	mov	r9, r4
	mov	ip, #0
.L11:
	ldr	r4, [r9, #4]!
	mov	fp, #0
	ldr	r8, [r5], #-4
	umull	r8, r4, r8, r4
	adds	r8, r8, r1
	adcs	r4, r4, r3
	mov	r1, r8
	it	cs
	movcs	fp, #1
	mov	r3, r4
	add	ip, ip, fp
	cmp	r7, r9
	bne	.L11
	ldrd	r8, r9, [sp]
.L8:
	str	r1, [r0, r8, lsl #2]
	add	r8, r8, #1
	ldr	r4, [sp, #8]
	add	r9, r9, #1
	sxtb	r8, r8
	uxtb	r9, r9
	mov	r1, r8
	cmp	r8, r4
	blt	.L12
.L7:
	add	r0, r0, r10, lsl #3
	str	r3, [r0, #-4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	mov	r1, r3
	mov	r3, ip
	mov	ip, #0
	b	.L8
.L13:
	mov	ip, #0
	mov	r3, ip
	b	.L2
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	1
	.p2align 2,,3
	.global	vli_mmod_fast_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	lr, r0, #4
	mov	r5, r0
	ldr	r0, .L61
	sub	sp, sp, #40
	ldr	r2, .L61+4
	subs	r3, r1, #4
.LPIC4:
	add	r0, pc
	add	r4, r1, #28
	ldr	r2, [r0, r2]
	ldr	r2, [r2]
	str	r2, [sp, #36]
	mov	r2, #0
	mov	r2, lr
.L22:
	ldr	r0, [r3, #4]!
	str	r0, [r2, #4]!
	cmp	r3, r4
	bne	.L22
	ldr	r2, [r1, #48]
	add	r0, sp, #4
	str	r2, [sp, #20]
	add	r4, sp, #36
	ldr	r2, [r1, #52]
	movs	r3, #0
	str	r2, [sp, #24]
	ldr	r2, [r1, #56]
	str	r2, [sp, #28]
	ldr	r2, [r1, #60]
	str	r2, [sp, #32]
	ldr	r2, [r1, #44]
	str	r2, [sp, #16]
	mov	r2, r0
	strd	r3, r3, [sp, #8]
	str	r3, [sp, #4]
.L23:
	ldr	r7, [r2]
	add	r6, r3, r7, lsl #1
	str	r6, [r2], #4
	cmp	r7, r6
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	cmp	r4, r2
	bne	.L23
	add	ip, r5, #28
	mov	r9, r0
	mov	r8, lr
	movs	r2, #0
.L24:
	ldr	r7, [r8, #4]!
	ldr	r10, [r9], #4
	adds	r6, r7, r2
	add	r6, r6, r10
	str	r6, [r8]
	cmp	r7, r6
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	ip, r8
	bne	.L24
	ldr	r6, [r1, #52]
	add	r2, r2, r3
	str	r6, [sp, #20]
	movs	r3, #0
	ldr	r6, [r1, #56]
	str	r6, [sp, #24]
	ldr	r6, [r1, #60]
	str	r6, [sp, #28]
	ldr	r6, [r1, #48]
	str	r6, [sp, #16]
	mov	r6, r0
	str	r3, [sp, #32]
.L25:
	ldr	r8, [r6]
	add	r7, r3, r8, lsl #1
	str	r7, [r6], #4
	cmp	r8, r7
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	cmp	r4, r6
	bne	.L25
	add	r9, r2, r3
	mov	r8, r0
	mov	r6, lr
	movs	r3, #0
.L26:
	ldr	r7, [r6, #4]!
	ldr	r2, [r8], #4
	adds	r4, r3, r7
	add	r4, r4, r2
	str	r4, [r6]
	cmp	r7, r4
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	cmp	ip, r6
	bne	.L26
	ldr	r2, [r1, #36]
	mov	r7, r0
	str	r2, [sp, #8]
	mov	r4, lr
	ldr	r2, [r1, #40]
	add	r9, r9, r3
	str	r2, [sp, #12]
	movs	r3, #0
	ldr	r2, [r1, #32]
	str	r2, [sp, #4]
	ldr	r2, [r1, #60]
	str	r2, [sp, #32]
	ldr	r2, [r1, #56]
	strd	r3, r3, [sp, #20]
	str	r3, [sp, #16]
	str	r2, [sp, #28]
.L27:
	ldr	r6, [r4, #4]!
	ldr	r8, [r7], #4
	adds	r2, r3, r6
	add	r2, r2, r8
	str	r2, [r4]
	cmp	r6, r2
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	cmp	ip, r4
	bne	.L27
	add	r9, r9, r3
	ldr	r3, [r1, #52]
	str	r3, [sp, #16]
	mov	r8, r0
	str	r3, [sp, #28]
	mov	r6, lr
	ldr	r3, [r1, #32]
	movs	r2, #0
	str	r3, [sp, #32]
	ldr	r3, [r1, #40]
	str	r3, [sp, #8]
	ldr	r3, [r1, #44]
	str	r3, [sp, #12]
	ldr	r3, [r1, #56]
	str	r3, [sp, #20]
	ldr	r3, [r1, #60]
	str	r3, [sp, #24]
	ldr	r3, [r1, #36]
	str	r3, [sp, #4]
.L28:
	ldr	r7, [r6, #4]!
	ldr	r3, [r8], #4
	adds	r4, r7, r2
	add	r4, r4, r3
	str	r4, [r6]
	cmp	r7, r4
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	ip, r6
	bne	.L28
	add	r9, r9, r2
	ldr	r2, [r1, #48]
	str	r2, [sp, #8]
	mov	r7, r0
	ldr	r2, [r1, #52]
	mov	r4, lr
	str	r2, [sp, #12]
	movs	r3, #0
	ldr	r2, [r1, #44]
	str	r2, [sp, #4]
	ldr	r2, [r1, #40]
	str	r2, [sp, #32]
	ldr	r2, [r1, #32]
	strd	r3, r3, [sp, #20]
	str	r3, [sp, #16]
	str	r2, [sp, #28]
.L29:
	ldr	r6, [r4, #4]!
	ldr	r8, [r7], #4
	subs	r2, r6, r3
	sub	r2, r2, r8
	str	r2, [r4]
	cmp	r6, r2
	it	ne
	movne	r3, #0
	it	cc
	orrcc	r3, r3, #1
	cmp	ip, r4
	bne	.L29
	sub	r9, r9, r3
	ldr	r3, [r1, #52]
	str	r3, [sp, #8]
	mov	r8, r0
	ldr	r3, [r1, #56]
	mov	r6, lr
	str	r3, [sp, #12]
	movs	r2, #0
	ldr	r3, [r1, #60]
	str	r3, [sp, #16]
	ldr	r3, [r1, #48]
	str	r3, [sp, #4]
	ldr	r3, [r1, #44]
	str	r3, [sp, #32]
	ldr	r3, [r1, #36]
	str	r3, [sp, #28]
.L30:
	ldr	r7, [r6, #4]!
	ldr	r3, [r8], #4
	subs	r4, r7, r2
	subs	r4, r4, r3
	str	r4, [r6]
	cmp	r7, r4
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	ip, r6
	bne	.L30
	movs	r3, #0
	sub	r8, r9, r2
	str	r3, [sp, #28]
	mov	r9, r3
	ldr	r3, [r1, #32]
	mov	r6, r0
	str	r3, [sp, #16]
	mov	r2, lr
	ldr	r3, [r1, #36]
	str	r3, [sp, #20]
	ldr	r3, [r1, #40]
	str	r3, [sp, #24]
	ldr	r3, [r1, #56]
	str	r3, [sp, #8]
	ldr	r3, [r1, #60]
	str	r3, [sp, #12]
	ldr	r3, [r1, #52]
	str	r3, [sp, #4]
	ldr	r3, [r1, #48]
	str	r3, [sp, #32]
.L31:
	ldr	r4, [r2, #4]!
	ldr	r7, [r6], #4
	sub	r3, r4, r9
	subs	r3, r3, r7
	str	r3, [r2]
	cmp	r4, r3
	ite	eq
	moveq	r3, r9
	movne	r3, #0
	ite	cs
	movcs	r9, r3
	orrcc	r9, r3, #1
	cmp	r2, ip
	bne	.L31
	ldr	r3, [r1, #60]
	sub	r4, r8, r9
	str	r3, [sp, #8]
	mov	r2, lr
	ldr	r3, [r1, #56]
	movs	r7, #0
	str	r3, [sp, #4]
	ldr	r3, [r1, #36]
	str	r3, [sp, #16]
	ldr	r3, [r1, #40]
	str	r3, [sp, #20]
	ldr	r3, [r1, #44]
	str	r3, [sp, #24]
	ldr	r3, [r1, #52]
	str	r7, [sp, #12]
	str	r3, [sp, #32]
.L32:
	ldr	r1, [r2, #4]!
	ldr	r6, [r0], #4
	subs	r3, r1, r7
	subs	r3, r3, r6
	str	r3, [r2]
	cmp	r1, r3
	ite	eq
	moveq	r3, r7
	movne	r3, #0
	ite	cs
	movcs	r7, r3
	orrcc	r7, r3, #1
	cmp	r2, ip
	bne	.L32
	subs	r4, r4, r7
	bmi	.L35
	ldr	r6, .L61+8
	add	r7, r5, #32
.LPIC2:
	add	r6, pc
.L33:
	cbnz	r4, .L37
	add	r2, r6, #36
	mov	r3, r7
	b	.L39
.L58:
	bcc	.L37
	cmp	r3, r5
	beq	.L37
.L39:
	ldr	r0, [r2, #-4]!
	ldr	r1, [r3, #-4]!
	cmp	r0, r1
	bls	.L58
.L21:
	ldr	r2, .L61+12
	ldr	r3, .L61+4
.LPIC3:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L59
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L60:
	adds	r4, r4, r2
	bpl	.L21
.L35:
	ldr	r5, .L61+16
	mov	r1, lr
	movs	r2, #0
.LPIC0:
	add	r5, pc
.L34:
	ldr	r0, [r1, #4]!
	ldr	r3, [r5, #4]!
	add	r3, r3, r0
	add	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	r1, ip
	bne	.L34
	b	.L60
.L37:
	ldr	r8, .L61+20
	mov	r1, lr
	movs	r2, #0
.LPIC1:
	add	r8, pc
.L36:
	ldr	r0, [r1, #4]!
	ldr	r3, [r8, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	ip, r1
	bne	.L36
	subs	r4, r4, r2
	b	.L33
.L59:
	bl	__stack_chk_fail(PLT)
.L62:
	.align	2
.L61:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC2+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR0-(.LPIC1+4)
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_modInv_update, %function
vli_modInv_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	lsl	ip, r2, #2
	ldr	r4, [r0]
	add	r3, r0, ip
	ands	r4, r4, #1
	bne	.L81
	cmp	r0, r3
	bcs	.L63
.L68:
	movs	r1, #0
.L72:
	ldr	r2, [r3, #-4]!
	cmp	r0, r3
	orr	r5, r1, r2, lsr #1
	lsl	r1, r2, #31
	str	r5, [r3]
	bcc	.L72
.L71:
	cbz	r4, .L63
	sub	ip, ip, #4
	ldr	r3, [r0, ip]
	orr	r3, r3, #-2147483648
	str	r3, [r0, ip]
.L63:
	pop	{r4, r5, r6, pc}
.L81:
	cmp	r2, #0
	ble	.L65
	sub	lr, ip, #4
	subs	r5, r0, #4
	subs	r1, r1, #4
	add	lr, lr, r0
	movs	r4, #0
.L66:
	ldr	r6, [r5, #4]!
	ldr	r2, [r1, #4]!
	add	r2, r2, r6
	add	r2, r2, r4
	str	r2, [r5]
	cmp	r6, r2
	it	ne
	movne	r4, #0
	it	hi
	orrhi	r4, r4, #1
	cmp	lr, r5
	bne	.L66
	cmp	r0, r3
	bcc	.L68
	b	.L71
.L65:
	cmp	r0, r3
	it	cc
	movcc	r4, #0
	bcc	.L68
	pop	{r4, r5, r6, pc}
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.p2align 2,,3
	.global	uECC_set_rng
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_set_rng, %function
uECC_set_rng:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L83
.LPIC5:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L84:
	.align	2
.L83:
	.word	.LANCHOR1-(.LPIC5+4)
	.size	uECC_set_rng, .-uECC_set_rng
	.align	1
	.p2align 2,,3
	.global	uECC_get_rng
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_get_rng, %function
uECC_get_rng:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L86
.LPIC6:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L87:
	.align	2
.L86:
	.word	.LANCHOR1-(.LPIC6+4)
	.size	uECC_get_rng, .-uECC_get_rng
	.align	1
	.p2align 2,,3
	.global	uECC_curve_private_key_size
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_curve_private_key_size, %function
uECC_curve_private_key_size:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r3, [r0, #2]
	add	r0, r3, #14
	adds	r3, r3, #7
	it	pl
	movpl	r0, r3
	asrs	r0, r0, #3
	bx	lr
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	1
	.p2align 2,,3
	.global	uECC_curve_public_key_size
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_curve_public_key_size, %function
uECC_curve_public_key_size:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsb	r0, [r0, #1]
	lsls	r0, r0, #1
	bx	lr
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	1
	.p2align 2,,3
	.global	uECC_vli_clear
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_clear, %function
uECC_vli_clear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ble	.L90
	uxtb	r2, r1
	movs	r1, #0
	lsls	r2, r2, #2
	b	memset(PLT)
.L90:
	bx	lr
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	1
	.p2align 2,,3
	.global	uECC_vli_isZero
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_isZero, %function
uECC_vli_isZero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ble	.L95
	subs	r3, r0, #4
	movs	r0, #0
	add	r1, r3, r1, lsl #2
.L94:
	ldr	r2, [r3, #4]!
	orrs	r0, r0, r2
	cmp	r1, r3
	bne	.L94
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
.L95:
	movs	r0, #1
	bx	lr
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	1
	.p2align 2,,3
	.global	uECC_vli_testBit
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r2, r1, #31
	asrs	r1, r1, #5
	movs	r3, #1
	ldr	r0, [r0, r1, lsl #2]
	lsls	r3, r3, r2
	ands	r0, r0, r3
	bx	lr
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	1
	.p2align 2,,3
	.global	uECC_vli_numBits
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #1
	lsls	r2, r3, #24
	bmi	.L108
	uxtb	r2, r3
	push	{r4}
	add	r1, r0, r2, lsl #2
	b	.L100
.L101:
	lsls	r4, r3, #24
	bmi	.L116
	mov	r2, r3
.L100:
	ldr	r4, [r1], #-4
	subs	r3, r2, #1
	cmp	r4, #0
	beq	.L101
	adds	r2, r2, #1
.L116:
	sxtb	r1, r2
	cbz	r1, .L105
	add	r3, r1, #1073741824
	subs	r3, r3, #1
	ldr	r3, [r0, r3, lsl #2]
	cbz	r3, .L103
	clz	r3, r3
	rsb	r3, r3, #32
	uxth	r3, r3
.L103:
	subs	r1, r1, #1
	ldr	r4, [sp], #4
	add	r3, r3, r1, lsl #5
	sxth	r0, r3
	bx	lr
.L105:
	mov	r0, r1
	ldr	r4, [sp], #4
	bx	lr
.L108:
	cbz	r1, .L109
	add	r3, r1, #1073741824
	subs	r3, r3, #1
	ldr	r3, [r0, r3, lsl #2]
	cbz	r3, .L112
	clz	r3, r3
	rsb	r3, r3, #32
	uxth	r3, r3
.L112:
	subs	r1, r1, #1
	add	r3, r3, r1, lsl #5
	sxth	r0, r3
	bx	lr
.L109:
	mov	r0, r1
	bx	lr
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	1
	.p2align 2,,3
	.global	uECC_vli_set
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_set, %function
uECC_vli_set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	ble	.L117
	subs	r1, r1, #4
	subs	r0, r0, #4
	add	r2, r1, r2, lsl #2
.L119:
	ldr	r3, [r1, #4]!
	str	r3, [r0, #4]!
	cmp	r1, r2
	bne	.L119
.L117:
	bx	lr
	.size	uECC_vli_set, .-uECC_vli_set
	.align	1
	.p2align 2,,3
	.global	uECC_vli_cmp_unsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_cmp_unsafe, %function
uECC_vli_cmp_unsafe:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r2, #1
	lsls	r3, r2, #24
	bmi	.L124
	uxtb	r3, r2
	push	{r4}
	lsls	r2, r3, #2
	add	r0, r0, r2
	add	r1, r1, r2
	b	.L123
.L133:
	bcc	.L126
	lsls	r2, r3, #24
	bmi	.L132
.L123:
	ldr	r4, [r0], #-4
	subs	r3, r3, #1
	ldr	r2, [r1], #-4
	cmp	r4, r2
	bls	.L133
	movs	r0, #1
	ldr	r4, [sp], #4
	bx	lr
.L126:
	mov	r0, #-1
	ldr	r4, [sp], #4
	bx	lr
.L132:
	movs	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L124:
	movs	r0, #0
	bx	lr
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	1
	.p2align 2,,3
	.global	uECC_vli_equal
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_equal, %function
uECC_vli_equal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r2, #1
	lsls	r2, r3, #24
	bmi	.L137
	uxtb	r2, r3
	push	{lr}
	mov	lr, #0
	lsls	r3, r2, #2
	add	ip, r0, r3
	add	r1, r1, r3
.L136:
	ldr	r3, [ip], #-4
	subs	r2, r2, #1
	ldr	r0, [r1], #-4
	eors	r3, r3, r0
	orr	lr, lr, r3
	lsls	r3, r2, #24
	bpl	.L136
	subs	r0, lr, #0
	it	ne
	movne	r0, #1
	ldr	pc, [sp], #4
.L137:
	movs	r0, #0
	bx	lr
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
	.p2align 2,,3
	.global	cond_set
	.syntax unified
	.thumb
	.thumb_func
	.type	cond_set, %function
cond_set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	it	ne
	movne	r1, #0
	mul	r0, r2, r0
	orrs	r0, r0, r1
	bx	lr
	.size	cond_set, .-cond_set
	.align	1
	.p2align 2,,3
	.global	uECC_vli_sub
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_sub, %function
uECC_vli_sub:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	ble	.L147
	subs	r1, r1, #4
	push	{r4, lr}
	sub	ip, r0, #4
	sub	lr, r2, #4
	add	r4, r1, r3, lsl #2
	movs	r0, #0
.L146:
	ldr	r2, [r1, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r2, r3
	subs	r3, r3, r0
	str	r3, [ip, #4]!
	cmp	r2, r3
	it	ne
	movne	r0, #0
	it	cc
	orrcc	r0, r0, #1
	cmp	r4, r1
	bne	.L146
	pop	{r4, pc}
.L147:
	movs	r0, #0
	bx	lr
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.p2align 2,,3
	.global	uECC_vli_cmp
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	cmp	r2, #0
	ldr	r4, .L163
	ldr	r3, .L163+4
	sub	sp, sp, #44
.LPIC8:
	add	r4, pc
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	ble	.L158
	lsls	r7, r2, #2
	mov	r6, sp
	subs	r3, r7, #4
	sub	lr, r1, #4
	sub	ip, r0, #4
	adds	r5, r0, r3
	mov	r1, r6
	mov	r4, r6
	movs	r2, #0
.L155:
	ldr	r0, [ip, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [r4, #4]!
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r5, ip
	bne	.L155
	subs	r0, r2, #0
	add	r6, r6, r7
	it	ne
	movne	r0, #1
	movs	r3, #0
.L156:
	ldr	r2, [r1, #4]!
	orrs	r3, r3, r2
	cmp	r6, r1
	bne	.L156
	lsls	r0, r0, #1
	cmp	r3, #0
	ite	eq
	rsbeq	r0, r0, #0
	rsbne	r0, r0, #1
.L154:
	ldr	r2, .L163+8
	ldr	r3, .L163+4
.LPIC7:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L162
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L158:
	movs	r0, #0
	b	.L154
.L162:
	bl	__stack_chk_fail(PLT)
.L164:
	.align	2
.L163:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	1
	.p2align 2,,3
	.global	uECC_vli_modAdd
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldrsb	r5, [sp, #24]
	cmp	r5, #0
	ble	.L166
	add	r8, r1, r5, lsl #2
	sub	lr, r0, #4
	sub	ip, r1, #4
	subs	r6, r2, #4
	sub	r8, r8, #4
	mov	r7, lr
	movs	r1, #0
.L167:
	ldr	r4, [ip, #4]!
	ldr	r2, [r6, #4]!
	add	r2, r2, r4
	add	r2, r2, r1
	str	r2, [r7, #4]!
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	hi
	orrhi	r1, r1, #1
	cmp	ip, r8
	bne	.L167
	cbnz	r1, .L168
	subs	r2, r5, #1
	sxtb	r2, r2
.L174:
	lsls	r1, r2, #2
	adds	r4, r3, r1
	add	r1, r1, r0
	b	.L172
.L181:
	bcc	.L171
	lsls	r6, r2, #24
	bmi	.L171
.L172:
	ldr	r7, [r4], #-4
	subs	r2, r2, #1
	ldr	r6, [r1], #-4
	cmp	r7, r6
	bls	.L181
.L165:
	pop	{r4, r5, r6, r7, r8, pc}
.L171:
	cmp	r5, #0
	it	gt
	subgt	lr, r0, #4
	ble	.L165
.L168:
	add	r0, r0, r5, lsl #2
	mov	ip, lr
	subs	r3, r3, #4
	subs	r0, r0, #4
	movs	r1, #0
.L173:
	ldr	r4, [ip, #4]!
	ldr	r2, [r3, #4]!
	subs	r2, r4, r2
	subs	r2, r2, r1
	str	r2, [ip]
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	cc
	orrcc	r1, r1, #1
	cmp	r0, ip
	bne	.L173
	pop	{r4, r5, r6, r7, r8, pc}
.L166:
	subs	r2, r5, #1
	lsls	r7, r2, #24
	bmi	.L165
	movs	r2, #127
	b	.L174
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.p2align 2,,3
	.global	x_side_default
	.syntax unified
	.thumb
	.thumb_func
	.type	x_side_default, %function
x_side_default:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r2
	ldr	r2, .L195
	ldr	r3, .L195+4
	sub	sp, sp, #112
.LPIC10:
	add	r2, pc
	ldrsb	r8, [r5]
	add	r7, sp, #44
	mov	r6, r0
	mov	r0, r7
	movs	r4, #0
	ldr	r3, [r2, r3]
	mov	r2, r1
	mov	ip, #3
	mov	r10, r1
	ldr	r3, [r3]
	str	r3, [sp, #108]
	mov	r3, #0
	mov	r3, r8
	str	ip, [sp, #12]
	add	r9, r5, #4
	strd	r4, r4, [sp, #16]
	strd	r4, r4, [sp, #24]
	strd	r4, r4, [sp, #32]
	str	r4, [sp, #40]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r7
	mov	r0, r6
	blx	r3
	cmp	r8, r4
	ble	.L183
	sub	ip, r6, #4
	add	r0, sp, #8
	add	lr, ip, r8, lsl #2
	mov	r2, ip
.L184:
	ldr	r1, [r2, #4]!
	ldr	r3, [r0, #4]!
	subs	r3, r1, r3
	subs	r3, r3, r4
	str	r3, [r2]
	cmp	r1, r3
	it	ne
	movne	r4, #0
	it	cc
	orrcc	r4, r4, #1
	cmp	lr, r2
	bne	.L184
	cbnz	r4, .L193
.L183:
	mov	r2, r10
	ldrsb	r3, [r5]
	mov	r1, r6
	mov	r0, r7
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r7
	mov	r0, r6
	blx	r3
	mov	r3, r9
	add	r2, r5, #132
	mov	r1, r6
	mov	r0, r6
	str	r8, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r2, .L195+8
	ldr	r3, .L195+4
.LPIC9:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #108]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L194
	add	sp, sp, #112
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L193:
	mov	r1, r5
	movs	r2, #0
.L185:
	ldr	r0, [ip, #4]!
	ldr	r3, [r1, #4]!
	add	r3, r3, r0
	add	r3, r3, r2
	str	r3, [ip]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	lr, ip
	bne	.L185
	b	.L183
.L194:
	bl	__stack_chk_fail(PLT)
.L196:
	.align	2
.L195:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.size	x_side_default, .-x_side_default
	.align	1
	.p2align 2,,3
	.global	uECC_vli_modSub
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldrsb	r4, [sp, #24]
	cmp	r4, #0
	ble	.L197
	mov	r8, #4
	subs	r7, r0, #4
	rsb	r8, r8, r4, lsl #2
	sub	ip, r1, #4
	add	r6, r1, r8
	sub	lr, r2, #4
	mov	r5, r7
	movs	r1, #0
.L199:
	ldr	r4, [ip, #4]!
	ldr	r2, [lr, #4]!
	subs	r2, r4, r2
	subs	r2, r2, r1
	str	r2, [r5, #4]!
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	cc
	orrcc	r1, r1, #1
	cmp	r6, ip
	bne	.L199
	cbnz	r1, .L207
.L197:
	pop	{r4, r5, r6, r7, r8, pc}
.L207:
	subs	r3, r3, #4
	add	r0, r0, r8
	movs	r1, #0
.L200:
	ldr	r4, [r7, #4]!
	ldr	r2, [r3, #4]!
	add	r2, r2, r4
	add	r2, r2, r1
	str	r2, [r7]
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	hi
	orrhi	r1, r1, #1
	cmp	r0, r7
	bne	.L200
	pop	{r4, r5, r6, r7, r8, pc}
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.p2align 2,,3
	.global	double_jacobian_default
	.syntax unified
	.thumb
	.thumb_func
	.type	double_jacobian_default, %function
double_jacobian_default:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r3
	ldr	r4, .L235
	ldr	r3, .L235+4
	sub	sp, sp, #172
.LPIC12:
	add	r4, pc
	ldrsb	r9, [r7]
	cmp	r9, #0
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
	str	r1, [sp, #8]
	ble	.L208
	sub	r8, r2, #4
	lsl	r3, r9, #2
	mov	r5, r2
	add	r6, r8, r3
	str	r3, [sp, #12]
	mov	r4, r0
	mov	r3, r8
	movs	r2, #0
.L210:
	ldr	r1, [r3, #4]!
	orrs	r2, r2, r1
	cmp	r3, r6
	bne	.L210
	cmp	r2, #0
	beq	.L208
	ldr	r2, [sp, #8]
	add	r10, sp, #100
	mov	r3, r9
	mov	r0, r10
	mov	r1, r2
	bl	uECC_vli_mult(PLT)
	add	r3, sp, #36
	mov	r2, r3
	mov	r1, r10
	mov	fp, r2
	mov	r0, r2
	str	r3, [sp, #20]
	ldr	r3, [r7, #172]
	blx	r3
	mov	r2, fp
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r10
	bl	uECC_vli_mult(PLT)
	add	r0, sp, #68
	ldr	r3, [r7, #172]
	mov	r1, r10
	str	r0, [sp, #16]
	blx	r3
	mov	r2, fp
	mov	r1, fp
	ldrsb	r3, [r7]
	mov	r0, r10
	bl	uECC_vli_mult(PLT)
	mov	r0, fp
	ldr	r3, [r7, #172]
	mov	r1, r10
	blx	r3
	ldr	fp, [sp, #8]
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, fp
	mov	r0, r10
	bl	uECC_vli_mult(PLT)
	mov	r0, fp
	ldr	r3, [r7, #172]
	mov	r1, r10
	blx	r3
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, r5
	mov	r0, r10
	add	fp, r7, #4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r10
	mov	r0, r5
	blx	r3
	mov	r2, r5
	mov	r3, fp
	mov	r1, r4
	mov	r0, r4
	str	r9, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r1, r5
	mov	r0, r5
	str	r9, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r1, r4
	mov	r0, r5
	str	r9, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r10
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r10
	mov	r0, r4
	blx	r3
	mov	r3, fp
	mov	r2, r4
	mov	r1, r4
	mov	r0, r5
	str	r9, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r0, r4
	mov	r1, r4
	str	r9, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r4]
	ldr	r2, [sp, #12]
	ands	r3, r3, #1
	add	r0, r4, r2
	beq	.L233
	subs	r3, r4, #4
	str	fp, [sp, #28]
	add	lr, r3, r2
	mov	ip, r7
	mov	r1, r3
	movs	r2, #0
	mov	fp, r0
	str	r3, [sp, #24]
.L213:
	ldr	r0, [r1, #4]!
	ldr	r3, [ip, #4]!
	add	r3, r3, r0
	add	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	lr, r1
	bne	.L213
	mov	r0, fp
	ldr	fp, [sp, #28]
	cmp	r4, r0
	itt	cc
	movcc	r1, r0
	movcc	r3, #0
	bcs	.L217
.L216:
	ldr	r0, [r1, #-4]!
	cmp	r4, r1
	orr	r3, r3, r0, lsr #1
	str	r3, [r1]
	lsl	r3, r0, #31
	bcc	.L216
.L217:
	ldr	r3, [sp, #12]
	subs	r1, r3, #4
	ldr	r3, [r4, r1]
	orr	r3, r3, r2, lsl #31
	str	r3, [r4, r1]
	b	.L215
.L219:
	ldr	r2, [r0, #-4]!
	orr	r3, r3, r2, lsr #1
	str	r3, [r0]
	lsls	r3, r2, #31
.L233:
	cmp	r4, r0
	bcc	.L219
	subs	r3, r4, #4
	str	r3, [sp, #24]
.L215:
	mov	r2, r4
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r10
	bl	uECC_vli_mult(PLT)
	mov	r0, r5
	ldr	r3, [r7, #172]
	mov	r1, r10
	blx	r3
	mov	r1, r5
	mov	r0, r5
	ldr	r2, [sp, #16]
	mov	r3, fp
	str	r9, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r1, r5
	mov	r0, r5
	ldr	r2, [sp, #16]
	mov	r3, fp
	str	r9, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	ldr	r5, [sp, #16]
	mov	r3, fp
	str	r9, [sp]
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r10
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r10
	mov	r0, r4
	blx	r3
	ldr	r2, [sp, #20]
	mov	r3, fp
	mov	r1, r4
	mov	r0, r2
	str	r9, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r2, [sp, #24]
	mov	r3, r8
.L221:
	ldr	r1, [r3, #4]!
	str	r1, [r2, #4]!
	cmp	r6, r3
	bne	.L221
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #12]
	subs	r3, r3, #4
	add	r1, r1, r3
.L222:
	ldr	r2, [r3, #4]!
	str	r2, [r8, #4]!
	cmp	r3, r1
	bne	.L222
	uxtb	r2, r9
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #8]
	lsls	r2, r2, #2
	bl	memcpy(PLT)
.L208:
	ldr	r2, .L235+8
	ldr	r3, .L235+4
.LPIC11:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #164]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L234
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L234:
	bl	__stack_chk_fail(PLT)
.L236:
	.align	2
.L235:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.size	double_jacobian_default, .-double_jacobian_default
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_addC, %function
XYcZ_addC:
	@ args = 4, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r2
	ldr	r2, .L242
	sub	sp, sp, #188
	mov	fp, r3
	ldr	r3, .L242+4
.LPIC14:
	add	r2, pc
	add	r8, sp, #20
	add	r4, sp, #116
	ldr	r5, [sp, #224]
	mov	r9, r0
	str	r1, [sp, #8]
	mov	r1, r10
	mov	r7, r5
	ldr	r3, [r2, r3]
	mov	r2, r0
	mov	r0, r8
	ldrsb	r6, [r7], #4
	ldr	r3, [r3]
	str	r3, [sp, #180]
	mov	r3, #0
	str	r6, [sp]
	mov	r3, r7
	bl	uECC_vli_modSub(PLT)
	mov	r2, r8
	ldrsb	r3, [r5]
	mov	r1, r8
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r8
	blx	r3
	mov	r2, r8
	mov	r1, r9
	ldrsb	r3, [r5]
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	mov	r0, r9
	ldr	r3, [r5, #172]
	mov	r1, r4
	blx	r3
	mov	r2, r8
	mov	r1, r10
	ldrsb	r3, [r5]
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	mov	r0, r10
	ldr	r3, [r5, #172]
	mov	r1, r4
	blx	r3
	mov	r1, fp
	ldr	r2, [sp, #8]
	mov	r3, r7
	mov	r0, r8
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r1, fp
	mov	r0, fp
	ldr	r2, [sp, #8]
	mov	r3, r7
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r9
	str	r9, [sp, #12]
	add	r9, sp, #52
	mov	r1, r10
	mov	r3, r7
	mov	r0, r9
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r9
	ldrsb	r3, [r5]
	mov	r0, r4
	ldr	r1, [sp, #8]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	ldr	r0, [sp, #8]
	mov	r1, r4
	blx	r3
	mov	r2, r10
	ldr	r1, [sp, #12]
	mov	r3, r7
	mov	r0, r9
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r2, fp
	mov	r1, fp
	ldrsb	r3, [r5]
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	mov	r0, r10
	ldr	r3, [r5, #172]
	mov	r1, r4
	blx	r3
	mov	r1, r10
	mov	r0, r10
	mov	r3, r7
	mov	r2, r9
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r10
	add	r10, sp, #84
	ldr	r1, [sp, #12]
	mov	r3, r7
	mov	r0, r10
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r10
	mov	r1, fp
	ldrsb	r3, [r5]
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	mov	r0, fp
	ldr	r3, [r5, #172]
	mov	r1, r4
	blx	r3
	mov	r1, fp
	mov	r0, fp
	ldr	r2, [sp, #8]
	mov	r3, r7
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r8
	ldrsb	r3, [r5]
	mov	r1, r8
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r10
	blx	r3
	mov	r3, r7
	mov	r2, r9
	mov	r1, r10
	mov	r0, r10
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	fp, [sp, #12]
	mov	r3, r7
	mov	r1, r10
	mov	r2, fp
	mov	r0, r9
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r8
	ldrsb	r3, [r5]
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r9
	blx	r3
	ldr	r2, [sp, #8]
	mov	r3, r7
	mov	r1, r9
	mov	r0, r2
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	cmp	r6, #0
	ble	.L237
	uxtb	r2, r6
	mov	r1, r10
	mov	r0, fp
	lsls	r2, r2, #2
	bl	memcpy(PLT)
.L237:
	ldr	r2, .L242+8
	ldr	r3, .L242+4
.LPIC13:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #180]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L241
	add	sp, sp, #188
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L241:
	bl	__stack_chk_fail(PLT)
.L243:
	.align	2
.L242:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.p2align 2,,3
	.global	uECC_vli_mmod
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r2, .L285
	sub	sp, sp, #172
	mov	fp, r3
	add	r3, sp, #100
.LPIC16:
	add	r2, pc
	mov	r4, r1
	mov	r9, r0
	str	r3, [sp, #28]
	mov	r1, fp
	ldr	r3, .L285+4
	mov	r0, r7
	str	r4, [sp, #32]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
	bl	uECC_vli_numBits(PLT)
	rsb	r5, r0, fp, lsl #6
	sxth	r5, r5
	add	r3, r5, #31
	and	r6, r5, #31
	ands	r3, r3, r5, asr #32
	it	cc
	movcc	r3, r5
	rsbs	r2, r5, #0
	and	r2, r2, #31
	sbfx	r8, r3, #5, #8
	it	pl
	rsbpl	r6, r2, #0
	cmp	r8, #0
	ble	.L248
	asrs	r3, r3, #5
	movs	r1, #0
	subs	r3, r3, #1
	add	r0, sp, #36
	uxtb	r2, r3
	adds	r2, r2, #1
	lsls	r2, r2, #2
	bl	memset(PLT)
.L248:
	cmp	r6, #0
	ble	.L283
	cmp	fp, #0
	beq	.L270
	add	r0, r8, #1073741824
	add	r3, sp, #36
	subs	r0, r0, #1
	subs	r2, r7, #4
	rsb	ip, r6, #32
	add	r7, r2, fp, lsl #2
	add	r0, r3, r0, lsl #2
	movs	r4, #0
	str	r3, [sp, #8]
.L250:
	ldr	r1, [r2, #4]!
	cmp	r7, r2
	lsl	r3, r1, r6
	orr	r3, r3, r4
	lsr	r4, r1, ip
	str	r3, [r0, #4]!
	bne	.L250
.L249:
	ldr	r3, [sp, #8]
	lsl	r8, fp, #2
	add	r7, fp, #-1
	lsl	r4, fp, #1
	add	r1, r3, r8
	add	r3, sp, #168
	sub	lr, r1, r8
	add	ip, r1, r8
	add	r7, r3, r7, lsl #2
	subs	r3, r1, #4
	str	r3, [sp, #16]
	add	r3, r8, #168
	sub	lr, lr, #4
	add	r8, sp, r3
	movs	r6, #1
	mov	r0, ip
	str	r9, [sp, #20]
	str	fp, [sp, #12]
.L254:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	it	le
	movle	ip, #0
	ble	.L267
	eor	r3, r6, #1
	add	r2, sp, #168
	mov	r9, r1
	str	lr, [sp, #4]
	add	r3, r2, r3, lsl #2
	ldr	fp, [r3, #-140]
	add	r3, r2, r6, lsl #2
	ldr	r10, [r3, #-140]
	movs	r3, #0
	mov	ip, r3
	mov	r2, r3
.L258:
	add	r1, sp, #168
	lsl	lr, r3, #2
	add	r2, r1, r2, lsl #2
	ldr	r1, [r10, r3, lsl #2]
	adds	r3, r3, #1
	ldr	r2, [r2, #-132]
	sxtb	r3, r3
	add	r2, r2, ip
	subs	r2, r1, r2
	str	r2, [fp, lr]
	ite	cc
	movcc	lr, #1
	movcs	lr, #0
	cmp	r1, r2
	mov	r2, r3
	it	ne
	movne	ip, lr
	cmp	r3, r4
	blt	.L258
	ldr	lr, [sp, #4]
	mov	r1, r9
.L267:
	ldr	r3, [sp, #8]
	sub	r6, r6, ip
	clz	r6, r6
	cmp	r1, r3
	lsr	r6, r6, #5
	ittt	hi
	movhi	r3, #0
	movhi	ip, r1
	ldrhi	r2, [sp, #16]
	bls	.L262
.L259:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	lr, r2
	bne	.L259
	mov	r1, ip
.L262:
	ldr	r2, [r8, #-132]
	cmp	r0, r1
	ldr	r3, [r7, #-132]
	it	hi
	movhi	ip, r1
	orr	r3, r3, r2, lsl #31
	it	hi
	movhi	r2, r0
	str	r3, [r7, #-132]
	it	hi
	movhi	r3, #0
	bls	.L261
.L264:
	ldr	r1, [r2, #-4]!
	cmp	r2, ip
	orr	r3, r3, r1, lsr #1
	str	r3, [r2]
	lsl	r3, r1, #31
	bhi	.L264
	mov	r1, ip
.L261:
	subs	r5, r5, #1
	sxth	r5, r5
	adds	r3, r5, #1
	bne	.L254
	add	r3, sp, #168
	ldr	fp, [sp, #12]
	add	r6, r3, r6, lsl #2
	ldr	r9, [sp, #20]
	cmp	fp, #0
	ldr	r4, [r6, #-140]
	ble	.L244
.L253:
	add	r3, r4, fp, lsl #2
	subs	r1, r4, #4
	sub	r9, r9, #4
	subs	r3, r3, #4
.L268:
	ldr	r2, [r1, #4]!
	str	r2, [r9, #4]!
	cmp	r3, r1
	bne	.L268
.L244:
	ldr	r2, .L285+8
	ldr	r3, .L285+4
.LPIC15:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #164]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L284
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L283:
	lsl	r0, r8, #2
	cmp	fp, #0
	ble	.L252
	uxtb	r2, fp
	add	r3, sp, #36
	mov	r1, r7
	add	r0, r0, r3
	lsls	r2, r2, #2
	str	r3, [sp, #8]
	bl	memcpy(PLT)
	cmp	r5, #0
	bge	.L249
	b	.L253
.L252:
	cmp	r5, #0
	blt	.L244
.L270:
	add	r3, sp, #36
	str	r3, [sp, #8]
	b	.L249
.L284:
	bl	__stack_chk_fail(PLT)
.L286:
	.align	2
.L285:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	1
	.p2align 2,,3
	.global	uECC_vli_modMult
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r0, .L291
	mov	r6, r3
	ldr	r3, .L291+4
	sub	sp, sp, #76
.LPIC17:
	add	r0, pc
	add	r4, sp, #4
	ldr	r3, [r0, r3]
	mov	r0, r4
	ldrsb	r7, [sp, #96]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	mov	r3, r7
	bl	uECC_vli_mult(PLT)
	mov	r3, r7
	mov	r2, r6
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_mmod(PLT)
	ldr	r2, .L291+8
	ldr	r3, .L291+4
.LPIC18:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L290
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L290:
	bl	__stack_chk_fail(PLT)
.L292:
	.align	2
.L291:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	1
	.p2align 2,,3
	.global	uECC_vli_modMult_fast
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, .L297
	mov	r5, r3
	ldr	r3, .L297+4
.LPIC19:
	add	r0, pc
	sub	sp, sp, #72
	add	r4, sp, #4
	ldr	r3, [r0, r3]
	mov	r0, r4
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldrsb	r3, [r5]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r6
	blx	r3
	ldr	r2, .L297+8
	ldr	r3, .L297+4
.LPIC20:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L296
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, pc}
.L296:
	bl	__stack_chk_fail(PLT)
.L298:
	.align	2
.L297:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+4)
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.p2align 2,,3
	.global	uECC_vli_modInv
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r6, r3, #0
	ldr	r5, .L370
	ldr	r4, .L370+4
	sub	sp, sp, #220
.LPIC23:
	add	r5, pc
	ldr	r4, [r5, r4]
	ldr	r4, [r4]
	str	r4, [sp, #212]
	mov	r4, #0
	str	r0, [sp, #44]
	str	r2, [sp]
	ble	.L299
	lsls	r2, r6, #2
	subs	r3, r1, #4
	adds	r4, r1, r2
	movs	r0, #0
	subs	r4, r4, #4
	str	r2, [sp, #76]
.L302:
	ldr	r2, [r3, #4]!
	orrs	r0, r0, r2
	cmp	r4, r3
	bne	.L302
	cmp	r0, #0
	beq	.L363
	uxtb	r3, r6
	add	r5, sp, #116
	add	r7, sp, #148
	uxtb	r4, r6
	lsls	r2, r3, #2
	add	r3, sp, #84
	mov	r8, r2
	mov	r0, r3
	mov	r10, r3
	str	r3, [sp, #24]
	str	r2, [sp, #72]
	bl	memcpy(PLT)
	mov	r2, r8
	ldr	r1, [sp]
	mov	r0, r5
	mov	fp, r7
	bl	memcpy(PLT)
	mov	r2, r8
	movs	r1, #0
	mov	r0, r7
	str	r7, [sp, #12]
	bl	memset(PLT)
	add	r3, sp, #180
	mov	r2, r8
	movs	r1, #0
	mov	r0, r3
	mov	r9, r3
	str	r3, [sp, #60]
	movs	r3, #1
	str	r3, [sp, #148]
	bl	memset(PLT)
	ldr	r3, [sp, #76]
	mov	r2, r10
	str	r5, [sp, #40]
	adds	r1, r5, r3
	adds	r5, r2, r3
	add	r0, sp, #112
	add	lr, sp, #144
	str	r0, [sp, #32]
	add	r0, sp, #176
	str	lr, [sp, #16]
	sub	lr, r1, #4
	str	r0, [sp, #28]
	mov	r0, r5
	str	r5, [sp, #20]
	subs	r7, r4, #1
	str	lr, [sp, #68]
	sub	lr, r5, #4
	mov	r5, r10
	ldr	r2, [sp, #28]
	add	r5, r5, r8
	str	r5, [sp, #8]
	ldr	r5, [sp, #40]
	rsb	r4, r3, #4
	subs	r4, r4, #8
	str	r1, [sp, #64]
	add	r5, r5, r8
	str	r5, [sp, #4]
	ldr	r5, [sp, #32]
	add	ip, sp, #80
	uxtb	r7, r7
	str	ip, [sp, #56]
	add	r10, r5, r3
	adds	r5, r1, r4
	mov	r1, r9
	add	r9, r2, r3
	ldr	r2, [sp, #16]
	add	r1, r1, r8
	str	r1, [sp, #52]
	mov	r1, fp
	add	r1, r1, r8
	add	r4, r4, r0
	add	fp, ip, r3
	add	r8, r2, r3
	str	lr, [sp, #36]
	str	r1, [sp, #48]
.L305:
	ldrd	r1, r2, [sp, #4]
	mov	r3, r7
	mov	ip, r4
	b	.L332
.L365:
	bcc	.L342
	subs	r3, r3, #1
	lsls	r0, r3, #24
	bmi	.L364
.L332:
	ldr	r4, [r2, #-4]!
	ldr	r0, [r1, #-4]!
	cmp	r4, r0
	bls	.L365
	ldr	r3, [sp, #84]
	mov	r4, ip
	movs	r2, #1
	ands	r3, r3, #1
	beq	.L366
.L358:
	ldr	r3, [sp, #116]
	ands	r3, r3, #1
	beq	.L367
	cmp	r2, #1
	bne	.L314
	ldr	r1, [sp, #56]
	movs	r2, #0
	ldr	ip, [sp, #32]
.L315:
	ldr	r0, [r1, #4]!
	ldr	r3, [ip, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	fp, r1
	bne	.L315
	ldrd	r3, r2, [sp, #20]
	cmp	r3, r2
	itt	hi
	movhi	r3, #0
	ldrhi	r2, [sp, #36]
	bls	.L318
.L316:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r4
	bne	.L316
.L318:
	ldrd	r2, r1, [sp, #48]
	mov	r3, r7
	mov	ip, r4
	b	.L317
.L368:
	bcc	.L320
	subs	r3, r3, #1
	lsls	r0, r3, #24
	bmi	.L359
.L317:
	ldr	r4, [r2, #-4]!
	ldr	r0, [r1, #-4]!
	cmp	r4, r0
	bls	.L368
.L359:
	mov	r4, ip
	ldr	r1, [sp, #16]
	ldr	ip, [sp, #28]
	movs	r2, #0
.L321:
	ldr	r0, [r1, #4]!
	ldr	r3, [ip, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r8, r1
	bne	.L321
.L307:
	ldr	r1, [sp]
	mov	r2, r6
	ldr	r0, [sp, #12]
	bl	vli_modInv_update(PLT)
	b	.L305
.L342:
	ldr	r3, [sp, #84]
	mov	r4, ip
	mov	r2, #-1
	ands	r3, r3, #1
	bne	.L358
.L366:
	ldrd	r2, r1, [sp, #20]
	cmp	r2, r1
	bls	.L307
	ldr	r2, [sp, #36]
.L306:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r4
	bne	.L306
	ldr	r1, [sp]
	mov	r2, r6
	ldr	r0, [sp, #12]
	bl	vli_modInv_update(PLT)
	b	.L305
.L364:
	ldr	r2, [sp, #72]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #44]
	bl	memcpy(PLT)
.L299:
	ldr	r2, .L370+8
	ldr	r3, .L370+4
.LPIC21:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #212]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L362
	add	sp, sp, #220
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L367:
	ldr	r2, [sp, #64]
	ldr	r1, [sp, #40]
	cmp	r2, r1
	bls	.L312
	ldr	r2, [sp, #68]
.L311:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r5
	bne	.L311
.L312:
	ldr	r1, [sp]
	mov	r2, r6
	ldr	r0, [sp, #60]
	bl	vli_modInv_update(PLT)
	b	.L305
.L314:
	ldr	r1, [sp, #32]
	movs	r2, #0
	ldr	ip, [sp, #56]
.L323:
	ldr	r0, [r1, #4]!
	ldr	r3, [ip, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r10, r1
	bne	.L323
	ldr	r3, [sp, #64]
	ldr	r2, [sp, #40]
	cmp	r3, r2
	itt	hi
	movhi	r3, #0
	ldrhi	r2, [sp, #68]
	bls	.L326
.L324:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r5
	bne	.L324
.L326:
	ldrd	r1, r2, [sp, #48]
	mov	r3, r7
	mov	ip, r4
	b	.L325
.L369:
	bcc	.L328
	subs	r3, r3, #1
	lsls	r4, r3, #24
	bmi	.L360
.L325:
	ldr	r4, [r2, #-4]!
	ldr	r0, [r1, #-4]!
	cmp	r4, r0
	bls	.L369
.L360:
	mov	r4, ip
.L327:
	ldr	r1, [sp, #28]
	movs	r2, #0
	ldr	ip, [sp, #16]
.L329:
	ldr	r0, [r1, #4]!
	ldr	r3, [ip, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [r1]
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r9, r1
	bne	.L329
	ldr	r1, [sp]
	mov	r2, r6
	ldr	r0, [sp, #60]
	bl	vli_modInv_update(PLT)
	b	.L305
.L320:
	ldr	r3, [sp]
	movs	r2, #0
	ldr	r0, [sp, #16]
	subs	r1, r3, #4
	ldr	r3, [sp, #76]
	add	lr, r1, r3
.L322:
	ldr	r4, [r0, #4]!
	ldr	r3, [r1, #4]!
	add	r3, r3, r4
	add	r3, r3, r2
	str	r3, [r0]
	cmp	r4, r3
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	lr, r1
	bne	.L322
	b	.L359
.L363:
	ldr	r1, .L370+12
	uxtb	r2, r6
	ldr	r3, .L370+4
.LPIC22:
	add	r1, pc
	lsls	r2, r2, #2
	ldr	r3, [r1, r3]
	ldr	r1, [r3]
	ldr	r3, [sp, #212]
	eors	r1, r3, r1
	mov	r3, #0
	bne	.L362
	mov	r1, r0
	ldr	r0, [sp, #44]
	add	sp, sp, #220
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	memset(PLT)
.L328:
	ldr	r3, [sp]
	mov	r4, ip
	ldr	r0, [sp, #28]
	movs	r2, #0
	subs	r1, r3, #4
	ldr	r3, [sp, #76]
	mov	lr, r4
	add	ip, r1, r3
.L330:
	ldr	r4, [r0, #4]!
	ldr	r3, [r1, #4]!
	add	r3, r3, r4
	add	r3, r3, r2
	str	r3, [r0]
	cmp	r4, r3
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	ip, r1
	bne	.L330
	mov	r4, lr
	b	.L327
.L362:
	bl	__stack_chk_fail(PLT)
.L371:
	.align	2
.L370:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	1
	.p2align 2,,3
	.global	uECC_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_secp256r1, %function
uECC_secp256r1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L373
.LPIC24:
	add	r0, pc
	bx	lr
.L374:
	.align	2
.L373:
	.word	.LANCHOR0-(.LPIC24+4)
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	1
	.p2align 2,,3
	.global	EccPoint_isZero
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_isZero, %function
EccPoint_isZero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1]	@ zero_extendqisi2
	lsls	r3, r3, #1
	sxtb	r2, r3
	uxtb	r3, r3
	cmp	r2, #0
	ble	.L378
	subs	r1, r3, #1
	movs	r2, #0
	subs	r3, r0, #4
	uxtb	r1, r1
	add	r0, r0, r1, lsl #2
.L377:
	ldr	r1, [r3, #4]!
	orrs	r2, r2, r1
	cmp	r3, r0
	bne	.L377
	clz	r0, r2
	lsrs	r0, r0, #5
	bx	lr
.L378:
	movs	r0, #1
	bx	lr
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	1
	.p2align 2,,3
	.global	apply_z
	.syntax unified
	.thumb
	.thumb_func
	.type	apply_z, %function
apply_z:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r1
	ldr	r1, .L384
	mov	r5, r3
	ldr	r3, .L384+4
.LPIC25:
	add	r1, pc
	sub	sp, sp, #108
	add	r4, sp, #36
	add	r6, sp, #4
	mov	r9, r0
	mov	r0, r4
	ldr	r3, [r1, r3]
	mov	r1, r2
	mov	r8, r2
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	ldrsb	r3, [r5]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r6
	blx	r3
	mov	r2, r6
	ldrsb	r3, [r5]
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r0, r9
	mov	r1, r4
	blx	r3
	mov	r2, r8
	ldrsb	r3, [r5]
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r6
	blx	r3
	mov	r2, r6
	ldrsb	r3, [r5]
	mov	r1, r7
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r7
	blx	r3
	ldr	r2, .L384+8
	ldr	r3, .L384+4
.LPIC26:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L383
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L383:
	bl	__stack_chk_fail(PLT)
.L385:
	.align	2
.L384:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+4)
	.size	apply_z, .-apply_z
	.align	1
	.p2align 2,,3
	.global	XYcZ_add
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_add, %function
XYcZ_add:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r2, .L391
	sub	sp, sp, #124
	mov	r9, r3
	ldr	r3, .L391+4
.LPIC28:
	add	r2, pc
	add	r6, sp, #20
	add	r4, sp, #52
	ldr	r5, [sp, #160]
	mov	fp, r0
	str	r1, [sp, #12]
	mov	r1, r7
	mov	r10, r5
	ldr	r3, [r2, r3]
	mov	r2, r0
	mov	r0, r6
	ldrsb	r8, [r10], #4
	ldr	r3, [r3]
	str	r3, [sp, #116]
	mov	r3, #0
	str	r8, [sp]
	mov	r3, r10
	bl	uECC_vli_modSub(PLT)
	mov	r2, r6
	ldrsb	r3, [r5]
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r6
	blx	r3
	mov	r2, r6
	ldrsb	r3, [r5]
	mov	r1, fp
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, fp
	blx	r3
	mov	r2, r6
	ldrsb	r3, [r5]
	mov	r1, r7
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r7
	blx	r3
	ldr	r2, [sp, #12]
	mov	r3, r10
	mov	r1, r9
	mov	r0, r9
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r9
	ldrsb	r3, [r5]
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r6
	blx	r3
	mov	r3, r10
	mov	r2, fp
	mov	r1, r6
	mov	r0, r6
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, fp
	mov	r1, r7
	mov	r0, r7
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r7
	ldrsb	r3, [r5]
	mov	r0, r4
	ldr	r1, [sp, #12]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	ldr	r0, [sp, #12]
	mov	r1, r4
	blx	r3
	mov	r1, fp
	mov	r3, r10
	mov	r2, r6
	mov	r0, r7
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r7
	ldrsb	r3, [r5]
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r9
	blx	r3
	ldr	r2, [sp, #12]
	mov	r3, r10
	mov	r1, r9
	mov	r0, r9
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	cmp	r8, #0
	ble	.L386
	uxtb	r2, r8
	mov	r1, r6
	mov	r0, r7
	lsls	r2, r2, #2
	bl	memcpy(PLT)
.L386:
	ldr	r2, .L391+8
	ldr	r3, .L391+4
.LPIC27:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L390
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L390:
	bl	__stack_chk_fail(PLT)
.L392:
	.align	2
.L391:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+4)
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.p2align 2,,3
	.global	EccPoint_mult
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_mult, %function
EccPoint_mult:
	@ args = 8, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r3
	ldr	r5, .L414
	sub	sp, sp, #276
	ldr	r4, .L414+4
.LPIC30:
	add	r5, pc
	ldr	r6, [sp, #316]
	ldr	r4, [r5, r4]
	ldrsh	r5, [sp, #312]
	ldrsb	r3, [r6]
	ldr	r4, [r4]
	str	r4, [sp, #268]
	mov	r4, #0
	str	r2, [sp, #8]
	cmp	r3, #0
	str	r0, [sp, #32]
	lsl	r2, r3, #2
	str	r1, [sp, #20]
	str	r3, [sp, #12]
	str	r2, [sp, #16]
	ble	.L394
	uxtb	r9, r3
	add	r10, sp, #108
	mov	r0, r10
	mov	r8, r1
	lsl	r9, r9, #2
	add	r4, sp, #172
	mov	r2, r9
	bl	memcpy(PLT)
	ldr	r2, [sp, #16]
	mov	r3, r8
	mov	r0, r4
	add	r3, r3, r2
	mov	r2, r9
	mov	r1, r3
	str	r3, [sp, #28]
	bl	memcpy(PLT)
	cmp	r7, #0
	beq	.L412
	mov	r1, r7
	add	r7, sp, #204
	mov	r2, r9
	mov	r0, r7
	bl	memcpy(PLT)
.L399:
	add	r8, sp, #76
	mov	r2, r9
	mov	r1, r10
	mov	r0, r8
	bl	memmove(PLT)
	mov	r2, r9
	add	r9, sp, #140
	mov	r1, r4
	mov	r0, r9
	bl	memmove(PLT)
.L397:
	mov	r1, r4
	mov	r3, r6
	mov	r2, r7
	mov	r0, r10
	subs	r5, r5, #2
	bl	apply_z(PLT)
	mov	r1, r4
	mov	r3, r6
	mov	r2, r7
	mov	r0, r10
	ldr	r4, [r6, #164]
	sxth	r5, r5
	blx	r4
	mov	r3, r6
	mov	r2, r7
	mov	r1, r9
	mov	r0, r8
	bl	apply_z(PLT)
	cmp	r5, #0
	ble	.L403
	str	r10, [sp, #24]
	str	r7, [sp, #36]
.L400:
	asrs	r3, r5, #5
	ldr	r2, [sp, #8]
	str	r6, [sp]
	movs	r1, #1
	ldr	r2, [r2, r3, lsl #2]
	and	r3, r5, #31
	subs	r5, r5, #1
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	itte	eq
	moveq	r1, #0
	moveq	r4, #1
	movne	r4, #0
	lsls	r1, r1, #5
	lsls	r4, r4, #5
	add	r7, r8, r1
	add	r10, r8, r4
	add	fp, r9, r1
	add	r4, r4, r9
	mov	r2, r10
	mov	r3, r4
	mov	r1, fp
	mov	r0, r7
	bl	XYcZ_addC(PLT)
	mov	r3, fp
	mov	r2, r7
	mov	r1, r4
	mov	r0, r10
	str	r6, [sp]
	bl	XYcZ_add(PLT)
	uxth	r3, r5
	sxth	r5, r5
	cmp	r3, #0
	bne	.L400
	ldr	r10, [sp, #24]
	ldr	r7, [sp, #36]
.L403:
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	str	r6, [sp]
	and	r3, r3, #1
	eor	r2, r3, #1
	lsls	r3, r3, #5
	lsls	r2, r2, #5
	add	r5, r8, r3
	add	fp, r9, r3
	add	r1, r9, r2
	add	r3, r8, r2
	mov	r0, r5
	mov	r2, r3
	str	r3, [sp, #8]
	str	r1, [sp, #24]
	mov	r3, r1
	mov	r1, fp
	bl	XYcZ_addC(PLT)
	ldr	r4, [sp, #12]
	mov	r1, r10
	str	r4, [sp]
	add	r10, r6, #4
	add	r4, sp, #44
	mov	r0, r4
	mov	r3, r10
	mov	r2, r8
	bl	uECC_vli_modSub(PLT)
	mov	r2, fp
	mov	r1, r4
	ldrsb	r3, [r6]
	mov	r0, r7
	bl	uECC_vli_mult(PLT)
	mov	r0, r4
	ldr	r3, [r6, #172]
	mov	r1, r7
	blx	r3
	ldr	r2, [sp, #20]
	mov	r1, r4
	ldrsb	r3, [r6]
	mov	r0, r7
	bl	uECC_vli_mult(PLT)
	mov	r0, r4
	ldr	r3, [r6, #172]
	mov	r1, r7
	blx	r3
	mov	r1, r4
	mov	r0, r4
	ldr	r3, [sp, #12]
	mov	r2, r10
	bl	uECC_vli_modInv(PLT)
	ldr	r2, [sp, #28]
	mov	r1, r4
	ldrsb	r3, [r6]
	mov	r0, r7
	bl	uECC_vli_mult(PLT)
	mov	r0, r4
	ldr	r3, [r6, #172]
	mov	r1, r7
	blx	r3
	mov	r2, r5
	mov	r1, r4
	ldrsb	r3, [r6]
	mov	r0, r7
	bl	uECC_vli_mult(PLT)
	mov	r0, r4
	ldr	r3, [r6, #172]
	mov	r1, r7
	blx	r3
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #8]
	mov	r3, fp
	mov	r2, r5
	str	r6, [sp]
	bl	XYcZ_add(PLT)
	mov	r2, r4
	mov	r3, r6
	mov	r1, r9
	mov	r0, r8
	bl	apply_z(PLT)
	ldr	r4, [sp, #12]
	cmp	r4, #0
	ble	.L393
	ldrb	r4, [sp, #12]	@ zero_extendqisi2
	mov	r1, r8
	ldr	r5, [sp, #32]
	lsls	r4, r4, #2
	mov	r0, r5
	mov	r2, r4
	bl	memcpy(PLT)
	ldr	r3, [sp, #16]
	mov	r0, r5
	mov	r2, r4
	mov	r1, r9
	add	r0, r0, r3
	bl	memcpy(PLT)
.L393:
	ldr	r2, .L414+8
	ldr	r3, .L414+4
.LPIC29:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #268]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L413
	add	sp, sp, #276
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L412:
	mov	r1, r7
	add	r7, sp, #204
	mov	r2, r9
	mov	r0, r7
	bl	memset(PLT)
	movs	r3, #1
	str	r3, [sp, #204]
	b	.L399
.L394:
	cbnz	r7, .L411
	movs	r3, #1
	str	r3, [sp, #204]
.L411:
	ldrd	r2, r3, [sp, #16]
	add	r10, sp, #108
	add	r4, sp, #172
	add	r7, sp, #204
	add	r3, r3, r2
	add	r8, sp, #76
	add	r9, sp, #140
	str	r3, [sp, #28]
	b	.L397
.L413:
	bl	__stack_chk_fail(PLT)
.L415:
	.align	2
.L414:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+4)
	.size	EccPoint_mult, .-EccPoint_mult
	.align	1
	.p2align 2,,3
	.global	regularize_k
	.syntax unified
	.thumb
	.thumb_func
	.type	regularize_k, %function
regularize_k:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrsh	r9, [r3, #2]
	sub	sp, sp, #12
	adds	r5, r9, #31
	add	r4, r9, #62
	it	pl
	movpl	r4, r5
	sbfx	r10, r4, #5, #8
	asr	fp, r4, #5
	cmp	r10, #0
	ble	.L431
	add	r8, fp, #-1
	add	r4, r3, #32
	sub	ip, r1, #4
	strd	r9, fp, [sp]
	uxtb	r5, r8
	sub	lr, r0, #4
	mov	r9, ip
	mov	fp, r4
	add	r7, r0, r5, lsl #2
	movs	r0, #0
.L421:
	ldr	r6, [lr, #4]!
	ldr	r5, [fp, #4]!
	add	r5, r5, r6
	add	r5, r5, r0
	str	r5, [r9, #4]!
	cmp	r6, r5
	it	ne
	movne	r0, #0
	it	hi
	orrhi	r0, r0, #1
	cmp	r7, lr
	bne	.L421
	ldrd	r9, fp, [sp]
	cbz	r0, .L432
	movs	r0, #1
.L423:
	uxtb	r8, r8
	subs	r5, r2, #4
	movs	r2, #0
	add	r8, r1, r8, lsl #2
.L424:
	ldr	r1, [ip, #4]!
	ldr	r3, [r4, #4]!
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r5, #4]!
	cmp	r1, r3
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	cmp	r8, ip
	bne	.L424
.L416:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L432:
	cmp	r9, r10, lsl #5
	bge	.L423
.L418:
	asr	r0, r9, #5
	and	r9, r9, #31
	ldr	r4, [r1, r0, lsl #2]
	movs	r0, #1
	lsl	r0, r0, r9
	tst	r0, r4
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	cmp	r10, #0
	ble	.L416
	add	r4, r3, #32
	add	r8, fp, #-1
	sub	ip, r1, #4
	b	.L423
.L431:
	cmp	r9, r10, lsl #5
	it	ge
	movge	r0, #0
	bge	.L416
	b	.L418
	.size	regularize_k, .-regularize_k
	.align	1
	.p2align 2,,3
	.global	EccPoint_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, r2
	ldr	ip, .L441
	sub	sp, sp, #92
	ldr	r3, .L441+4
.LPIC32:
	add	ip, pc
	add	r2, sp, #52
	mov	r4, r0
	mov	r0, r1
	str	r2, [sp, #16]
	add	r1, sp, #20
	str	r1, [sp, #12]
	ldr	r3, [ip, r3]
	ldr	r3, [r3]
	str	r3, [sp, #84]
	mov	r3, #0
	mov	r3, r5
	bl	regularize_k(PLT)
	clz	r0, r0
	ldrh	r2, [r5, #2]
	add	r1, sp, #88
	lsrs	r0, r0, #5
	str	r5, [sp, #4]
	adds	r2, r2, #1
	movs	r3, #0
	add	r0, r1, r0, lsl #2
	add	r1, r5, #68
	sxth	r2, r2
	str	r2, [sp]
	ldr	r2, [r0, #-76]
	mov	r0, r4
	bl	EccPoint_mult(PLT)
	ldrb	r3, [r5]	@ zero_extendqisi2
	lsls	r3, r3, #1
	sxtb	r2, r3
	cmp	r2, #0
	ble	.L437
	uxtb	r3, r3
	movs	r2, #0
	subs	r1, r3, #1
	subs	r3, r4, #4
	uxtb	r1, r1
	add	r0, r4, r1, lsl #2
.L435:
	ldr	r1, [r3, #4]!
	orrs	r2, r2, r1
	cmp	r3, r0
	bne	.L435
	subs	r0, r2, #0
	it	ne
	movne	r0, #1
.L433:
	ldr	r2, .L441+8
	ldr	r3, .L441+4
.LPIC31:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #84]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L440
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, pc}
.L437:
	movs	r0, #0
	b	.L433
.L440:
	bl	__stack_chk_fail(PLT)
.L442:
	.align	2
.L441:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	1
	.p2align 2,,3
	.global	uECC_vli_nativeToBytes
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r4, r1, #0
	ble	.L443
	mov	ip, #0
	subs	r5, r4, #1
	mov	r3, ip
.L445:
	subs	r3, r5, r3
	add	lr, ip, #1
	bic	r1, r3, #3
	and	r3, r3, #3
	lsls	r3, r3, #3
	ldr	r1, [r2, r1]
	lsr	r3, r1, r3
	strb	r3, [r0, ip]
	sxtb	ip, lr
	mov	r3, ip
	cmp	ip, r4
	blt	.L445
.L443:
	pop	{r4, r5, pc}
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	1
	.p2align 2,,3
	.global	uECC_vli_bytesToNative
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r3, r2, #6
	push	{r4, r5, r6, lr}
	mov	r5, r2
	adds	r2, r2, #3
	mov	r4, r0
	it	pl
	movpl	r3, r2
	mov	r6, r1
	sbfx	r2, r3, #2, #8
	cmp	r2, #0
	ble	.L453
	asrs	r3, r3, #2
	movs	r1, #0
	subs	r3, r3, #1
	uxtb	r2, r3
	adds	r2, r2, #1
	lsls	r2, r2, #2
	bl	memset(PLT)
.L453:
	cmp	r5, #0
	ittt	gt
	movgt	ip, #0
	addgt	lr, r5, #-1
	movgt	r3, ip
	ble	.L449
.L454:
	sub	r3, lr, r3
	ldrb	r1, [r6, ip]	@ zero_extendqisi2
	bic	r0, r3, #3
	and	r3, r3, #3
	add	ip, ip, #1
	lsls	r3, r3, #3
	ldr	r2, [r4, r0]
	sxtb	ip, ip
	lsls	r1, r1, r3
	cmp	ip, r5
	orr	r2, r2, r1
	mov	r3, ip
	str	r2, [r4, r0]
	blt	.L454
.L449:
	pop	{r4, r5, r6, pc}
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	1
	.p2align 2,,3
	.global	uECC_generate_random_int
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	mov	r4, r1
	sub	sp, sp, #68
	mov	r9, r2
	mov	r5, r3
	mov	r0, r4
	str	r1, [sp, #16]
	mov	r1, r2
	ldr	r2, .L484
	str	r3, [sp]
	ldr	r3, .L484+4
.LPIC36:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #60]
	mov	r3, #0
	bl	uECC_vli_numBits(PLT)
	ldr	r3, .L484+8
.LPIC33:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L458
	rsb	r0, r0, r9, lsl #5
	mov	r1, #-1
	add	r8, r5, r9, lsl #2
	sub	fp, r5, #4
	sxth	r2, r0
	add	r5, r4, r9, lsl #2
	sub	r8, r8, #4
	subs	r5, r5, #4
	lsrs	r1, r1, r2
	str	r1, [sp, #8]
	ldr	r1, .L484+12
	add	r2, sp, #24
	add	r4, fp, r9, lsl #2
	add	r7, r2, r9, lsl #2
.LPIC34:
	add	r1, pc
	str	r1, [sp, #12]
	lsl	r1, r9, #2
	str	r1, [sp, #4]
	movs	r6, #64
	str	r2, [sp, #20]
	ldrd	r0, r1, [sp]
	blx	r3
	cmp	r0, #0
	beq	.L458
.L482:
	ldr	r3, [r8]
	cmp	r9, #0
	ldr	r2, [sp, #8]
	it	gt
	movgt	lr, fp
	and	r3, r3, r2
	it	gt
	movgt	r2, #0
	str	r3, [r8]
	it	gt
	movgt	r3, fp
	ble	.L462
.L461:
	ldr	r1, [r3, #4]!
	orrs	r2, r2, r1
	cmp	r4, r3
	bne	.L461
	cbz	r2, .L462
	ldr	r3, [sp, #16]
	movs	r2, #0
	ldr	r10, [sp, #20]
	subs	r0, r3, #4
	mov	ip, r10
.L463:
	ldr	r1, [r0, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r1, r3
	subs	r3, r3, r2
	str	r3, [r10, #4]!
	cmp	r1, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r5, r0
	bne	.L463
	subs	r0, r2, #0
	mov	r1, ip
	it	ne
	movne	r0, #1
	movs	r3, #0
.L464:
	ldr	r2, [r1, #4]!
	orrs	r3, r3, r2
	cmp	r7, r1
	bne	.L464
	lsls	r0, r0, #1
	cmp	r3, #0
	ite	eq
	rsbeq	r0, r0, #0
	rsbne	r0, r0, #1
	uxtb	r0, r0
	cmp	r0, #1
	beq	.L457
.L462:
	subs	r6, r6, #1
	beq	.L458
	ldr	r3, [sp, #12]
	ldrd	r0, r1, [sp]
	ldr	r3, [r3]
	blx	r3
	cmp	r0, #0
	bne	.L482
.L458:
	movs	r0, #0
.L457:
	ldr	r2, .L484+16
	ldr	r3, .L484+4
.LPIC35:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #60]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L483
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L483:
	bl	__stack_chk_fail(PLT)
.L485:
	.align	2
.L484:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR1-(.LPIC33+4)
	.word	.LANCHOR1-(.LPIC34+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.p2align 2,,3
	.global	uECC_valid_point
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_valid_point, %function
uECC_valid_point:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r0
	ldr	r2, .L509
	ldr	r3, .L509+4
	sub	sp, sp, #108
.LPIC38:
	add	r2, pc
	ldrsb	r8, [r1]
	ldr	r3, [r2, r3]
	uxtb	r0, r8
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	lsls	r3, r0, #1
	sxtb	r2, r3
	cmp	r2, #0
	ble	.L496
	uxtb	r3, r3
	mov	r5, r1
	subs	r3, r3, #1
	sub	ip, r6, #4
	uxtb	r2, r3
	movs	r3, #0
	add	r2, r6, r2, lsl #2
.L488:
	ldr	r1, [ip, #4]!
	orrs	r3, r3, r1
	cmp	ip, r2
	bne	.L488
	cmp	r3, #0
	beq	.L496
	subs	r0, r0, #1
	uxtb	r7, r0
	lsls	r2, r0, #24
	bmi	.L499
	adds	r1, r7, #2
	lsl	lr, r7, #2
	mov	r4, r7
	add	r0, r6, lr
	add	r1, r5, r1, lsl #2
	mov	ip, r7
	mov	r2, r1
	b	.L490
.L506:
	bcc	.L499
	add	ip, ip, #-1
	tst	ip, #128
	bne	.L499
.L490:
	ldr	r9, [r2, #-4]!
	ldr	r3, [r0], #-4
	cmp	r9, r3
	bls	.L506
	add	r2, r6, r8, lsl #2
	mov	ip, r7
	add	lr, lr, r2
	b	.L492
.L507:
	bcc	.L499
	add	ip, ip, #-1
	tst	ip, #128
	bne	.L499
.L492:
	ldr	r0, [r1, #-4]!
	ldr	r3, [lr], #-4
	cmp	r0, r3
	bls	.L507
	mov	r3, r8
	add	r8, sp, #36
	mov	r1, r2
	mov	r0, r8
	add	r9, sp, #4
	adds	r7, r7, #1
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r8
	mov	r0, r9
	blx	r3
	lsls	r7, r7, #2
	mov	r1, r6
	mov	r2, r5
	mov	r0, r8
	ldr	r3, [r5, #168]
	blx	r3
	movs	r2, #0
	add	r0, r9, r7
	add	r1, r8, r7
.L493:
	ldr	r3, [r0, #-4]!
	subs	r4, r4, #1
	ldr	r5, [r1, #-4]!
	eors	r3, r3, r5
	orrs	r2, r2, r3
	lsls	r3, r4, #24
	bpl	.L493
	cmp	r2, #0
	ite	ne
	mvnne	r0, #2
	moveq	r0, #0
.L486:
	ldr	r2, .L509+8
	ldr	r3, .L509+4
.LPIC37:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L508
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L499:
	mvn	r0, #1
	b	.L486
.L496:
	mov	r0, #-1
	b	.L486
.L508:
	bl	__stack_chk_fail(PLT)
.L510:
	.align	2
.L509:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC37+4)
	.size	uECC_valid_point, .-uECC_valid_point
	.align	1
	.p2align 2,,3
	.global	uECC_valid_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L521
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	ldr	r3, .L521+4
.LPIC40:
	add	r2, pc
	sub	sp, sp, #72
	ldrsb	r8, [r5, #1]
	mov	r4, r5
	add	r7, sp, #4
	mov	r1, r0
	ldr	r3, [r2, r3]
	mov	r6, r0
	mov	r0, r7
	mov	r2, r8
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r0, [r4], #132
	add	r1, r6, r8
	mov	r2, r8
	add	r0, r7, r0, lsl #2
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, sp, #68
	add	ip, r5, #68
	b	.L513
.L519:
	bcc	.L512
	cmp	r4, ip
	beq	.L518
.L513:
	ldr	r0, [r3, #-4]!
	ldr	r2, [r4, #-4]!
	cmp	r0, r2
	bls	.L519
.L512:
	mov	r1, r5
	mov	r0, r7
	bl	uECC_valid_point(PLT)
.L511:
	ldr	r2, .L521+8
	ldr	r3, .L521+4
.LPIC39:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L520
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L518:
	mvn	r0, #3
	b	.L511
.L520:
	bl	__stack_chk_fail(PLT)
.L522:
	.align	2
.L521:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC40+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+4)
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	1
	.p2align 2,,3
	.global	uECC_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r2
	ldr	r2, .L549
	ldr	r3, .L549+4
	sub	sp, sp, #108
.LPIC42:
	add	r2, pc
	ldrsh	r7, [r5, #2]
	add	r6, sp, #4
	mov	r4, r1
	mov	r1, r0
	mov	r0, r6
	ldr	r3, [r2, r3]
	add	r2, r7, #14
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	adds	r3, r7, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, r7, #62
	adds	r7, r7, #31
	it	pl
	movpl	r3, r7
	asr	lr, r3, #5
	sbfx	r3, r3, #5, #8
	cmp	r3, #0
	ble	.L527
	add	lr, lr, #-1
	mov	r0, sp
	mov	r3, r0
	movs	r2, #0
	uxtb	lr, lr
	lsl	lr, lr, #2
	add	r7, r6, lr
.L526:
	ldr	r1, [r3, #4]!
	orrs	r2, r2, r1
	cmp	r7, r3
	bne	.L526
	cbz	r2, .L527
	add	r2, sp, #32
	add	r8, r5, #36
	add	r8, r8, lr
	add	r1, r5, #32
	mov	r7, r2
	mov	ip, #0
.L528:
	ldr	r9, [r1, #4]!
	ldr	r3, [r0, #4]!
	sub	r3, r9, r3
	sub	r3, r3, ip
	str	r3, [r7, #4]!
	cmp	r9, r3
	it	ne
	movne	ip, #0
	it	cc
	orrcc	ip, ip, #1
	cmp	r8, r1
	bne	.L528
	subs	r3, ip, #0
	add	r0, sp, #36
	it	ne
	movne	r3, #1
	add	lr, lr, r0
	movs	r1, #0
.L529:
	ldr	r7, [r2, #4]!
	orrs	r1, r1, r7
	cmp	lr, r2
	bne	.L529
	lsls	r3, r3, #1
	cmp	r1, #0
	ite	eq
	rsbeq	r3, r3, #0
	rsbne	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L547
.L527:
	movs	r0, #0
.L523:
	ldr	r2, .L549+8
	ldr	r3, .L549+4
.LPIC41:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L548
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L547:
	mov	r2, r5
	mov	r1, r6
	bl	EccPoint_compute_public_key(PLT)
	cmp	r0, #0
	beq	.L527
	ldrsb	r6, [r5, #1]
	cmp	r6, #0
	itttt	gt
	movgt	r2, #0
	addgt	r7, r6, #-1
	addgt	r0, r4, #-1
	movgt	r3, r2
	ble	.L532
.L531:
	subs	r3, r7, r3
	adds	r2, r2, #1
	bic	r1, r3, #3
	and	r3, r3, #3
	adds	r1, r1, #104
	add	r1, sp, r1
	lsls	r3, r3, #3
	ldr	r1, [r1, #-68]
	lsr	r3, r1, r3
	strb	r3, [r0, #1]!
	uxtb	r3, r2
	sxtb	r2, r2
	cmp	r6, r3
	bgt	.L531
	ldrsb	r6, [r5]
	ldrsb	r0, [r5, #1]
	lsls	r6, r6, #2
	cmp	r0, #0
	ble	.L532
	add	r3, r6, #104
	movs	r2, #0
	add	r6, sp, r3
	subs	r5, r0, #1
	add	r4, r4, r0
	mov	r3, r2
.L533:
	subs	r3, r5, r3
	adds	r2, r2, #1
	bic	r1, r3, #3
	and	r3, r3, #3
	add	r1, r1, r6
	lsls	r3, r3, #3
	ldr	r1, [r1, #-68]
	lsr	r3, r1, r3
	strb	r3, [r4], #1
	uxtb	r3, r2
	sxtb	r2, r2
	cmp	r0, r3
	bgt	.L533
.L532:
	movs	r0, #1
	b	.L523
.L548:
	bl	__stack_chk_fail(PLT)
.L550:
	.align	2
.L549:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC42+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC41+4)
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_rng_function, %object
	.size	g_rng_function, 4
g_rng_function:
	.word	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	curve_secp256r1, %object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.short	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
