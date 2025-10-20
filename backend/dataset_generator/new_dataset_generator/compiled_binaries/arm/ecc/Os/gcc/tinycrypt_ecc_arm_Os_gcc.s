	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tinycrypt_ecc.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_add, %function
uECC_vli_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, #0
	mov	r6, r0
	mov	r0, r4
.L2:
	sxtb	r5, r4
	cmp	r3, r5
	bgt	.L3
	pop	{r4, r5, r6, r7, pc}
.L3:
	ldr	r7, [r1, r4, lsl #2]
	ldr	r5, [r2, r4, lsl #2]
	add	r5, r5, r7
	add	r5, r5, r0
	str	r5, [r6, r4, lsl #2]
	cmp	r7, r5
	add	r4, r4, #1
	it	ne
	movne	r0, #0
	it	hi
	orrhi	r0, r0, #1
	b	.L2
	.size	uECC_vli_add, .-uECC_vli_add
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
	movs	r3, #0
.L5:
	cmp	r0, r1
	bcc	.L6
	bx	lr
.L6:
	ldr	r2, [r1, #-4]!
	orr	r3, r3, r2, lsr #1
	str	r3, [r1]
	lsls	r3, r2, #31
	b	.L5
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_modInv_update, %function
vli_modInv_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r2
	ands	r6, r3, #1
	beq	.L8
	mov	r3, r2
	mov	r2, r1
	mov	r1, r0
	bl	uECC_vli_add(PLT)
	mov	r6, r0
.L8:
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_rshift1(PLT)
	cbz	r6, .L7
	add	r2, r4, #1073741824
	subs	r2, r2, #1
	ldr	r3, [r5, r2, lsl #2]
	orr	r3, r3, #-2147483648
	str	r3, [r5, r2, lsl #2]
.L7:
	pop	{r4, r5, r6, pc}
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mult, %function
uECC_vli_mult:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, #0
	mov	r5, ip
	mov	r4, ip
	str	r2, [sp]
.L17:
	sxtb	r9, ip
	cmp	r3, r9
	bgt	.L21
	mov	r6, #-1
	mov	r8, #0
	add	r6, r6, r3, lsl #1
	str	r6, [sp, #4]
.L22:
	uxtab	lr, r3, r8
	ldr	r2, [sp, #4]
	uxtb	r6, r8
	sxtb	lr, lr
	cmp	lr, r2
	blt	.L27
	add	r0, r0, r3, lsl #3
	str	r4, [r0, #-4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L21:
	ldr	r2, [sp]
	mov	lr, #0
	mov	r8, lr
	add	r10, r2, ip, lsl #2
.L20:
	ldr	r7, [r1, lr, lsl #2]
	add	lr, lr, #1
	ldr	r6, [r10], #-4
	mov	fp, #0
	umull	r6, r7, r6, r7
	adds	r6, r6, r4
	adcs	r7, r7, r5
	mov	r4, r6
	it	cs
	movcs	fp, #1
	sxtb	r6, lr
	add	r8, r8, fp
	mov	r5, r7
	cmp	r6, r9
	ble	.L20
	str	r4, [r0, ip, lsl #2]
	mov	r5, r8
	add	ip, ip, #1
	mov	r4, r7
	b	.L17
.L27:
	ldr	r2, [sp]
	adds	r6, r6, #1
	mov	r9, r5
	movs	r5, #0
	sxtb	r6, r6
	add	r10, r2, lr, lsl #2
.L23:
	sxtb	r7, r6
	cmp	r3, r7
	bgt	.L26
	str	r4, [r0, lr, lsl #2]
	add	r8, r8, #1
	mov	r4, r9
	b	.L22
.L26:
	mvn	r2, #3
	mov	fp, #0
	mul	r7, r2, r6
	ldr	r2, [r1, r6, lsl #2]
	adds	r6, r6, #1
	ldr	r7, [r10, r7]
	umull	r7, ip, r7, r2
	adds	r7, r7, r4
	adcs	ip, ip, r9
	mov	r4, r7
	it	cs
	movcs	fp, #1
	mov	r9, ip
	add	r5, r5, fp
	b	.L23
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	ldr	r3, .L30
.LPIC0:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r3, .L33
.LPIC1:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L34:
	.align	2
.L33:
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
	adds	r0, r3, #7
	it	mi
	addmi	r0, r3, #14
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
	movs	r3, #0
	push	{r4, lr}
	mov	r4, r3
.L39:
	sxtb	r2, r3
	cmp	r1, r2
	bgt	.L40
	pop	{r4, pc}
.L40:
	str	r4, [r0, r3, lsl #2]
	adds	r3, r3, #1
	b	.L39
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
	movs	r3, #0
	push	{r4, lr}
	mov	r2, r3
.L42:
	sxtb	r4, r3
	cmp	r1, r4
	bgt	.L43
	clz	r0, r2
	lsrs	r0, r0, #5
	pop	{r4, pc}
.L43:
	ldr	r4, [r0, r3, lsl #2]
	adds	r3, r3, #1
	orrs	r2, r2, r4
	b	.L42
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
	movs	r3, #1
	and	r1, r1, #31
	ldr	r0, [r0, r2, lsl #2]
	lsls	r3, r3, r1
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
	subs	r3, r1, #1
	push	{r4, lr}
	adds	r4, r0, #4
	sxtb	r3, r3
.L47:
	lsls	r2, r3, #24
	bmi	.L46
	subs	r2, r3, #1
	ldr	r1, [r4, r2, lsl #2]
	cbz	r1, .L49
.L46:
	adds	r3, r3, #1
	sxtb	r3, r3
	cbz	r3, .L50
	add	r2, r3, #1073741824
	subs	r2, r2, #1
	ldr	r2, [r0, r2, lsl #2]
	clz	r2, r2
	rsb	r0, r2, r3, lsl #5
.L48:
	pop	{r4, pc}
.L49:
	mov	r3, r2
	b	.L47
.L50:
	mov	r0, r3
	b	.L48
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
	movs	r3, #0
	push	{r4, lr}
.L53:
	sxtb	r4, r3
	cmp	r2, r4
	bgt	.L54
	pop	{r4, pc}
.L54:
	ldr	r4, [r1, r3, lsl #2]
	str	r4, [r0, r3, lsl #2]
	adds	r3, r3, #1
	b	.L53
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
	subs	r2, r2, #1
	push	{r4, lr}
	sxtb	r2, r2
.L56:
	lsls	r3, r2, #24
	bpl	.L58
	movs	r0, #0
.L57:
	pop	{r4, pc}
.L58:
	ldr	r4, [r0, r2, lsl #2]
	ldr	r3, [r1, r2, lsl #2]
	cmp	r4, r3
	bhi	.L59
	add	r2, r2, #-1
	bcs	.L56
	mov	r0, #-1
	b	.L57
.L59:
	movs	r0, #1
	b	.L57
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
	subs	r2, r2, #1
	movs	r3, #0
	push	{r4, r5, lr}
	sxtb	r2, r2
.L62:
	lsls	r4, r2, #24
	bpl	.L63
	subs	r0, r3, #0
	it	ne
	movne	r0, #1
	pop	{r4, r5, pc}
.L63:
	ldr	r4, [r0, r2, lsl #2]
	ldr	r5, [r1, r2, lsl #2]
	subs	r2, r2, #1
	eors	r4, r4, r5
	orrs	r3, r3, r4
	b	.L62
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
	muls	r0, r2, r0
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
	push	{r4, r5, r6, r7, lr}
	movs	r4, #0
	mov	r6, r0
	mov	ip, r3
	mov	r0, r4
.L66:
	sxtb	r5, r4
	cmp	r5, ip
	blt	.L67
	pop	{r4, r5, r6, r7, pc}
.L67:
	ldr	r7, [r1, r4, lsl #2]
	ldr	r3, [r2, r4, lsl #2]
	subs	r5, r7, r0
	subs	r5, r5, r3
	str	r5, [r6, r4, lsl #2]
	cmp	r7, r5
	add	r4, r4, #1
	it	ne
	movne	r0, #0
	it	cc
	orrcc	r0, r0, #1
	b	.L66
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
	ldr	r2, .L77
	ldr	r3, .L77+4
.LPIC6:
	add	r2, pc
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	sub	sp, sp, #44
	mov	r6, r0
	ldr	r3, [r2, r3]
	movs	r2, #8
	movs	r7, #0
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	bl	uECC_vli_set(PLT)
	ldr	r3, [r1, #44]
	str	r3, [sp, #16]
	ldr	r3, [r1, #48]
	str	r3, [sp, #20]
	ldr	r3, [r1, #52]
	str	r3, [sp, #24]
	ldr	r3, [r1, #56]
	str	r3, [sp, #28]
	ldr	r3, [r1, #60]
	str	r3, [sp, #32]
	mov	r3, r2
	add	r2, sp, #4
	strd	r7, r7, [sp, #8]
	mov	r1, r2
	mov	r0, r2
	str	r7, [sp, #4]
	bl	uECC_vli_add(PLT)
	mov	r1, r6
	mov	r5, r0
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	ldr	r1, [r4, #48]
	str	r1, [sp, #16]
	add	r5, r5, r0
	ldr	r1, [r4, #52]
	mov	r0, r2
	str	r1, [sp, #20]
	ldr	r1, [r4, #56]
	str	r1, [sp, #24]
	ldr	r1, [r4, #60]
	strd	r1, r7, [sp, #28]
	mov	r1, r2
	bl	uECC_vli_add(PLT)
	mov	r1, r6
	add	r5, r5, r0
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	add	r5, r5, r0
	ldr	r0, [r4, #32]
	str	r0, [sp, #4]
	ldr	r0, [r4, #36]
	str	r0, [sp, #8]
	ldr	r0, [r4, #40]
	str	r0, [sp, #12]
	ldr	r0, [r4, #56]
	str	r0, [sp, #28]
	ldr	r0, [r4, #60]
	str	r0, [sp, #32]
	mov	r0, r6
	strd	r7, r7, [sp, #20]
	str	r7, [sp, #16]
	bl	uECC_vli_add(PLT)
	add	r5, r5, r0
	ldr	r0, [r4, #36]
	str	r0, [sp, #4]
	ldr	r0, [r4, #40]
	str	r0, [sp, #8]
	ldr	r0, [r4, #44]
	str	r0, [sp, #12]
	ldr	r0, [r4, #56]
	ldr	ip, [r4, #52]
	str	r0, [sp, #20]
	ldr	r0, [r4, #60]
	strd	r0, ip, [sp, #24]
	ldr	r0, [r4, #32]
	str	r0, [sp, #32]
	mov	r0, r6
	str	ip, [sp, #16]
	bl	uECC_vli_add(PLT)
	add	r5, r5, r0
	ldr	r0, [r4, #44]
	str	r0, [sp, #4]
	ldr	r0, [r4, #48]
	str	r0, [sp, #8]
	ldr	r0, [r4, #52]
	str	r0, [sp, #12]
	ldr	r0, [r4, #32]
	str	r0, [sp, #28]
	ldr	r0, [r4, #40]
	str	r0, [sp, #32]
	mov	r0, r6
	strd	r7, r7, [sp, #20]
	str	r7, [sp, #16]
	bl	uECC_vli_sub(PLT)
	ldr	r3, [r4, #48]
	subs	r5, r5, r0
	str	r3, [sp, #4]
	mov	r0, r6
	ldr	r3, [r4, #52]
	str	r3, [sp, #8]
	ldr	r3, [r4, #56]
	str	r3, [sp, #12]
	ldr	r3, [r4, #60]
	str	r3, [sp, #16]
	ldr	r3, [r4, #36]
	str	r3, [sp, #28]
	ldr	r3, [r4, #44]
	str	r3, [sp, #32]
	movs	r3, #8
	bl	uECC_vli_sub(PLT)
	ldr	r3, [r4, #52]
	str	r3, [sp, #4]
	subs	r5, r5, r0
	ldr	r3, [r4, #56]
	mov	r0, r6
	str	r3, [sp, #8]
	ldr	r3, [r4, #60]
	str	r3, [sp, #12]
	ldr	r3, [r4, #32]
	str	r3, [sp, #16]
	ldr	r3, [r4, #36]
	str	r3, [sp, #20]
	ldr	r3, [r4, #40]
	strd	r3, r7, [sp, #24]
	ldr	r3, [r4, #48]
	str	r3, [sp, #32]
	movs	r3, #8
	bl	uECC_vli_sub(PLT)
	ldr	r3, [r4, #56]
	str	r3, [sp, #4]
	subs	r5, r5, r0
	ldr	r3, [r4, #60]
	mov	r0, r6
	strd	r3, r7, [sp, #8]
	ldr	r3, [r4, #36]
	str	r3, [sp, #16]
	ldr	r3, [r4, #40]
	str	r3, [sp, #20]
	ldr	r3, [r4, #44]
	str	r3, [sp, #24]
	ldr	r3, [r4, #52]
	str	r3, [sp, #32]
	movs	r3, #8
	bl	uECC_vli_sub(PLT)
	subs	r4, r5, r0
	bmi	.L76
	ldr	r5, .L77+8
	ldr	r7, .L77+12
.LPIC4:
	add	r5, pc
	adds	r5, r5, #4
.LPIC3:
	add	r7, pc
.L69:
	cbnz	r4, .L71
	movs	r2, #8
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	beq	.L68
.L71:
	movs	r3, #8
	adds	r2, r7, #4
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	subs	r4, r4, r0
	b	.L69
.L76:
	ldr	r2, .L77+16
.LPIC2:
	add	r2, pc
	adds	r2, r2, #4
.L70:
	movs	r3, #8
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
	adds	r4, r4, r0
	bmi	.L70
.L68:
	ldr	r2, .L77+20
	ldr	r3, .L77+4
.LPIC5:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L73
	bl	__stack_chk_fail(PLT)
.L73:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L78:
	.align	2
.L77:
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
	mov	r6, r2
	ldr	r2, .L81
	ldr	r3, .L81+4
	sub	sp, sp, #40
.LPIC7:
	add	r2, pc
	add	r5, sp, #4
	ldr	r3, [r2, r3]
	mov	r2, r1
	mov	r1, r0
	mov	r0, r5
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	mov	r3, r6
	bl	uECC_vli_sub(PLT)
	mov	r1, r6
	mov	r4, r0
	mov	r0, r5
	bl	uECC_vli_isZero(PLT)
	ldr	r2, .L81+8
	ldr	r3, .L81+4
	subs	r4, r4, #0
.LPIC8:
	add	r2, pc
	it	ne
	movne	r4, #1
	lsls	r4, r4, #1
	ldr	r3, [r2, r3]
	cmp	r0, #0
	ite	ne
	rsbne	r0, r4, #0
	rsbeq	r0, r4, #1
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L80
	bl	__stack_chk_fail(PLT)
.L80:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, pc}
.L82:
	.align	2
.L81:
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
	mov	r5, r3
	mov	r4, r0
	ldrsb	r6, [sp, #16]
	mov	r3, r6
	bl	uECC_vli_add(PLT)
	cbnz	r0, .L84
	mov	r2, r6
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	beq	.L83
.L84:
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	uECC_vli_sub(PLT)
.L83:
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
	mov	r5, r3
	mov	r4, r0
	ldrsb	r6, [sp, #16]
	mov	r3, r6
	bl	uECC_vli_sub(PLT)
	cbz	r0, .L86
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	uECC_vli_add(PLT)
.L86:
	pop	{r4, r5, r6, pc}
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.global	uECC_vli_mmod
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r2
	ldr	r2, .L102
	sub	sp, sp, #164
	mov	r5, r3
	ldr	r3, .L102+4
.LPIC10:
	add	r2, pc
	add	r7, sp, #28
	str	r0, [sp, #8]
	mov	r0, r8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #156]
	mov	r3, #0
	add	r3, sp, #92
	strd	r3, r1, [sp, #20]
	mov	r1, r5
	bl	uECC_vli_numBits(PLT)
	rsb	r4, r0, r5, lsl #6
	mov	r0, r7
	sxth	r4, r4
	cmp	r4, #0
	mov	r1, r4
	it	lt
	addlt	r1, r4, #31
	rsbs	r3, r4, #0
	and	r3, r3, #31
	and	r6, r4, #31
	sbfx	r1, r1, #5, #8
	it	pl
	rsbpl	r6, r3, #0
	bl	uECC_vli_clear(PLT)
	cmp	r6, #0
	lsl	r0, r1, #2
	ble	.L90
	movs	r2, #0
	add	r0, r0, r7
	mov	r3, r2
	rsb	lr, r6, #32
.L91:
	cmp	r5, r3
	bhi	.L92
.L93:
	add	r8, r5, #-1
	lsls	r3, r5, #2
	str	r3, [sp, #12]
	add	r3, r7, r5, lsl #2
	str	r3, [sp, #4]
	add	r3, sp, #160
	lsl	r9, r5, #1
	movs	r6, #1
	add	r8, r3, r8, lsl #2
.L94:
	cmp	r4, #0
	bge	.L101
	add	r3, sp, #160
	mov	r2, r5
	add	r6, r3, r6, lsl #2
	ldr	r0, [sp, #8]
	ldr	r1, [r6, #-140]
	bl	uECC_vli_set(PLT)
	ldr	r2, .L102+8
	ldr	r3, .L102+4
.LPIC9:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #156]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L100
	bl	__stack_chk_fail(PLT)
.L92:
	ldr	ip, [r8, r3, lsl #2]
	adds	r3, r3, #1
	lsl	r1, ip, r6
	orrs	r2, r2, r1
	str	r2, [r0], #4
	lsr	r2, ip, lr
	b	.L91
.L90:
	mov	r2, r5
	mov	r1, r8
	add	r0, r0, r7
	bl	uECC_vli_set(PLT)
	b	.L93
.L98:
	ldr	r3, [r10, #-140]
	add	ip, ip, #1
	ldr	r2, [r3, r0, lsl #2]
	add	r3, sp, #160
	add	r3, r3, r0, lsl #2
	ldr	r3, [r3, #-132]
	add	r3, r3, r1
	subs	r3, r2, r3
	ite	cc
	movcc	fp, #1
	movcs	fp, #0
	cmp	r2, r3
	ldr	r2, [lr, #-140]
	it	ne
	movne	r1, fp
	str	r3, [r2, r0, lsl #2]
.L99:
	sxtb	r0, ip
	cmp	r0, r9
	blt	.L98
	subs	r3, r6, r1
	mov	r0, r7
	rsbs	r6, r3, #0
	mov	r1, r5
	adcs	r6, r6, r3
	bl	uECC_vli_rshift1(PLT)
	ldr	r3, [sp, #12]
	subs	r4, r4, #1
	ldr	r0, [sp, #4]
	mov	r1, r5
	adds	r3, r3, #160
	sxth	r4, r4
	add	r3, sp, r3
	ldr	r2, [r3, #-132]
	ldr	r3, [r8, #-132]
	orr	r3, r3, r2, lsl #31
	str	r3, [r8, #-132]
	bl	uECC_vli_rshift1(PLT)
	b	.L94
.L101:
	eor	lr, r6, #1
	add	r3, sp, #160
	mov	ip, #0
	add	r10, r3, r6, lsl #2
	mov	r1, ip
	add	lr, r3, lr, lsl #2
	b	.L99
.L100:
	add	sp, sp, #164
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L103:
	.align	2
.L102:
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
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldr	r0, .L106
	mov	r6, r3
	ldr	r3, .L106+4
.LPIC11:
	add	r0, pc
	sub	sp, sp, #72
	add	r4, sp, #4
	ldr	r3, [r0, r3]
	mov	r0, r4
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	ldrsb	r3, [sp, #88]
	bl	uECC_vli_mult(PLT)
	mov	r2, r6
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_mmod(PLT)
	ldr	r2, .L106+8
	ldr	r3, .L106+4
.LPIC12:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L105
	bl	__stack_chk_fail(PLT)
.L105:
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, pc}
.L107:
	.align	2
.L106:
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
	mov	r6, r0
	ldr	r0, .L110
	mov	r5, r3
	ldr	r3, .L110+4
.LPIC13:
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
	ldr	r2, .L110+8
	ldr	r3, .L110+4
.LPIC14:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L109
	bl	__stack_chk_fail(PLT)
.L109:
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, pc}
.L111:
	.align	2
.L110:
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
	@ link register save eliminated.
	mov	r3, r2
	mov	r2, r1
	b	uECC_vli_modMult_fast(PLT)
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	1
	.global	double_jacobian_default
	.syntax unified
	.thumb
	.thumb_func
	.type	double_jacobian_default, %function
double_jacobian_default:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r2
	ldr	r2, .L118
	mov	r7, r3
	ldr	r3, .L118+4
.LPIC16:
	add	r2, pc
	sub	sp, sp, #92
	mov	r4, r0
	mov	r9, r1
	ldrsb	r6, [r7]
	mov	r0, r5
	ldr	r3, [r2, r3]
	mov	r1, r6
	ldr	r3, [r3]
	str	r3, [sp, #84]
	mov	r3, #0
	bl	uECC_vli_isZero(PLT)
	cmp	r0, #0
	bne	.L113
	add	r10, sp, #20
	mov	r2, r7
	mov	r1, r9
	mov	r0, r10
	add	fp, sp, #52
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r7
	mov	r2, r10
	mov	r1, r4
	mov	r0, fp
	bl	uECC_vli_modMult_fast(PLT)
	mov	r2, r7
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r7
	mov	r2, r5
	mov	r1, r9
	mov	r0, r9
	add	r8, r7, #4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r2, r7
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r8
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r8
	mov	r2, r5
	mov	r1, r5
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r8
	mov	r2, r5
	mov	r1, r4
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r7
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r8
	mov	r2, r4
	mov	r1, r4
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r8
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r4]
	lsls	r3, r3, #31
	bpl	.L115
	mov	r3, r6
	mov	r2, r8
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_add(PLT)
	mov	r1, r6
	str	r0, [sp, #12]
	mov	r0, r4
	bl	uECC_vli_rshift1(PLT)
	add	r3, r6, #1073741824
	subs	r3, r3, #1
	ldr	r2, [sp, #12]
	ldr	r1, [r4, r3, lsl #2]
	orr	r1, r1, r2, lsl #31
	str	r1, [r4, r3, lsl #2]
.L116:
	mov	r2, r7
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r8
	mov	r2, fp
	mov	r1, r5
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r8
	mov	r2, fp
	mov	r1, r5
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r8
	mov	r2, r5
	mov	r1, fp
	mov	r0, fp
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r7
	mov	r2, fp
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r8
	mov	r2, r10
	mov	r1, r4
	mov	r0, r10
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_set(PLT)
	mov	r1, r9
	mov	r0, r5
	bl	uECC_vli_set(PLT)
	mov	r1, r10
	mov	r0, r9
	bl	uECC_vli_set(PLT)
.L113:
	ldr	r2, .L118+8
	ldr	r3, .L118+4
.LPIC15:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #84]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L117
	bl	__stack_chk_fail(PLT)
.L115:
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_rshift1(PLT)
	b	.L116
.L117:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L119:
	.align	2
.L118:
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
	mov	r5, r2
	ldr	r2, .L122
	ldr	r3, .L122+4
	sub	sp, sp, #48
.LPIC17:
	add	r2, pc
	mov	r4, r0
	mov	r6, r1
	add	r0, sp, #16
	movs	r1, #0
	adds	r7, r5, #4
	ldr	r3, [r2, r3]
	movs	r2, #28
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	bl	memset(PLT)
	ldrsb	r8, [r5]
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	movs	r3, #3
	str	r3, [sp, #12]
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r7
	add	r2, sp, #12
	mov	r1, r4
	mov	r0, r4
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r5
	mov	r2, r6
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r7
	add	r2, r5, #132
	mov	r1, r4
	mov	r0, r4
	str	r8, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r2, .L122+8
	ldr	r3, .L122+4
.LPIC18:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L121
	bl	__stack_chk_fail(PLT)
.L121:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L123:
	.align	2
.L122:
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
	mov	r7, r2
	ldr	r2, .L126
	sub	sp, sp, #124
	mov	fp, r3
	ldr	r3, .L126+4
.LPIC19:
	add	r2, pc
	add	r9, sp, #20
	mov	r8, r0
	ldr	r10, [sp, #160]
	add	r6, sp, #52
	str	r1, [sp, #12]
	mov	r1, r7
	mov	r4, r10
	ldr	r3, [r2, r3]
	mov	r2, r0
	mov	r0, r9
	ldrsb	r5, [r4], #4
	ldr	r3, [r3]
	str	r3, [sp, #116]
	mov	r3, #0
	str	r5, [sp]
	mov	r3, r4
	bl	uECC_vli_modSub(PLT)
	mov	r2, r10
	mov	r1, r9
	mov	r0, r9
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r10
	mov	r2, r9
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
	mov	r1, r7
	mov	r0, r7
	mov	r3, r10
	mov	r2, r9
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r2, [sp, #12]
	mov	r3, r4
	mov	r1, fp
	mov	r0, r9
	str	r5, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r2, [sp, #12]
	mov	r3, r4
	mov	r1, fp
	mov	r0, fp
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r1, r7
	mov	r3, r4
	mov	r2, r8
	mov	r0, r6
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r1, [sp, #12]
	mov	r3, r10
	mov	r2, r6
	mov	r0, r1
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r4
	mov	r2, r7
	mov	r1, r8
	mov	r0, r6
	str	r5, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r0, r7
	mov	r2, r10
	mov	r1, fp
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r1, r7
	mov	r0, r7
	mov	r3, r4
	mov	r2, r6
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r7
	add	r7, sp, #84
	mov	r3, r4
	mov	r1, r8
	mov	r0, r7
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, r7
	mov	r1, fp
	mov	r0, fp
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r4
	ldr	r2, [sp, #12]
	mov	r1, fp
	mov	r0, fp
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r10
	mov	r1, r9
	mov	r0, r7
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r4
	mov	r2, r6
	mov	r1, r7
	mov	r0, r7
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r4
	mov	r2, r8
	mov	r1, r7
	mov	r0, r6
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, r9
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r2, [sp, #12]
	mov	r3, r4
	mov	r1, r6
	mov	r0, r2
	str	r5, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	uECC_vli_set(PLT)
	ldr	r2, .L126+8
	ldr	r3, .L126+4
.LPIC20:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L125
	bl	__stack_chk_fail(PLT)
.L125:
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L127:
	.align	2
.L126:
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
	mov	r7, r2
	ldr	r2, .L144
	mov	r4, r3
	ldr	r3, .L144+4
.LPIC23:
	add	r2, pc
	mov	r5, r1
	sub	sp, sp, #136
	mov	r10, r0
	mov	r1, r4
	mov	r0, r5
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #132]
	mov	r3, #0
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L129
	ldr	r2, .L144+8
	ldr	r3, .L144+4
.LPIC22:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L130
.L142:
	bl	__stack_chk_fail(PLT)
.L130:
	mov	r0, r10
	add	sp, sp, #136
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	uECC_vli_clear(PLT)
.L129:
	add	r8, sp, #4
	mov	r2, r4
	mov	r1, r5
	mov	r0, r8
	add	r9, sp, #36
	bl	uECC_vli_set(PLT)
	add	r5, sp, #68
	mov	r1, r7
	mov	r0, r9
	add	r6, sp, #100
	bl	uECC_vli_set(PLT)
	mov	r0, r5
	mov	r1, r4
	bl	uECC_vli_clear(PLT)
	mov	r0, r6
	movs	r3, #1
	str	r3, [sp, #68]
	bl	uECC_vli_clear(PLT)
.L131:
	mov	r2, r4
	mov	r1, r9
	mov	r0, r8
	bl	uECC_vli_cmp_unsafe(PLT)
	cbnz	r0, .L138
	mov	r2, r4
	mov	r1, r5
	mov	r0, r10
	bl	uECC_vli_set(PLT)
	ldr	r2, .L144+12
	ldr	r3, .L144+4
.LPIC21:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #132]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L142
	add	sp, sp, #136
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L138:
	ldr	r3, [sp, #4]
	lsls	r2, r3, #31
	bmi	.L132
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_rshift1(PLT)
.L143:
	mov	r2, r4
	mov	r1, r7
	mov	r0, r5
.L141:
	bl	vli_modInv_update(PLT)
	b	.L131
.L132:
	ldr	r3, [sp, #36]
	lsls	r3, r3, #31
	bmi	.L134
	mov	r1, r4
	mov	r0, r9
	bl	uECC_vli_rshift1(PLT)
.L140:
	mov	r2, r4
	mov	r1, r7
	mov	r0, r6
	b	.L141
.L134:
	mov	r3, r4
	cmp	r0, #0
	ble	.L135
	mov	r2, r9
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_sub(PLT)
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_rshift1(PLT)
	mov	r2, r4
	mov	r1, r6
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #0
	bge	.L136
	mov	r3, r4
	mov	r2, r7
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_add(PLT)
.L136:
	mov	r3, r4
	mov	r2, r6
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_sub(PLT)
	b	.L143
.L135:
	mov	r2, r8
	mov	r0, r9
	bl	uECC_vli_sub(PLT)
	mov	r1, r4
	mov	r0, r9
	bl	uECC_vli_rshift1(PLT)
	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #0
	bge	.L137
	mov	r3, r4
	mov	r2, r7
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_add(PLT)
.L137:
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r6
	bl	uECC_vli_sub(PLT)
	b	.L140
.L145:
	.align	2
.L144:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
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
	ldr	r0, .L147
.LPIC24:
	add	r0, pc
	bx	lr
.L148:
	.align	2
.L147:
	.word	.LANCHOR1-(.LPIC24+4)
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
	@ link register save eliminated.
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, #1
	sxtb	r1, r1
	b	uECC_vli_isZero(PLT)
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
	mov	r6, r2
	ldr	r2, .L152
	mov	r5, r3
	ldr	r3, .L152+4
.LPIC25:
	add	r2, pc
	sub	sp, sp, #40
	add	r4, sp, #4
	mov	r8, r0
	mov	r7, r1
	mov	r0, r4
	ldr	r3, [r2, r3]
	mov	r1, r6
	mov	r2, r5
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r5
	mov	r2, r4
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r5
	mov	r2, r6
	mov	r1, r4
	mov	r0, r4
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r5
	mov	r2, r4
	mov	r1, r7
	mov	r0, r7
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r2, .L152+8
	ldr	r3, .L152+4
.LPIC26:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L151
	bl	__stack_chk_fail(PLT)
.L151:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L153:
	.align	2
.L152:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+4)
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
	mov	r5, r2
	ldr	r2, .L156
	sub	sp, sp, #52
	mov	r8, r3
	ldr	r3, .L156+4
.LPIC27:
	add	r2, pc
	add	r4, sp, #12
	mov	r9, r0
	ldr	fp, [sp, #88]
	mov	r10, r1
	mov	r1, r5
	mov	r6, fp
	ldr	r3, [r2, r3]
	mov	r2, r0
	mov	r0, r4
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	ldrsb	r7, [r6], #4
	str	r7, [sp]
	mov	r3, r6
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
	mov	r3, r6
	mov	r2, r10
	mov	r1, r8
	mov	r0, r8
	str	r7, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, fp
	mov	r1, r8
	mov	r0, r4
	bl	uECC_vli_modSquare_fast(PLT)
	mov	r3, r6
	mov	r2, r9
	mov	r1, r4
	mov	r0, r4
	str	r7, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, r4
	str	r7, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r6
	mov	r2, r9
	mov	r1, r5
	mov	r0, r5
	str	r7, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r1, r10
	mov	r0, r10
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r6
	mov	r2, r4
	mov	r1, r9
	mov	r0, r5
	str	r7, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, fp
	mov	r2, r5
	mov	r1, r8
	mov	r0, r8
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r6
	mov	r2, r10
	mov	r1, r8
	mov	r0, r8
	str	r7, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r7
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_set(PLT)
	ldr	r2, .L156+8
	ldr	r3, .L156+4
.LPIC28:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L155
	bl	__stack_chk_fail(PLT)
.L155:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L157:
	.align	2
.L156:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
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
	mov	r8, r2
	ldr	r2, .L165
	sub	sp, sp, #204
	mov	r5, r3
	ldr	r3, .L165+4
.LPIC30:
	add	r2, pc
	add	r7, sp, #100
	ldr	r4, [sp, #244]
	strd	r0, r1, [sp, #20]
	mov	r0, r7
	ldrsb	r6, [r4]
	ldr	r3, [r2, r3]
	mov	r2, r6
	ldr	r3, [r3]
	str	r3, [sp, #196]
	mov	r3, #0
	bl	uECC_vli_set(PLT)
	lsls	r3, r6, #2
	str	r3, [sp, #28]
	ldr	r3, [sp, #24]
	add	r0, sp, #164
	add	r3, r3, r6, lsl #2
	str	r3, [sp, #8]
	mov	r1, r3
	bl	uECC_vli_set(PLT)
	add	r0, sp, #36
	cmp	r5, #0
	beq	.L159
	mov	r1, r5
	bl	uECC_vli_set(PLT)
.L160:
	add	r9, sp, #68
	mov	r2, r6
	mov	r1, r7
	mov	r0, r9
	add	r10, sp, #132
	add	fp, sp, #164
	bl	uECC_vli_set(PLT)
	add	r5, sp, #36
	mov	r1, fp
	mov	r0, r10
	bl	uECC_vli_set(PLT)
	mov	r2, r5
	mov	r0, r7
	mov	r3, r4
	bl	apply_z(PLT)
	mov	r2, r5
	mov	r0, r7
	mov	r3, r4
	mov	r1, fp
	ldr	r7, [r4, #164]
	blx	r7
	mov	r2, r5
	mov	r3, r4
	mov	r1, r10
	mov	r0, r9
	bl	apply_z(PLT)
	ldrsh	r5, [sp, #240]
	subs	r5, r5, #2
.L164:
	sxth	r5, r5
	cmp	r5, #0
	bgt	.L162
	ldr	r3, [r8]
	add	r7, sp, #68
	add	r8, sp, #132
	add	r5, sp, #36
	and	r3, r3, #1
	add	fp, r4, #4
	str	r4, [sp]
	add	r9, r7, r3, lsl #5
	add	r10, r8, r3, lsl #5
	eor	r3, r3, #1
	mov	r1, r10
	mov	r0, r9
	add	r2, r7, r3, lsl #5
	add	r3, r8, r3, lsl #5
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	bl	XYcZ_addC(PLT)
	mov	r3, fp
	mov	r2, r7
	add	r1, sp, #100
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r4
	mov	r2, r10
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r2, [sp, #24]
	mov	r3, r4
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r6
	mov	r2, fp
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modInv(PLT)
	ldr	r2, [sp, #8]
	mov	r3, r4
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r4
	mov	r2, r9
	mov	r1, r5
	mov	r0, r5
	bl	uECC_vli_modMult_fast(PLT)
	mov	r3, r10
	ldrd	r0, r1, [sp, #12]
	mov	r2, r9
	str	r4, [sp]
	bl	XYcZ_add(PLT)
	mov	r3, r4
	mov	r2, r5
	mov	r1, r8
	mov	r0, r7
	bl	apply_z(PLT)
	mov	r2, r6
	ldr	r0, [sp, #20]
	mov	r1, r7
	bl	uECC_vli_set(PLT)
	ldr	r3, [sp, #28]
	ldr	r0, [sp, #20]
	mov	r1, r8
	add	r0, r0, r3
	bl	uECC_vli_set(PLT)
	ldr	r2, .L165+8
	ldr	r3, .L165+4
.LPIC29:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #196]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L163
	bl	__stack_chk_fail(PLT)
.L159:
	mov	r1, r6
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [sp, #36]
	b	.L160
.L162:
	mov	r1, r5
	mov	r0, r8
	bl	uECC_vli_testBit(PLT)
	cmp	r0, #0
	iteet	eq
	moveq	r7, #1
	movne	r7, #0
	movne	r1, #1
	moveq	r1, #0
	add	fp, r9, r7, lsl #5
	add	r7, r10, r7, lsl #5
	add	r0, r9, r1, lsl #5
	mov	r3, r7
	add	r1, r10, r1, lsl #5
	mov	r2, fp
	str	r4, [sp]
	subs	r5, r5, #1
	strd	r0, r1, [sp, #12]
	bl	XYcZ_addC(PLT)
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #12]
	mov	r3, r1
	str	r4, [sp]
	mov	r2, r0
	mov	r1, r7
	mov	r0, fp
	bl	XYcZ_add(PLT)
	b	.L164
.L163:
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L166:
	.align	2
.L165:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+4)
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
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r1
	ldrsh	r9, [r3, #2]
	add	r5, r3, #36
	mov	r1, r0
	adds	r6, r9, #31
	mov	r8, r2
	it	mi
	addmi	r6, r9, #62
	mov	r2, r5
	mov	r0, r7
	sbfx	r6, r6, #5, #8
	mov	r3, r6
	bl	uECC_vli_add(PLT)
	mov	r4, r0
	cbnz	r0, .L170
	cmp	r9, r6, lsl #5
	bge	.L169
	mov	r1, r9
	mov	r0, r7
	bl	uECC_vli_testBit(PLT)
	subs	r4, r0, #0
	it	ne
	movne	r4, #1
.L169:
	mov	r3, r6
	mov	r2, r5
	mov	r1, r7
	mov	r0, r8
	bl	uECC_vli_add(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L170:
	movs	r4, #1
	b	.L169
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
	mov	r4, r2
	ldr	r2, .L174
	ldr	r3, .L174+4
	sub	sp, sp, #92
.LPIC31:
	add	r2, pc
	mov	r5, r0
	mov	r0, r1
	add	r1, sp, #20
	ldr	r3, [r2, r3]
	add	r2, sp, #52
	ldr	r3, [r3]
	str	r3, [sp, #84]
	mov	r3, #0
	mov	r3, r4
	str	r1, [sp, #12]
	str	r2, [sp, #16]
	bl	regularize_k(PLT)
	clz	r3, r0
	str	r4, [sp, #4]
	add	r2, sp, #88
	add	r1, r4, #68
	lsrs	r3, r3, #5
	mov	r0, r5
	add	r2, r2, r3, lsl #2
	ldrh	r3, [r4, #2]
	adds	r3, r3, #1
	sxth	r3, r3
	str	r3, [sp]
	movs	r3, #0
	ldr	r2, [r2, #-76]
	bl	EccPoint_mult(PLT)
	mov	r1, r4
	mov	r0, r5
	bl	EccPoint_isZero(PLT)
	ldr	r2, .L174+8
	ldr	r3, .L174+4
	clz	r0, r0
.LPIC32:
	add	r2, pc
	lsrs	r0, r0, #5
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #84]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L173
	bl	__stack_chk_fail(PLT)
.L173:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, pc}
.L175:
	.align	2
.L174:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+4)
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
	push	{r4, r5, r6, r7, lr}
	movs	r5, #0
	subs	r7, r1, #1
.L177:
	sxtb	r4, r5
	adds	r5, r5, #1
	cmp	r4, r1
	blt	.L178
	pop	{r4, r5, r6, r7, pc}
.L178:
	subs	r3, r7, r4
	bic	r6, r3, #3
	and	r3, r3, #3
	lsls	r3, r3, #3
	ldr	r6, [r2, r6]
	lsr	r3, r6, r3
	strb	r3, [r0, r4]
	b	.L177
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
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r2
	mov	r6, r1
	adds	r1, r2, #3
	mov	r5, #0
	it	mi
	addmi	r1, r2, #6
	subs	r7, r4, #1
	sbfx	r1, r1, #2, #8
	bl	uECC_vli_clear(PLT)
.L181:
	sxtb	r2, r5
	adds	r5, r5, #1
	cmp	r2, r4
	blt	.L182
	pop	{r3, r4, r5, r6, r7, pc}
.L182:
	subs	r3, r7, r2
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
	bic	r1, r3, #3
	and	r3, r3, #3
	lsls	r3, r3, #3
	lsls	r2, r2, r3
	ldr	r3, [r0, r1]
	orrs	r3, r3, r2
	str	r3, [r0, r1]
	b	.L181
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
	mov	r7, r1
	ldr	r10, .L196
	mov	r5, r0
	mov	r1, r2
.LPIC33:
	add	r10, pc
	mov	r0, r7
	mov	r4, r2
	bl	uECC_vli_numBits(PLT)
	ldr	r3, [r10]
	cbz	r3, .L184
	rsb	r0, r0, r4, lsl #5
	mov	r9, #-1
	add	r6, r5, r4, lsl #2
	lsl	fp, r4, #2
	sxth	r0, r0
	subs	r6, r6, #4
	mov	r8, #64
	lsr	r9, r9, r0
.L187:
	ldr	r3, [r10]
	mov	r1, fp
	mov	r0, r5
	blx	r3
	cbz	r0, .L184
	ldr	r3, [r6]
	mov	r1, r4
	mov	r0, r5
	and	r3, r3, r9
	str	r3, [r6]
	bl	uECC_vli_isZero(PLT)
	cbnz	r0, .L185
	mov	r2, r4
	mov	r1, r5
	mov	r0, r7
	bl	uECC_vli_cmp(PLT)
	cmp	r0, #1
	beq	.L183
.L185:
	subs	r8, r8, #1
	bne	.L187
.L184:
	movs	r0, #0
.L183:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L197:
	.align	2
.L196:
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
	ldr	r2, .L205
	ldr	r3, .L205+4
.LPIC36:
	add	r2, pc
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #76
	ldrsb	r7, [r1]
	ldr	r3, [r2, r3]
	mov	r4, r1
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	bl	EccPoint_isZero(PLT)
	cbnz	r0, .L201
	adds	r6, r4, #4
	mov	r2, r7
	mov	r1, r5
	mov	r0, r6
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L203
	mov	r2, r7
	add	r1, r5, r7, lsl #2
	mov	r0, r6
	bl	uECC_vli_cmp_unsafe(PLT)
	cmp	r0, #1
	bne	.L203
	add	r6, sp, #4
	mov	r2, r4
	mov	r0, r6
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r4, #168]
	mov	r2, r4
	add	r4, sp, #36
	mov	r1, r5
	mov	r0, r4
	blx	r3
	mov	r2, r7
	mov	r1, r4
	mov	r0, r6
	bl	uECC_vli_equal(PLT)
	cmp	r0, #0
	ite	ne
	mvnne	r0, #2
	moveq	r0, #0
.L198:
	ldr	r2, .L205+8
	ldr	r3, .L205+4
.LPIC35:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L200
	bl	__stack_chk_fail(PLT)
.L201:
	mov	r0, #-1
	b	.L198
.L203:
	mvn	r0, #1
	b	.L198
.L200:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L206:
	.align	2
.L205:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
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
	ldr	r2, .L211
	ldr	r3, .L211+4
	push	{r4, r5, r6, r7, r8, lr}
.LPIC38:
	add	r2, pc
	mov	r4, r1
	sub	sp, sp, #72
	ldrsb	r8, [r1, #1]
	mov	r7, r4
	ldr	r3, [r2, r3]
	add	r5, sp, #4
	mov	r1, r0
	mov	r6, r0
	mov	r2, r8
	mov	r0, r5
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	bl	uECC_vli_bytesToNative(PLT)
	ldrsb	r0, [r7], #68
	mov	r2, r8
	adds	r1, r6, r2
	add	r0, r5, r0, lsl #2
	bl	uECC_vli_bytesToNative(PLT)
	movs	r2, #16
	mov	r1, r7
	mov	r0, r5
	bl	uECC_vli_cmp_unsafe(PLT)
	cbz	r0, .L210
	mov	r1, r4
	mov	r0, r5
	bl	uECC_valid_point(PLT)
.L207:
	ldr	r2, .L211+8
	ldr	r3, .L211+4
.LPIC37:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L209
	bl	__stack_chk_fail(PLT)
.L210:
	mvn	r0, #3
	b	.L207
.L209:
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L212:
	.align	2
.L211:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC37+4)
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	ldr	r2, .L223
	ldr	r3, .L223+4
	sub	sp, sp, #104
.LPIC40:
	add	r2, pc
	ldrsh	r5, [r4, #2]
	add	r7, sp, #4
	mov	r6, r1
	mov	r1, r0
	mov	r0, r7
	ldr	r3, [r2, r3]
	adds	r2, r5, #7
	it	mi
	addmi	r2, r5, #14
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	asrs	r2, r2, #3
	bl	uECC_vli_bytesToNative(PLT)
	adds	r2, r5, #31
	it	mi
	addmi	r2, r5, #62
	sbfx	r1, r2, #5, #8
	bl	uECC_vli_isZero(PLT)
	cbz	r0, .L216
.L218:
	movs	r0, #0
.L213:
	ldr	r2, .L223+8
	ldr	r3, .L223+4
.LPIC39:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L219
	bl	__stack_chk_fail(PLT)
.L216:
	mov	r2, r1
	add	r0, r4, #36
	mov	r1, r7
	bl	uECC_vli_cmp(PLT)
	mov	r5, r0
	cmp	r0, #1
	bne	.L218
	add	r8, sp, #36
	mov	r2, r4
	mov	r1, r7
	mov	r0, r8
	bl	EccPoint_compute_public_key(PLT)
	cmp	r0, #0
	beq	.L218
	ldrsb	r1, [r4, #1]
	mov	r2, r8
	mov	r0, r6
	bl	uECC_vli_nativeToBytes(PLT)
	ldrsb	r2, [r4]
	ldrsb	r1, [r4, #1]
	add	r2, r8, r2, lsl #2
	adds	r0, r6, r1
	bl	uECC_vli_nativeToBytes(PLT)
	mov	r0, r5
	b	.L213
.L219:
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L224:
	.align	2
.L223:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC40+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+4)
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
