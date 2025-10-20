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
	.file	"tinycrypt_ecc.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_rshift1, %function
uECC_vli_rshift1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, r1, lsl #2
	cmp	r0, r1
	bcs	.L1
	movs	r3, #0
.L3:
	ldr	r2, [r1, #-4]!
	orr	r3, r3, r2, lsr #1
	str	r3, [r1]
	lsls	r3, r2, #31
	cmp	r0, r1
	bcc	.L3
.L1:
	bx	lr
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mult, %function
uECC_vli_mult:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	mov	r8, r0
	mov	r6, r1
	mov	r7, r2
	subs	fp, r3, #0
	ble	.L15
	sub	r10, r0, #4
	mov	lr, #0
	mov	r3, lr
	mov	r5, lr
	b	.L7
.L15:
	movs	r1, #0
	mov	r3, r1
	b	.L6
.L17:
	mov	r4, r3
	mov	r3, r1
	movs	r1, #0
	b	.L11
.L25:
	str	r5, [r10, #4]!
	add	lr, lr, #1
	mov	ip, #0
.L14:
	mov	r5, r3
	mov	r3, ip
.L7:
	sxtb	r9, lr
	cmp	r9, #0
	itt	ge
	movge	r4, #0
	movge	ip, r4
	blt	.L25
.L8:
	sxtb	r2, r4
	sub	r1, lr, r2
	ldr	r0, [r7, r1, lsl #2]
	ldr	r2, [r6, r2, lsl #2]
	umull	r2, r0, r0, r2
	adds	r1, r2, r5
	adc	r3, r3, r0
	cmp	r1, r2
	sbcs	r0, r3, r0
	ite	cc
	movcc	r2, #1
	movcs	r2, #0
	add	ip, ip, r2
	mov	r5, r1
	adds	r4, r4, #1
	sxtb	r2, r4
	cmp	r2, r9
	ble	.L8
	str	r1, [r10, #4]!
	add	lr, lr, #1
	cmp	lr, fp
	bne	.L14
	mov	r1, ip
.L6:
	mov	r4, fp
	lsl	r2, fp, #1
	add	ip, r2, #-1
	cmp	ip, fp
	ble	.L10
	mov	r9, fp
	mov	r10, #1
	uxtb	lr, fp
	subs	r2, r6, #4
	str	r2, [sp, #8]
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	r2, r6
.L13:
	sxtb	lr, r10
	cmp	fp, lr
	ble	.L17
	add	r5, lr, #1073741824
	subs	r5, r5, #1
	add	r5, r2, r5, lsl #2
	sub	r6, r4, lr
	add	r6, r7, r6, lsl #2
	ldr	r0, [sp, #12]
	sub	r4, r0, r10
	uxtab	lr, lr, r4
	ldr	r0, [sp, #8]
	add	lr, r0, lr, lsl #2
	mov	r4, r3
	mov	r3, r1
	movs	r1, #0
.L12:
	ldr	r0, [r6], #-4
	ldr	ip, [r5, #4]!
	umull	r0, ip, ip, r0
	adds	r4, r0, r4
	adc	r3, r3, ip
	cmp	r4, r0
	sbcs	ip, r3, ip
	ite	cc
	movcc	r0, #1
	movcs	r0, #0
	add	r1, r1, r0
	cmp	r5, lr
	bne	.L12
.L11:
	str	r4, [r8, r9, lsl #2]
	add	r9, r9, #1
	sxtb	r9, r9
	mov	r4, r9
	add	r10, r10, #1
	uxtb	r10, r10
	ldr	r0, [sp, #4]
	cmp	r0, r9
	bgt	.L13
.L10:
	add	r8, r8, fp, lsl #3
	str	r3, [r8, #-4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_add, %function
uECC_vli_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	ble	.L29
	push	{r4, lr}
	subs	r1, r1, #4
	sub	lr, r2, #4
	sub	ip, r0, #4
	add	r4, r1, r3, lsl #2
	movs	r0, #0
.L28:
	ldr	r2, [r1, #4]!
	ldr	r3, [lr, #4]!
	add	r3, r3, r2
	add	r3, r3, r0
	cmp	r2, r3
	it	ne
	movne	r0, #0
	it	hi
	orrhi	r0, r0, #1
	str	r3, [ip, #4]!
	cmp	r1, r4
	bne	.L28
	pop	{r4, pc}
.L29:
	movs	r0, #0
	bx	lr
	.size	uECC_vli_add, .-uECC_vli_add
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_modInv_update, %function
vli_modInv_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r2
	ldr	r3, [r0]
	tst	r3, #1
	bne	.L39
	mov	r1, r2
	bl	uECC_vli_rshift1(PLT)
	b	.L35
.L39:
	mov	r3, r2
	mov	r2, r1
	mov	r1, r0
	bl	uECC_vli_add(PLT)
	mov	r6, r0
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_rshift1(PLT)
	cbz	r6, .L35
	add	r4, r4, #1073741824
	subs	r4, r4, #1
	ldr	r3, [r5, r4, lsl #2]
	orr	r3, r3, #-2147483648
	str	r3, [r5, r4, lsl #2]
.L35:
	pop	{r4, r5, r6, pc}
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.global	uECC_set_rng
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_set_rng, %function
uECC_set_rng:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L41
.LPIC0:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	uECC_set_rng, .-uECC_set_rng
	.align	1
	.global	uECC_get_rng
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_get_rng, %function
uECC_get_rng:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L44
.LPIC1:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	uECC_get_rng, .-uECC_get_rng
	.align	1
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
	ble	.L48
	subs	r0, r0, #4
	add	r1, r0, r1, lsl #2
	movs	r3, #0
.L50:
	str	r3, [r0, #4]!
	cmp	r0, r1
	bne	.L50
.L48:
	bx	lr
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	1
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
	ble	.L55
	subs	r3, r0, #4
	add	r1, r3, r1, lsl #2
	movs	r0, #0
.L54:
	ldr	r2, [r3, #4]!
	orrs	r0, r0, r2
	cmp	r3, r1
	bne	.L54
.L53:
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
.L55:
	movs	r0, #0
	b	.L53
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	1
	.global	uECC_vli_testBit
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asrs	r2, r1, #5
	and	r1, r1, #31
	movs	r3, #1
	lsls	r3, r3, r1
	ldr	r0, [r0, r2, lsl #2]
	ands	r0, r0, r3
	bx	lr
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	1
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
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L59
	add	r2, r0, r3, lsl #2
.L60:
	ldr	r1, [r2], #-4
	cbnz	r1, .L73
	subs	r3, r3, #1
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L60
	movs	r0, #0
	bx	lr
.L59:
	cbnz	r1, .L66
	movs	r0, #0
	bx	lr
.L73:
	adds	r3, r3, #1
	sxtb	r1, r3
.L66:
	add	r3, r1, #1073741824
	subs	r3, r3, #1
	ldr	r0, [r0, r3, lsl #2]
	cbz	r0, .L64
	mov	r3, r0
.L65:
	lsrs	r3, r3, #1
	bne	.L65
	clz	r0, r0
	rsb	r0, r0, #32
.L64:
	subs	r1, r1, #1
	add	r0, r0, r1, lsl #5
	sxth	r0, r0
	bx	lr
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	1
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
	ble	.L74
	subs	r1, r1, #4
	subs	r0, r0, #4
	add	r2, r1, r2, lsl #2
.L76:
	ldr	r3, [r1, #4]!
	str	r3, [r0, #4]!
	cmp	r1, r2
	bne	.L76
.L74:
	bx	lr
	.size	uECC_vli_set, .-uECC_vli_set
	.align	1
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
	sxtb	r2, r2
	cmp	r2, #0
	blt	.L81
	mov	ip, r2
	lsls	r2, r2, #2
	add	r0, r0, r2
	add	r1, r1, r2
.L80:
	ldr	r2, [r0], #-4
	ldr	r3, [r1], #-4
	cmp	r2, r3
	bhi	.L82
	bcc	.L83
	add	ip, ip, #-1
	tst	ip, #128
	beq	.L80
	movs	r0, #0
	bx	lr
.L81:
	movs	r0, #0
	bx	lr
.L82:
	movs	r0, #1
	bx	lr
.L83:
	mov	r0, #-1
	bx	lr
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	1
	.global	uECC_vli_equal
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_equal, %function
uECC_vli_equal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r2, #1
	sxtb	r2, r2
	cmp	r2, #0
	blt	.L88
	push	{r4}
	mov	ip, r2
	lsls	r3, r2, #2
	adds	r2, r0, r3
	add	r1, r1, r3
	movs	r0, #0
.L87:
	ldr	r3, [r2], #-4
	ldr	r4, [r1], #-4
	eors	r3, r3, r4
	orrs	r0, r0, r3
	add	ip, ip, #-1
	tst	ip, #128
	beq	.L87
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	ldr	r4, [sp], #4
	bx	lr
.L88:
	movs	r0, #0
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
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
	.global	uECC_vli_sub
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_sub, %function
uECC_vli_sub:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	ble	.L98
	push	{r4, lr}
	subs	r1, r1, #4
	sub	lr, r2, #4
	sub	ip, r0, #4
	add	r4, r1, r3, lsl #2
	movs	r0, #0
.L97:
	ldr	r2, [r1, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r2, r3
	subs	r3, r3, r0
	cmp	r2, r3
	it	ne
	movne	r0, #0
	it	cc
	orrcc	r0, r0, #1
	str	r3, [ip, #4]!
	cmp	r1, r4
	bne	.L97
	pop	{r4, pc}
.L98:
	movs	r0, #0
	bx	lr
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.global	vli_mmod_fast_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #40
	mov	r6, r0
	mov	r5, r1
	ldr	r2, .L115
.LPIC6:
	add	r2, pc
	ldr	r3, .L115+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	movs	r2, #8
	bl	uECC_vli_set(PLT)
	mov	r8, #0
	str	r8, [sp, #12]
	str	r8, [sp, #8]
	str	r8, [sp, #4]
	ldr	r3, [r5, #44]
	str	r3, [sp, #16]
	ldr	r3, [r5, #48]
	str	r3, [sp, #20]
	ldr	r3, [r5, #52]
	str	r3, [sp, #24]
	ldr	r3, [r5, #56]
	str	r3, [sp, #28]
	ldr	r3, [r5, #60]
	str	r3, [sp, #32]
	movs	r3, #8
	add	r7, sp, #4
	mov	r2, r7
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_add(PLT)
	mov	r4, r0
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	add	r4, r4, r0
	ldr	r3, [r5, #48]
	str	r3, [sp, #16]
	ldr	r3, [r5, #52]
	str	r3, [sp, #20]
	ldr	r3, [r5, #56]
	str	r3, [sp, #24]
	ldr	r3, [r5, #60]
	str	r3, [sp, #28]
	str	r8, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_add(PLT)
	add	r4, r4, r0
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	add	r4, r4, r0
	ldr	r3, [r5, #32]
	str	r3, [sp, #4]
	ldr	r3, [r5, #36]
	str	r3, [sp, #8]
	ldr	r3, [r5, #40]
	str	r3, [sp, #12]
	str	r8, [sp, #24]
	str	r8, [sp, #20]
	str	r8, [sp, #16]
	ldr	r3, [r5, #56]
	str	r3, [sp, #28]
	ldr	r3, [r5, #60]
	str	r3, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	add	r4, r4, r0
	ldr	r3, [r5, #36]
	str	r3, [sp, #4]
	ldr	r3, [r5, #40]
	str	r3, [sp, #8]
	ldr	r3, [r5, #44]
	str	r3, [sp, #12]
	ldr	r3, [r5, #52]
	str	r3, [sp, #16]
	ldr	r2, [r5, #56]
	str	r2, [sp, #20]
	ldr	r2, [r5, #60]
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	ldr	r3, [r5, #32]
	str	r3, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	add	r4, r4, r0
	ldr	r3, [r5, #44]
	str	r3, [sp, #4]
	ldr	r3, [r5, #48]
	str	r3, [sp, #8]
	ldr	r3, [r5, #52]
	str	r3, [sp, #12]
	str	r8, [sp, #24]
	str	r8, [sp, #20]
	str	r8, [sp, #16]
	ldr	r3, [r5, #32]
	str	r3, [sp, #28]
	ldr	r3, [r5, #40]
	str	r3, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	subs	r4, r4, r0
	ldr	r3, [r5, #48]
	str	r3, [sp, #4]
	ldr	r3, [r5, #52]
	str	r3, [sp, #8]
	ldr	r3, [r5, #56]
	str	r3, [sp, #12]
	ldr	r3, [r5, #60]
	str	r3, [sp, #16]
	ldr	r3, [r5, #36]
	str	r3, [sp, #28]
	ldr	r3, [r5, #44]
	str	r3, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	subs	r4, r4, r0
	ldr	r3, [r5, #52]
	str	r3, [sp, #4]
	ldr	r3, [r5, #56]
	str	r3, [sp, #8]
	ldr	r3, [r5, #60]
	str	r3, [sp, #12]
	ldr	r3, [r5, #32]
	str	r3, [sp, #16]
	ldr	r3, [r5, #36]
	str	r3, [sp, #20]
	ldr	r3, [r5, #40]
	str	r3, [sp, #24]
	str	r8, [sp, #28]
	ldr	r3, [r5, #48]
	str	r3, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	subs	r4, r4, r0
	ldr	r3, [r5, #56]
	str	r3, [sp, #4]
	ldr	r3, [r5, #60]
	str	r3, [sp, #8]
	str	r8, [sp, #12]
	ldr	r3, [r5, #36]
	str	r3, [sp, #16]
	ldr	r3, [r5, #40]
	str	r3, [sp, #20]
	ldr	r3, [r5, #44]
	str	r3, [sp, #24]
	ldr	r3, [r5, #52]
	str	r3, [sp, #32]
	movs	r3, #8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	subs	r4, r4, r0
	bmi	.L112
	ldr	r7, .L115+8
.LPIC4:
	add	r7, pc
	adds	r7, r7, #4
	ldr	r5, .L115+12
.LPIC3:
	add	r5, pc
	b	.L105
.L112:
	ldr	r5, .L115+16
.LPIC2:
	add	r5, pc
	adds	r5, r5, #4
	movs	r7, #8
.L106:
	mov	r3, r7
	mov	r2, r5
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	adds	r4, r4, r0
	bmi	.L106
	b	.L104
.L108:
	movs	r3, #8
	adds	r2, r5, #4
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	subs	r4, r4, r0
.L105:
	cmp	r4, #0
	bne	.L108
	movs	r2, #8
	mov	r1, r6
	mov	r0, r7
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L108
.L104:
	ldr	r2, .L115+20
.LPIC5:
	add	r2, pc
	ldr	r3, .L115+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L114
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L114:
	bl	__stack_chk_fail(PLT)
.L116:
	.align	2
.L115:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR1-(.LPIC4+4)
	.word	.LANCHOR1-(.LPIC3+4)
	.word	.LANCHOR1-(.LPIC2+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.global	uECC_vli_cmp
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #40
	mov	r6, r2
	ldr	r2, .L121
.LPIC7:
	add	r2, pc
	ldr	r3, .L121+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	mov	r3, r6
	mov	r2, r1
	mov	r1, r0
	add	r5, sp, #4
	mov	r0, r5
	bl	uECC_vli_sub(PLT)
	mov	r4, r0
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_isZero(PLT)
	subs	r4, r4, #0
	it	ne
	movne	r4, #1
	lsls	r4, r4, #1
	cmp	r0, #0
	ite	ne
	rsbne	r4, r4, #0
	rsbeq	r4, r4, #1
	ldr	r2, .L121+8
.LPIC8:
	add	r2, pc
	ldr	r3, .L121+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L120
	mov	r0, r4
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, pc}
.L120:
	bl	__stack_chk_fail(PLT)
.L122:
	.align	2
.L121:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	1
	.global	uECC_vli_modAdd
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r3
	ldrsb	r6, [sp, #16]
	mov	r3, r6
	bl	uECC_vli_add(PLT)
	cbnz	r0, .L124
	mov	r2, r6
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	beq	.L123
.L124:
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_sub(PLT)
.L123:
	pop	{r4, r5, r6, pc}
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.global	uECC_vli_modSub
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r3
	ldrsb	r6, [sp, #16]
	mov	r3, r6
	bl	uECC_vli_sub(PLT)
	cbnz	r0, .L130
.L127:
	pop	{r4, r5, r6, pc}
.L130:
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_add(PLT)
	b	.L127
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.global	uECC_vli_mmod
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #156
	mov	fp, r0
	mov	r7, r2
	mov	r6, r3
	ldr	r2, .L151
.LPIC10:
	add	r2, pc
	ldr	r3, .L151+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #148]
	mov	r3, #0
	add	r3, sp, #84
	str	r3, [sp, #12]
	str	r1, [sp, #16]
	mov	r1, r6
	mov	r0, r7
	bl	uECC_vli_numBits(PLT)
	rsb	r5, r0, r6, lsl #6
	sxth	r5, r5
	add	r8, r5, #31
	ands	r8, r8, r5, asr #32
	it	cc
	movcc	r8, r5
	sbfx	r8, r8, #5, #8
	rsbs	r3, r5, #0
	and	r4, r5, #31
	and	r3, r3, #31
	it	pl
	rsbpl	r4, r3, #0
	mov	r1, r8
	add	r0, sp, #20
	bl	uECC_vli_clear(PLT)
	cmp	r4, #0
	ble	.L132
	cbz	r6, .L141
	subs	r1, r7, #4
	add	r3, sp, #152
	add	r7, r3, r8, lsl #2
	subs	r7, r7, #136
	add	lr, r1, r6, lsl #2
	movs	r3, #0
	rsb	ip, r4, #32
	mov	r0, r3
.L134:
	ldr	r2, [r1, #4]!
	lsl	r3, r2, r4
	orrs	r3, r3, r0
	str	r3, [r7, #4]!
	lsr	r0, r2, ip
	cmp	r1, lr
	bne	.L134
.L141:
	lsls	r4, r6, #1
	add	r10, sp, #20
	add	r10, r10, r6, lsl #2
	movs	r7, #1
	mov	r8, #0
	add	r9, r6, #-1
	add	r3, sp, #152
	add	r9, r3, r9, lsl #2
	str	fp, [sp, #4]
	b	.L136
.L132:
	mov	r2, r6
	mov	r1, r7
	add	r0, sp, #20
	add	r0, r0, r8, lsl #2
	bl	uECC_vli_set(PLT)
	cmp	r5, #0
	it	lt
	movlt	r7, #1
	bge	.L141
	b	.L135
.L149:
	cmp	r1, r2
	ite	cs
	movcs	ip, #0
	movcc	ip, #1
.L137:
	str	r2, [lr, r0]
	adds	r3, r3, #1
	sxtb	r3, r3
	mov	r2, r3
	cmp	r3, r4
	bge	.L148
.L138:
	lsls	r0, r3, #2
	ldr	r1, [fp, r3, lsl #2]
	add	r5, sp, #152
	add	r2, r5, r2, lsl #2
	ldr	r2, [r2, #-132]
	add	r2, r2, ip
	subs	r2, r1, r2
	cmp	r1, r2
	bne	.L149
	b	.L137
.L148:
	ldr	r5, [sp]
.L140:
	cmp	r7, ip
	ite	ne
	movne	r7, #0
	moveq	r7, #1
	mov	r1, r6
	add	r0, sp, #20
	bl	uECC_vli_rshift1(PLT)
	add	r3, sp, #152
	add	r3, r3, r6, lsl #2
	ldr	r2, [r3, #-132]
	ldr	r3, [r9, #-132]
	orr	r3, r3, r2, lsl #31
	str	r3, [r9, #-132]
	mov	r1, r6
	mov	r0, r10
	bl	uECC_vli_rshift1(PLT)
	subs	r5, r5, #1
	sxth	r5, r5
	cmp	r5, #-1
	beq	.L146
.L136:
	cmp	r6, #0
	it	le
	movle	ip, r8
	ble	.L140
	add	r3, sp, #152
	add	r3, r3, r7, lsl #2
	ldr	fp, [r3, #-140]
	eor	r3, r7, #1
	add	r2, sp, #152
	add	r3, r2, r3, lsl #2
	ldr	lr, [r3, #-140]
	mov	r3, r8
	mov	ip, r8
	mov	r2, r8
	str	r5, [sp]
	b	.L138
.L146:
	ldr	fp, [sp, #4]
.L135:
	add	r3, sp, #152
	add	r7, r3, r7, lsl #2
	mov	r2, r6
	ldr	r1, [r7, #-140]
	mov	r0, fp
	bl	uECC_vli_set(PLT)
	ldr	r2, .L151+8
.LPIC9:
	add	r2, pc
	ldr	r3, .L151+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #148]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L150
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L150:
	bl	__stack_chk_fail(PLT)
.L152:
	.align	2
.L151:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	1
	.global	uECC_vli_modMult
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #76
	mov	r5, r0
	mov	r6, r3
	ldrsb	r7, [sp, #96]
	ldr	r0, .L157
.LPIC11:
	add	r0, pc
	ldr	r3, .L157+4
	ldr	r3, [r0, r3]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	mov	r3, r7
	add	r4, sp, #4
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	mov	r3, r7
	mov	r2, r6
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_mmod(PLT)
	ldr	r2, .L157+8
.LPIC12:
	add	r2, pc
	ldr	r3, .L157+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L156
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L156:
	bl	__stack_chk_fail(PLT)
.L158:
	.align	2
.L157:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	1
	.global	uECC_vli_modMult_fast
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #72
	mov	r6, r0
	mov	r5, r3
	ldr	r0, .L163
.LPIC13:
	add	r0, pc
	ldr	r3, .L163+4
	ldr	r3, [r0, r3]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldrsb	r3, [r5]
	add	r4, sp, #4
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r4
	mov	r0, r6
	blx	r3
	ldr	r2, .L163+8
.LPIC14:
	add	r2, pc
	ldr	r3, .L163+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L162
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, pc}
.L162:
	bl	__stack_chk_fail(PLT)
.L164:
	.align	2
.L163:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modSquare_fast, %function
uECC_vli_modSquare_fast:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r3, r2
	mov	r2, r1
	bl	uECC_vli_modMult_fast(PLT)
	pop	{r3, pc}
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	1
	.global	double_jacobian_default
	.syntax unified
	.thumb
	.thumb_func
	.type	double_jacobian_default, %function
double_jacobian_default:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #80
	mov	r5, r0
	mov	r8, r1
	mov	r4, r2
	mov	r7, r3
	ldr	r2, .L175
.LPIC16:
	add	r2, pc
	ldr	r3, .L175+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #76]
	mov	r3, #0
	ldrsb	r6, [r7]
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L173
.L167:
	ldr	r2, .L175+8
.LPIC15:
	add	r2, pc
	ldr	r3, .L175+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #76]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L174
	add	sp, sp, #80
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L173:
	mov	r2, r7
	mov	r1, r8
	add	r9, sp, #12
	mov	r0, r9
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r7
	mov	r2, r9
	mov	r1, r5
	add	r0, sp, #44
	bl	uECC_vli_modMult_fast(PLT)
	mov	r2, r7
	mov	r1, r9
	mov	r0, r9
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r7
	mov	r2, r4
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
	mov	r2, r7
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSquare_fast(PLT)
	add	r9, r7, #4
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r4
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modAdd(PLT)
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r4
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modAdd(PLT)
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r4
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	mov	r3, r7
	mov	r2, r4
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r5
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_modAdd(PLT)
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r4
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modAdd(PLT)
	movs	r1, #0
	mov	r0, r5
	bl	uECC_vli_testBit(PLT)
	cmp	r0, #0
	beq	.L169
	mov	r3, r6
	mov	r2, r9
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_add(PLT)
	mov	r10, r0
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_rshift1(PLT)
	add	r3, r6, #1073741824
	subs	r3, r3, #1
	ldr	r2, [r5, r3, lsl #2]
	orr	r2, r2, r10, lsl #31
	str	r2, [r5, r3, lsl #2]
.L170:
	mov	r2, r7
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_modSquare_fast(PLT)
	str	r6, [sp]
	mov	r3, r9
	add	r10, sp, #44
	mov	r2, r10
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r10
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	str	r6, [sp]
	mov	r3, r9
	mov	r2, r4
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modSub(PLT)
	mov	r3, r7
	mov	r2, r10
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	str	r6, [sp]
	mov	r3, r9
	add	r7, sp, #12
	mov	r2, r7
	mov	r1, r5
	mov	r0, r7
	bl	uECC_vli_modSub(PLT)
	mov	r2, r6
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_set(PLT)
	mov	r2, r6
	mov	r1, r8
	mov	r0, r4
	bl	uECC_vli_set(PLT)
	mov	r2, r6
	mov	r1, r7
	mov	r0, r8
	bl	uECC_vli_set(PLT)
	b	.L167
.L169:
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_rshift1(PLT)
	b	.L170
.L174:
	bl	__stack_chk_fail(PLT)
.L176:
	.align	2
.L175:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.size	double_jacobian_default, .-double_jacobian_default
	.align	1
	.global	x_side_default
	.syntax unified
	.thumb
	.thumb_func
	.type	x_side_default, %function
x_side_default:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #48
	mov	r4, r0
	mov	r7, r1
	mov	r6, r2
	ldr	r5, .L181
.LPIC17:
	add	r5, pc
	ldr	r3, .L181+4
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	movs	r5, #0
	str	r5, [sp, #16]
	str	r5, [sp, #20]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	r5, [sp, #32]
	str	r5, [sp, #36]
	str	r5, [sp, #40]
	movs	r3, #3
	str	r3, [sp, #12]
	mov	r5, r2
	ldrsb	r8, [r5], #4
	bl	uECC_vli_modSquare_fast(PLT)
	str	r8, [sp]
	mov	r3, r5
	add	r2, sp, #12
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	mov	r3, r6
	mov	r2, r7
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	str	r8, [sp]
	mov	r3, r5
	add	r2, r6, #132
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modAdd(PLT)
	ldr	r2, .L181+8
.LPIC18:
	add	r2, pc
	ldr	r3, .L181+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L180
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L180:
	bl	__stack_chk_fail(PLT)
.L182:
	.align	2
.L181:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.size	x_side_default, .-x_side_default
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_addC, %function
XYcZ_addC:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #124
	mov	r8, r0
	mov	r6, r1
	mov	r7, r2
	mov	r10, r3
	ldr	fp, [sp, #160]
	ldr	r2, .L187
.LPIC19:
	add	r2, pc
	ldr	r3, .L187+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #116]
	mov	r3, #0
	mov	r4, fp
	ldrsb	r5, [r4], #4
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r0
	mov	r1, r7
	add	r9, sp, #20
	mov	r0, r9
	bl	uECC_vli_modSub(PLT)
	mov	r2, fp
	mov	r1, r9
	mov	r0, r9
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, fp
	mov	r2, r9
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, fp
	mov	r2, r9
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_modMult_fast(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r6
	mov	r1, r10
	mov	r0, r9
	bl	uECC_vli_modAdd(PLT)
	str	r5, [sp]
	mov	r3, r4
	str	r6, [sp, #12]
	mov	r2, r6
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modSub(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r8
	mov	r1, r7
	add	r6, sp, #52
	mov	r0, r6
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r6
	ldr	r1, [sp, #12]
	mov	r0, r1
	bl	uECC_vli_modMult_fast(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r7
	mov	r1, r8
	mov	r0, r6
	bl	uECC_vli_modAdd(PLT)
	mov	r2, fp
	mov	r1, r10
	mov	r0, r7
	bl	uECC_vli_modSquare_fast(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r6
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_modSub(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r7
	mov	r1, r8
	add	r7, sp, #84
	mov	r0, r7
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r7
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modMult_fast(PLT)
	str	r5, [sp]
	mov	r3, r4
	ldr	r2, [sp, #12]
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modSub(PLT)
	mov	r2, fp
	mov	r1, r9
	mov	r0, r7
	bl	uECC_vli_modSquare_fast(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r6
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_modSub(PLT)
	str	r5, [sp]
	mov	r3, r4
	mov	r2, r8
	mov	r1, r7
	mov	r0, r6
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r9
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modMult_fast(PLT)
	str	r5, [sp]
	mov	r3, r4
	ldr	r2, [sp, #12]
	mov	r1, r6
	mov	r0, r2
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	uECC_vli_set(PLT)
	ldr	r2, .L187+8
.LPIC20:
	add	r2, pc
	ldr	r3, .L187+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L186
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L186:
	bl	__stack_chk_fail(PLT)
.L188:
	.align	2
.L187:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+4)
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.global	uECC_vli_modInv
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #136
	mov	r9, r0
	mov	r5, r1
	mov	r8, r2
	mov	r4, r3
	ldr	r2, .L209
.LPIC22:
	add	r2, pc
	ldr	r3, .L209+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_isZero(PLT)
	cbnz	r0, .L202
	mov	r2, r4
	mov	r1, r5
	add	r0, sp, #4
	bl	uECC_vli_set(PLT)
	mov	r2, r4
	mov	r1, r8
	add	r0, sp, #36
	bl	uECC_vli_set(PLT)
	mov	r1, r4
	add	r0, sp, #68
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [sp, #68]
	mov	r1, r4
	add	r0, sp, #100
	bl	uECC_vli_clear(PLT)
	add	r6, sp, #36
	add	r5, sp, #4
	add	r7, sp, #68
	b	.L192
.L202:
	mov	r1, r4
	mov	r0, r9
	bl	uECC_vli_clear(PLT)
	b	.L189
.L204:
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_rshift1(PLT)
	mov	r2, r4
	mov	r1, r8
	mov	r0, r7
	bl	vli_modInv_update(PLT)
.L192:
	mov	r2, r4
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r2, r0
	cmp	r0, #0
	beq	.L203
	ldr	r3, [sp, #4]
	tst	r3, #1
	beq	.L204
	ldr	r3, [sp, #36]
	tst	r3, #1
	beq	.L205
	cmp	r2, #0
	ble	.L196
	mov	r3, r4
	mov	r2, r6
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_sub(PLT)
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_rshift1(PLT)
	mov	r2, r4
	add	r1, sp, #100
	mov	r0, r7
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #0
	blt	.L206
.L197:
	mov	r3, r4
	add	r2, sp, #100
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_sub(PLT)
	mov	r2, r4
	mov	r1, r8
	mov	r0, r7
	bl	vli_modInv_update(PLT)
	b	.L192
.L205:
	mov	r1, r4
	mov	r0, r6
	bl	uECC_vli_rshift1(PLT)
	mov	r2, r4
	mov	r1, r8
	add	r0, sp, #100
	bl	vli_modInv_update(PLT)
	b	.L192
.L206:
	mov	r3, r4
	mov	r2, r8
	add	r0, sp, #68
	mov	r1, r0
	bl	uECC_vli_add(PLT)
	b	.L197
.L196:
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	mov	r1, r4
	mov	r0, r6
	bl	uECC_vli_rshift1(PLT)
	mov	r2, r4
	mov	r1, r7
	add	r0, sp, #100
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #0
	blt	.L207
.L198:
	mov	r3, r4
	mov	r2, r7
	add	r10, sp, #100
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_sub(PLT)
	mov	r2, r4
	mov	r1, r8
	mov	r0, r10
	bl	vli_modInv_update(PLT)
	b	.L192
.L207:
	mov	r3, r4
	mov	r2, r8
	add	r0, sp, #100
	mov	r1, r0
	bl	uECC_vli_add(PLT)
	b	.L198
.L203:
	mov	r2, r4
	add	r1, sp, #68
	mov	r0, r9
	bl	uECC_vli_set(PLT)
.L189:
	ldr	r2, .L209+8
.LPIC21:
	add	r2, pc
	ldr	r3, .L209+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L208
	add	sp, sp, #136
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L208:
	bl	__stack_chk_fail(PLT)
.L210:
	.align	2
.L209:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	1
	.global	uECC_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_secp256r1, %function
uECC_secp256r1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L212
.LPIC23:
	add	r0, pc
	bx	lr
.L213:
	.align	2
.L212:
	.word	.LANCHOR1-(.LPIC23+4)
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	1
	.global	EccPoint_isZero
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_isZero, %function
EccPoint_isZero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, #1
	sxtb	r1, r1
	bl	uECC_vli_isZero(PLT)
	pop	{r3, pc}
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	1
	.global	apply_z
	.syntax unified
	.thumb
	.thumb_func
	.type	apply_z, %function
apply_z:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #40
	mov	r8, r0
	mov	r6, r1
	mov	r7, r2
	mov	r5, r3
	ldr	r2, .L220
.LPIC24:
	add	r2, pc
	ldr	r3, .L220+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	mov	r2, r5
	mov	r1, r7
	add	r4, sp, #4
	mov	r0, r4
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r5
	mov	r2, r4
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r5
	mov	r2, r7
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r2, .L220+8
.LPIC25:
	add	r2, pc
	ldr	r3, .L220+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L219
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L219:
	bl	__stack_chk_fail(PLT)
.L221:
	.align	2
.L220:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.size	apply_z, .-apply_z
	.align	1
	.global	XYcZ_add
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_add, %function
XYcZ_add:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	mov	r9, r0
	mov	r10, r1
	mov	r5, r2
	mov	r6, r3
	ldr	fp, [sp, #88]
	ldr	r2, .L226
.LPIC26:
	add	r2, pc
	ldr	r3, .L226+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	mov	r7, fp
	ldrsb	r8, [r7], #4
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r0
	mov	r1, r5
	add	r4, sp, #12
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	mov	r2, fp
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, fp
	mov	r2, r4
	mov	r1, r9
	mov	r0, r9
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, fp
	mov	r2, r4
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r10
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modSub(PLT)
	mov	r2, fp
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_modSquare_fast(PLT)
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r9
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r9
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modMult_fast(PLT)
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r4
	mov	r1, r9
	mov	r0, r5
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modMult_fast(PLT)
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r10
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modSub(PLT)
	mov	r2, r8
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_set(PLT)
	ldr	r2, .L226+8
.LPIC27:
	add	r2, pc
	ldr	r3, .L226+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L225
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L225:
	bl	__stack_chk_fail(PLT)
.L227:
	.align	2
.L226:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+4)
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.global	EccPoint_mult
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_mult, %function
EccPoint_mult:
	@ args = 8, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #204
	str	r0, [sp, #24]
	mov	r6, r1
	str	r1, [sp, #28]
	str	r2, [sp, #8]
	mov	r5, r3
	ldr	r7, [sp, #244]
	ldr	r2, .L237
.LPIC29:
	add	r2, pc
	ldr	r3, .L237+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #196]
	mov	r3, #0
	ldrsb	r3, [r7]
	mov	r4, r3
	str	r3, [sp, #12]
	mov	r2, r3
	add	r0, sp, #100
	bl	uECC_vli_set(PLT)
	mov	r2, r4
	lsls	r0, r4, #2
	str	r0, [sp, #16]
	mov	r3, r6
	add	r3, r3, r0
	str	r3, [sp, #20]
	mov	r1, r3
	add	r0, sp, #164
	bl	uECC_vli_set(PLT)
	ldrsb	r4, [r7]
	cmp	r5, #0
	beq	.L229
	mov	r2, r4
	mov	r1, r5
	add	r0, sp, #36
	bl	uECC_vli_set(PLT)
.L230:
	mov	r2, r4
	add	r6, sp, #100
	mov	r1, r6
	add	r5, sp, #68
	mov	r0, r5
	bl	uECC_vli_set(PLT)
	mov	r2, r4
	add	r8, sp, #164
	mov	r1, r8
	add	r10, sp, #132
	mov	r0, r10
	bl	uECC_vli_set(PLT)
	mov	r3, r7
	add	r4, sp, #36
	mov	r2, r4
	mov	r1, r8
	mov	r0, r6
	bl	apply_z(PLT)
	mov	r3, r7
	mov	r2, r4
	mov	r1, r8
	mov	r0, r6
	ldr	r6, [r7, #164]
	blx	r6
	mov	r3, r7
	mov	r2, r4
	mov	r1, r10
	mov	r0, r5
	bl	apply_z(PLT)
	ldrsh	r6, [sp, #240]
	subs	r6, r6, #2
	sxth	r6, r6
	cmp	r6, #0
	ble	.L231
	mov	fp, r5
.L232:
	mov	r1, r6
	ldr	r0, [sp, #8]
	bl	uECC_vli_testBit(PLT)
	cmp	r0, #0
	ite	ne
	movne	r5, #1
	moveq	r5, #0
	lsl	r5, r5, #5
	add	r9, fp, r5
	add	r5, r5, r10
	ite	eq
	moveq	r4, #1
	movne	r4, #0
	lsls	r4, r4, #5
	add	r8, fp, r4
	add	r4, r4, r10
	str	r7, [sp]
	mov	r3, r4
	mov	r2, r8
	mov	r1, r5
	mov	r0, r9
	bl	XYcZ_addC(PLT)
	str	r7, [sp]
	mov	r3, r5
	mov	r2, r9
	mov	r1, r4
	mov	r0, r8
	bl	XYcZ_add(PLT)
	subs	r6, r6, #1
	sxth	r6, r6
	cmp	r6, #0
	bne	.L232
.L231:
	movs	r1, #0
	ldr	r0, [sp, #8]
	bl	uECC_vli_testBit(PLT)
	cmp	r0, #0
	ite	ne
	movne	r5, #1
	moveq	r5, #0
	lsl	r5, r5, #5
	add	r6, sp, #68
	add	r10, r6, r5
	add	r8, sp, #132
	add	r5, r5, r8
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	lsls	r3, r3, #5
	adds	r2, r6, r3
	add	fp, r8, r3
	str	r7, [sp]
	mov	r3, fp
	str	r2, [sp, #8]
	mov	r1, r5
	mov	r0, r10
	bl	XYcZ_addC(PLT)
	add	r9, r7, #4
	ldr	r3, [sp, #12]
	str	r3, [sp]
	mov	r3, r9
	mov	r2, r6
	add	r1, sp, #100
	add	r4, sp, #36
	mov	r0, r4
	bl	uECC_vli_modSub(PLT)
	mov	r3, r7
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r7
	ldr	r2, [sp, #28]
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [sp, #12]
	mov	r2, r9
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modInv(PLT)
	mov	r3, r7
	ldr	r2, [sp, #20]
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r7
	mov	r2, r10
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	str	r7, [sp]
	mov	r3, r5
	mov	r2, r10
	mov	r1, fp
	ldr	r0, [sp, #8]
	bl	XYcZ_add(PLT)
	mov	r3, r7
	mov	r2, r4
	mov	r1, r8
	mov	r0, r6
	bl	apply_z(PLT)
	ldr	r4, [sp, #12]
	mov	r2, r4
	mov	r1, r6
	ldr	r5, [sp, #24]
	mov	r0, r5
	bl	uECC_vli_set(PLT)
	mov	r2, r4
	mov	r1, r8
	mov	r0, r5
	ldr	r3, [sp, #16]
	add	r0, r0, r3
	bl	uECC_vli_set(PLT)
	ldr	r2, .L237+8
.LPIC28:
	add	r2, pc
	ldr	r3, .L237+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #196]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L236
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L229:
	mov	r1, r4
	add	r0, sp, #36
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [sp, #36]
	b	.L230
.L236:
	bl	__stack_chk_fail(PLT)
.L238:
	.align	2
.L237:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
	.size	EccPoint_mult, .-EccPoint_mult
	.align	1
	.global	regularize_k
	.syntax unified
	.thumb
	.thumb_func
	.type	regularize_k, %function
regularize_k:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	mov	r7, r2
	ldrsh	r8, [r3, #2]
	add	r5, r8, #62
	adds	r2, r8, #31
	it	pl
	movpl	r5, r2
	sbfx	r5, r5, #5, #8
	add	r4, r3, #36
	mov	r3, r5
	mov	r2, r4
	mov	r1, r0
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	cbnz	r0, .L241
	cmp	r8, r5, lsl #5
	it	ge
	movge	r8, #0
	bge	.L240
	mov	r1, r8
	mov	r0, r6
	bl	uECC_vli_testBit(PLT)
	subs	r8, r0, #0
	it	ne
	movne	r8, #1
	b	.L240
.L241:
	mov	r8, #1
.L240:
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r7
	bl	uECC_vli_add(PLT)
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
	.size	regularize_k, .-regularize_k
	.align	1
	.global	EccPoint_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #92
	mov	r5, r0
	mov	r0, r1
	mov	r4, r2
	ldr	r2, .L248
.LPIC30:
	add	r2, pc
	ldr	r3, .L248+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #84]
	mov	r3, #0
	add	r1, sp, #20
	str	r1, [sp, #12]
	add	r2, sp, #52
	str	r2, [sp, #16]
	mov	r3, r4
	bl	regularize_k(PLT)
	clz	r3, r0
	lsrs	r3, r3, #5
	add	r2, sp, #88
	add	r2, r2, r3, lsl #2
	str	r4, [sp, #4]
	ldrh	r3, [r4, #2]
	adds	r3, r3, #1
	sxth	r3, r3
	str	r3, [sp]
	movs	r3, #0
	ldr	r2, [r2, #-76]
	add	r1, r4, #68
	mov	r0, r5
	bl	EccPoint_mult(PLT)
	mov	r1, r4
	mov	r0, r5
	bl	EccPoint_isZero(PLT)
	ldr	r2, .L248+8
.LPIC31:
	add	r2, pc
	ldr	r3, .L248+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #84]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L247
	clz	r0, r0
	lsrs	r0, r0, #5
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, pc}
.L247:
	bl	__stack_chk_fail(PLT)
.L249:
	.align	2
.L248:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	1
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
	ble	.L250
	mov	ip, #0
	mov	r3, ip
	subs	r5, r4, #1
.L252:
	subs	r3, r5, r3
	bic	lr, r3, #3
	and	r3, r3, #3
	lsls	r3, r3, #3
	ldr	r1, [r2, lr]
	lsr	r3, r1, r3
	strb	r3, [r0, ip]
	add	ip, ip, #1
	sxtb	ip, ip
	mov	r3, ip
	cmp	ip, r4
	blt	.L252
.L250:
	pop	{r4, r5, pc}
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	1
	.global	uECC_vli_bytesToNative
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	adds	r1, r2, #6
	adds	r3, r2, #3
	it	pl
	movpl	r1, r3
	sbfx	r1, r1, #2, #8
	bl	uECC_vli_clear(PLT)
	cmp	r5, #0
	ble	.L255
	mov	ip, #0
	mov	r3, ip
	subs	r1, r5, #1
.L257:
	subs	r3, r1, r3
	bic	r0, r3, #3
	ldrb	r2, [r6, ip]	@ zero_extendqisi2
	and	r3, r3, #3
	lsls	r3, r3, #3
	lsls	r2, r2, r3
	ldr	r3, [r4, r0]
	orrs	r3, r3, r2
	str	r3, [r4, r0]
	add	ip, ip, #1
	sxtb	ip, ip
	mov	r3, ip
	cmp	ip, r5
	blt	.L257
.L255:
	pop	{r4, r5, r6, pc}
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	1
	.global	uECC_generate_random_int
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L269
.LPIC32:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L264
	mov	r5, r0
	mov	fp, r1
	mov	r7, r2
	mov	r1, r2
	mov	r0, fp
	bl	uECC_vli_numBits(PLT)
	lsl	r9, r7, #2
	sub	r6, r9, #4
	add	r6, r6, r5
	rsb	r0, r0, r7, lsl #5
	sxth	r0, r0
	mov	r8, #-1
	lsr	r8, r8, r0
	movs	r4, #64
	ldr	r10, .L269+4
.LPIC33:
	add	r10, pc
	b	.L263
.L262:
	subs	r4, r4, #1
	beq	.L268
.L263:
	ldr	r3, [r10]
	mov	r1, r9
	mov	r0, r5
	blx	r3
	mov	r3, r0
	cbz	r0, .L260
	ldr	r3, [r6]
	and	r3, r3, r8
	str	r3, [r6]
	mov	r1, r7
	mov	r0, r5
	bl	uECC_vli_isZero(PLT)
	cmp	r0, #0
	bne	.L262
	mov	r2, r7
	mov	r1, r5
	mov	r0, fp
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	bne	.L262
	movs	r3, #1
.L260:
	mov	r0, r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L268:
	movs	r3, #0
	b	.L260
.L264:
	movs	r3, #0
	b	.L260
.L270:
	.align	2
.L269:
	.word	.LANCHOR0-(.LPIC32+4)
	.word	.LANCHOR0-(.LPIC33+4)
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.global	uECC_valid_point
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_valid_point, %function
uECC_valid_point:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #72
	mov	r7, r0
	mov	r4, r1
	ldr	r2, .L280
.LPIC35:
	add	r2, pc
	ldr	r3, .L280+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldrsb	r8, [r1]
	bl	EccPoint_isZero(PLT)
	cbnz	r0, .L274
	adds	r5, r4, #4
	mov	r2, r8
	mov	r1, r7
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L275
	add	r6, r7, r8, lsl #2
	mov	r2, r8
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L276
	mov	r2, r4
	mov	r1, r6
	add	r5, sp, #4
	mov	r0, r5
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r4, #168]
	mov	r2, r4
	mov	r1, r7
	add	r4, sp, #36
	mov	r0, r4
	blx	r3
	mov	r2, r8
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_equal(PLT)
	cmp	r0, #0
	ite	ne
	mvnne	r0, #2
	moveq	r0, #0
.L271:
	ldr	r2, .L280+8
.LPIC34:
	add	r2, pc
	ldr	r3, .L280+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L279
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L274:
	mov	r0, #-1
	b	.L271
.L275:
	mvn	r0, #1
	b	.L271
.L276:
	mvn	r0, #1
	b	.L271
.L279:
	bl	__stack_chk_fail(PLT)
.L281:
	.align	2
.L280:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+4)
	.size	uECC_valid_point, .-uECC_valid_point
	.align	1
	.global	uECC_valid_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #72
	mov	r8, r0
	mov	r5, r1
	ldr	r2, .L288
.LPIC37:
	add	r2, pc
	ldr	r3, .L288+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldrsb	r7, [r1, #1]
	mov	r2, r7
	mov	r1, r0
	add	r4, sp, #4
	mov	r0, r4
	bl	uECC_vli_bytesToNative(PLT)
	mov	r6, r5
	ldrsb	r0, [r6], #68
	mov	r2, r7
	add	r1, r8, r7
	add	r0, r4, r0, lsl #2
	bl	uECC_vli_bytesToNative(PLT)
	movs	r2, #16
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_cmp_unsafe(PLT)
	cbz	r0, .L285
	mov	r1, r5
	mov	r0, r4
	bl	uECC_valid_point(PLT)
.L282:
	ldr	r2, .L288+8
.LPIC36:
	add	r2, pc
	ldr	r3, .L288+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L287
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L285:
	mvn	r0, #3
	b	.L282
.L287:
	bl	__stack_chk_fail(PLT)
.L289:
	.align	2
.L288:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC37+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	1
	.global	uECC_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #108
	mov	r7, r1
	mov	r5, r2
	ldr	r2, .L300
.LPIC39:
	add	r2, pc
	ldr	r3, .L300+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	ldrsh	r4, [r5, #2]
	add	r2, r4, #14
	adds	r3, r4, #7
	it	pl
	movpl	r2, r3
	asrs	r2, r2, #3
	mov	r1, r0
	add	r6, sp, #4
	mov	r0, r6
	bl	uECC_vli_bytesToNative(PLT)
	add	r3, r4, #62
	adds	r4, r4, #31
	it	mi
	movmi	r4, r3
	sbfx	r4, r4, #5, #8
	mov	r1, r4
	mov	r0, r6
	bl	uECC_vli_isZero(PLT)
	cbnz	r0, .L293
	mov	r2, r4
	mov	r1, r6
	add	r0, r5, #36
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	it	ne
	movne	r0, #0
	beq	.L297
.L290:
	ldr	r2, .L300+8
.LPIC38:
	add	r2, pc
	ldr	r3, .L300+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L298
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L297:
	mov	r2, r5
	mov	r1, r6
	add	r0, sp, #36
	bl	EccPoint_compute_public_key(PLT)
	cbnz	r0, .L299
	movs	r0, #0
	b	.L290
.L299:
	add	r4, sp, #36
	mov	r2, r4
	ldrsb	r1, [r5, #1]
	mov	r0, r7
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r1, [r5, #1]
	ldrsb	r2, [r5]
	add	r2, r4, r2, lsl #2
	adds	r0, r7, r1
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r0, #1
	b	.L290
.L293:
	movs	r0, #0
	b	.L290
.L298:
	bl	__stack_chk_fail(PLT)
.L301:
	.align	2
.L300:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_rng_function, %object
	.size	g_rng_function, 4
g_rng_function:
	.word	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
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
