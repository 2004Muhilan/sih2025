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
	.file	"tinycrypt_ecc.c"
	.text
	.section	.data.rel.ro.local,"aw"
	.align	2
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
	.section	.data.rel,"aw"
	.align	2
	.type	g_rng_function, %object
	.size	g_rng_function, 4
g_rng_function:
	.word	default_CSPRNG
	.text
	.align	1
	.global	uECC_set_rng
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_set_rng, %function
uECC_set_rng:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L2
.LPIC0:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	g_rng_function-(.LPIC0+4)
	.size	uECC_set_rng, .-uECC_set_rng
	.align	1
	.global	uECC_get_rng
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_get_rng, %function
uECC_get_rng:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L6
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	g_rng_function-(.LPIC1+4)
	.size	uECC_get_rng, .-uECC_get_rng
	.align	1
	.global	uECC_curve_private_key_size
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_curve_private_key_size, %function
uECC_curve_private_key_size:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #7
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	1
	.global	uECC_curve_public_key_size
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_curve_public_key_size, %function
uECC_curve_public_key_size:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	lsls	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	1
	.global	uECC_vli_clear
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_clear, %function
uECC_vli_clear:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L13
.L14:
	ldrsb	r3, [r7, #15]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #15]
.L13:
	ldrsb	r2, [r7, #15]
	ldrsb	r3, [r7, #3]
	cmp	r2, r3
	blt	.L14
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	1
	.global	uECC_vli_isZero
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_isZero, %function
uECC_vli_isZero:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #11]
	b	.L16
.L17:
	ldrsb	r3, [r7, #11]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #11]
.L16:
	ldrsb	r2, [r7, #11]
	ldrsb	r3, [r7, #3]
	cmp	r2, r3
	blt	.L17
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	1
	.global	uECC_vli_testBit
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_testBit, %function
uECC_vli_testBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrsh	r3, [r7, #2]
	asrs	r3, r3, #5
	sxth	r3, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrh	r3, [r7, #2]
	and	r3, r3, #31
	movs	r1, #1
	lsl	r3, r1, r3
	ands	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_numDigits, %function
vli_numDigits:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #15]
	b	.L22
.L24:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #15]
.L22:
	ldrsb	r3, [r7, #15]
	cmp	r3, #0
	blt	.L23
	ldrsb	r3, [r7, #15]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24
.L23:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	sxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	vli_numDigits, .-vli_numDigits
	.align	1
	.global	uECC_vli_numBits
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_numBits, %function
uECC_vli_numBits:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	vli_numDigits(PLT)
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrsb	r3, [r7, #15]
	cmp	r3, #0
	bne	.L27
	movs	r3, #0
	b	.L28
.L27:
	ldrsb	r3, [r7, #15]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L29
.L30:
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L29:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L30
	ldrsb	r3, [r7, #15]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
	lsls	r3, r3, #5
	uxth	r2, r3
	ldr	r3, [r7, #16]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
.L28:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	1
	.global	uECC_vli_set
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_set, %function
uECC_vli_set:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L32
.L33:
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #23]
.L32:
	ldrsb	r2, [r7, #23]
	ldrsb	r3, [r7, #7]
	cmp	r2, r3
	blt	.L33
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_set, .-uECC_vli_set
	.align	1
	.global	uECC_vli_cmp_unsafe
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_cmp_unsafe, %function
uECC_vli_cmp_unsafe:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #23]
	b	.L35
.L39:
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L36
	movs	r3, #1
	b	.L37
.L36:
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L38
	mov	r3, #-1
	b	.L37
.L38:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #23]
.L35:
	ldrsb	r3, [r7, #23]
	cmp	r3, #0
	bge	.L39
	movs	r3, #0
.L37:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	1
	.global	uECC_vli_equal
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_equal, %function
uECC_vli_equal:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #19]
	b	.L41
.L42:
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldr	r3, [r3]
	eors	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #19]
.L41:
	ldrsb	r3, [r7, #19]
	cmp	r3, #0
	bge	.L42
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
	.global	cond_set
	.syntax unified
	.thumb
	.thumb_func
	.type	cond_set, %function
cond_set:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	mul	r2, r3, r2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r1, r3
	ldr	r3, [r7, #8]
	mul	r3, r1, r3
	orrs	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cond_set, .-cond_set
	.align	1
	.global	uECC_vli_sub
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_sub, %function
uECC_vli_sub:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #19]
	b	.L47
.L48:
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #28]
	bl	cond_set(PLT)
	str	r0, [r7, #20]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #19]
.L47:
	ldrsb	r2, [r7, #19]
	ldrsb	r3, [r7, #3]
	cmp	r2, r3
	blt	.L48
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_add, %function
uECC_vli_add:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #19]
	b	.L51
.L52:
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #28]
	bl	cond_set(PLT)
	str	r0, [r7, #20]
	ldrsb	r3, [r7, #19]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #19]
.L51:
	ldrsb	r2, [r7, #19]
	ldrsb	r3, [r7, #3]
	cmp	r2, r3
	blt	.L52
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_add, .-uECC_vli_add
	.align	1
	.global	uECC_vli_cmp
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_cmp, %function
uECC_vli_cmp:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r2, .L57
.LPIC2:
	add	r2, pc
	ldr	r3, .L57+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	mov	r3, #0
	ldrsb	r3, [r7, #7]
	add	r0, r7, #28
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	bl	uECC_vli_sub(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldrsb	r2, [r7, #7]
	add	r3, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_isZero(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r3, r3
	subs	r3, r2, r3
	uxtb	r3, r3
	sxtb	r3, r3
	ldr	r1, .L57+8
.LPIC3:
	add	r1, pc
	ldr	r2, .L57+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #60]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L56
	bl	__stack_chk_fail(PLT)
.L56:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_rshift1, %function
uECC_vli_rshift1:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrsb	r3, [r7, #3]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #4]
	b	.L60
.L61:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #31
	str	r3, [r7, #12]
.L60:
	ldr	r3, [r7, #4]
	subs	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	bcc	.L61
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	muladd, %function
muladd:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #44]
	str	r1, [r7, #40]
	str	r2, [r7, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	movs	r2, #0
	mov	r8, r3
	mov	r9, r2
	ldr	r3, [r7, #40]
	movs	r2, #0
	mov	r10, r3
	mov	fp, r2
	mul	r2, r10, r9
	mul	r3, r8, fp
	add	r3, r3, r2
	umull	r4, r5, r8, r10
	add	r3, r3, r5
	mov	r5, r3
	strd	r4, [r7, #48]
	strd	r4, [r7, #48]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	movs	r2, #0
	str	r3, [r7, #24]
	str	r2, [r7, #28]
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [r7, #24]
	movs	r3, r1
	movs	r2, #0
	ldr	r1, [r7, #36]
	ldr	r1, [r1]
	movs	r0, #0
	str	r1, [r7, #16]
	str	r0, [r7, #20]
	ldrd	r4, [r7, #16]
	mov	r1, r4
	orrs	r1, r1, r2
	str	r1, [r7, #8]
	mov	r1, r5
	orrs	r1, r1, r3
	str	r1, [r7, #12]
	ldrd	r3, [r7, #8]
	strd	r3, [r7, #56]
	ldrd	r0, [r7, #56]
	ldrd	r2, [r7, #48]
	adds	r4, r0, r2
	str	r4, [r7]
	adc	r3, r1, r3
	str	r3, [r7, #4]
	ldrd	r3, [r7]
	strd	r3, [r7, #56]
	ldr	r3, [r7, #96]
	ldr	r4, [r3]
	ldrd	r0, [r7, #56]
	ldrd	r2, [r7, #48]
	cmp	r0, r2
	sbcs	r3, r1, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	adds	r2, r4, r3
	ldr	r3, [r7, #96]
	str	r2, [r3]
	ldrd	r0, [r7, #56]
	mov	r2, #0
	mov	r3, #0
	movs	r2, r1
	movs	r3, #0
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #36]
	str	r2, [r3]
	nop
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	muladd, .-muladd
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mult, %function
uECC_vli_mult:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r2, .L73
.LPIC4:
	add	r2, pc
	ldr	r3, .L73+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	mov	r3, #0
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L64
.L67:
	movs	r3, #0
	strb	r3, [r7, #22]
	b	.L65
.L66:
	ldrsb	r3, [r7, #22]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r0, [r3]
	ldrsb	r2, [r7, #23]
	ldrsb	r3, [r7, #22]
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r1, [r3]
	add	r4, r7, #28
	add	r2, r7, #24
	add	r3, r7, #32
	str	r3, [sp]
	mov	r3, r4
	bl	muladd(PLT)
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #22]
.L65:
	ldrsb	r2, [r7, #22]
	ldrsb	r3, [r7, #23]
	cmp	r2, r3
	ble	.L66
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #23]
.L64:
	ldrsb	r2, [r7, #23]
	ldrsb	r3, [r7, #3]
	cmp	r2, r3
	blt	.L67
	ldrb	r3, [r7, #3]
	strb	r3, [r7, #23]
	b	.L68
.L71:
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r2, r3
	uxtb	r3, r3
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #22]
	b	.L69
.L70:
	ldrsb	r3, [r7, #22]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r0, [r3]
	ldrsb	r2, [r7, #23]
	ldrsb	r3, [r7, #22]
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r1, [r3]
	add	r4, r7, #28
	add	r2, r7, #24
	add	r3, r7, #32
	str	r3, [sp]
	mov	r3, r4
	bl	muladd(PLT)
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #22]
.L69:
	ldrsb	r2, [r7, #22]
	ldrsb	r3, [r7, #3]
	cmp	r2, r3
	blt	.L70
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #23]
.L68:
	ldrsb	r2, [r7, #23]
	ldrsb	r3, [r7, #3]
	lsls	r3, r3, #1
	subs	r3, r3, #1
	cmp	r2, r3
	blt	.L71
	ldrsb	r3, [r7, #3]
	lsls	r3, r3, #3
	subs	r3, r3, #4
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	nop
	ldr	r2, .L73+8
.LPIC5:
	add	r2, pc
	ldr	r3, .L73+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L72
	bl	__stack_chk_fail(PLT)
.L72:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L74:
	.align	2
.L73:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	1
	.global	uECC_vli_modAdd
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modAdd, %function
uECC_vli_modAdd:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldrsb	r3, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	uECC_vli_add(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L76
	ldrsb	r3, [r7, #32]
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r0, [r7]
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L78
.L76:
	ldrsb	r3, [r7, #32]
	ldr	r2, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_sub(PLT)
.L78:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.global	uECC_vli_modSub
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modSub, %function
uECC_vli_modSub:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldrsb	r3, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	uECC_vli_sub(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L81
	ldrsb	r3, [r7, #32]
	ldr	r2, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_add(PLT)
.L81:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.global	uECC_vli_mmod
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #188
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r2, .L93
.LPIC6:
	add	r2, pc
	ldr	r3, .L93+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #180]
	mov	r3, #0
	add	r3, r7, #116
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	str	r3, [r7, #48]
	ldrsb	r3, [r7, #3]
	uxth	r3, r3
	lsls	r3, r3, #6
	uxth	r4, r3
	ldrsb	r3, [r7, #3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	uECC_vli_numBits(PLT)
	mov	r3, r0
	uxth	r3, r3
	subs	r3, r4, r3
	uxth	r3, r3
	strh	r3, [r7, #26]	@ movhi
	ldrsh	r3, [r7, #26]
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	sxth	r3, r3
	strb	r3, [r7, #24]
	ldrsh	r3, [r7, #26]
	rsbs	r2, r3, #0
	and	r3, r3, #31
	and	r2, r2, #31
	it	pl
	rsbpl	r3, r2, #0
	sxth	r3, r3
	strb	r3, [r7, #25]
	movs	r3, #0
	str	r3, [r7, #32]
	ldrsb	r2, [r7, #24]
	add	r3, r7, #52
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_clear(PLT)
	ldrsb	r3, [r7, #25]
	cmp	r3, #0
	ble	.L83
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L84
.L85:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #25]
	lsl	r1, r2, r3
	ldrsb	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #32]
	orrs	r2, r2, r1
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	str	r2, [r3, #-132]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #25]
	rsb	r3, r3, #32
	lsr	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L84:
	ldrsb	r3, [r7, #3]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bcc	.L85
	b	.L86
.L83:
	ldrsb	r3, [r7, #24]
	lsls	r3, r3, #2
	add	r2, r7, #52
	add	r3, r3, r2
	ldrsb	r2, [r7, #3]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_set(PLT)
.L86:
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L87
.L91:
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L88
.L90:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r2, [r3, #-140]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r3, [r3, #-132]
	subs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r2, [r3, #-140]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #40]
	cmp	r2, r3
	beq	.L89
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r2, [r3, #-140]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #40]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #36]
.L89:
	ldr	r3, [r7, #28]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r2, [r3, #-140]
	ldrsb	r3, [r7, #23]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	str	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #23]
.L88:
	ldrsb	r2, [r7, #23]
	ldrsb	r3, [r7, #3]
	lsls	r3, r3, #1
	cmp	r2, r3
	blt	.L90
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldrsb	r2, [r7, #3]
	add	r3, r7, #52
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_rshift1(PLT)
	ldrsb	r3, [r7, #3]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r1, [r3, #-132]
	ldrsb	r3, [r7, #3]
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r3, [r3, #-132]
	lsls	r2, r3, #31
	ldrsb	r3, [r7, #3]
	subs	r3, r3, #1
	orrs	r2, r2, r1
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	str	r2, [r3, #-132]
	ldrsb	r3, [r7, #3]
	lsls	r3, r3, #2
	add	r2, r7, #52
	add	r3, r3, r2
	ldrsb	r2, [r7, #3]
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_rshift1(PLT)
	ldrh	r3, [r7, #26]
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #26]	@ movhi
.L87:
	ldrsh	r3, [r7, #26]
	cmp	r3, #0
	bge	.L91
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #184
	add	r3, r3, r7
	ldr	r3, [r3, #-140]
	ldrsb	r2, [r7, #3]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_set(PLT)
	nop
	ldr	r2, .L93+8
.LPIC7:
	add	r2, pc
	ldr	r3, .L93+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #180]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L92
	bl	__stack_chk_fail(PLT)
.L92:
	adds	r7, r7, #188
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L94:
	.align	2
.L93:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	1
	.global	uECC_vli_modMult
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modMult, %function
uECC_vli_modMult:
	@ args = 4, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L97
.LPIC8:
	add	r2, pc
	ldr	r3, .L97+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #84]
	mov	r3, #0
	ldrsb	r3, [r7, #96]
	add	r0, r7, #20
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	uECC_vli_mult(PLT)
	ldrsb	r3, [r7, #96]
	add	r1, r7, #20
	ldr	r2, [r7]
	ldr	r0, [r7, #12]
	bl	uECC_vli_mmod(PLT)
	nop
	ldr	r2, .L97+8
.LPIC9:
	add	r2, pc
	ldr	r3, .L97+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L96
	bl	__stack_chk_fail(PLT)
.L96:
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L98:
	.align	2
.L97:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	1
	.global	uECC_vli_modMult_fast
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modMult_fast, %function
uECC_vli_modMult_fast:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L101
.LPIC10:
	add	r2, pc
	ldr	r3, .L101+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #84]
	mov	r3, #0
	ldr	r3, [r7]
	ldrsb	r3, [r3]
	add	r0, r7, #20
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7]
	ldr	r3, [r3, #172]
	add	r2, r7, #20
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	nop
	ldr	r2, .L101+8
.LPIC11:
	add	r2, pc
	ldr	r3, .L101+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L100
	bl	__stack_chk_fail(PLT)
.L100:
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L102:
	.align	2
.L101:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modSquare_fast, %function
uECC_vli_modSquare_fast:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_modInv_update, %function
vli_modInv_update:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L105
	ldrsb	r3, [r7, #7]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_add(PLT)
	str	r0, [r7, #20]
.L105:
	ldrsb	r3, [r7, #7]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_rshift1(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L107
	ldrsb	r3, [r7, #7]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldrsb	r3, [r7, #7]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	orr	r2, r2, #-2147483648
	str	r2, [r3]
.L107:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.global	uECC_vli_modInv
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #152
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r2, .L120
.LPIC12:
	add	r2, pc
	ldr	r3, .L120+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #148]
	mov	r3, #0
	ldrsb	r3, [r7, #3]
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	ldrsb	r3, [r7, #3]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_clear(PLT)
	b	.L108
.L109:
	ldrsb	r2, [r7, #3]
	add	r3, r7, #20
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #52
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #84
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [r7, #84]
	ldrsb	r2, [r7, #3]
	add	r3, r7, #116
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_clear(PLT)
	b	.L111
.L118:
	ldr	r3, [r7, #20]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L112
	ldrsb	r2, [r7, #3]
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_rshift1(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #84
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	vli_modInv_update(PLT)
	b	.L111
.L112:
	ldr	r3, [r7, #52]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L114
	ldrsb	r2, [r7, #3]
	add	r3, r7, #52
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_rshift1(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #116
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	vli_modInv_update(PLT)
	b	.L111
.L114:
	ldrsb	r3, [r7, #19]
	cmp	r3, #0
	ble	.L115
	ldrsb	r3, [r7, #3]
	add	r2, r7, #52
	add	r1, r7, #20
	add	r0, r7, #20
	bl	uECC_vli_sub(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_rshift1(PLT)
	ldrsb	r2, [r7, #3]
	add	r1, r7, #116
	add	r3, r7, #84
	mov	r0, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L116
	ldrsb	r3, [r7, #3]
	add	r1, r7, #84
	add	r0, r7, #84
	ldr	r2, [r7, #4]
	bl	uECC_vli_add(PLT)
.L116:
	ldrsb	r3, [r7, #3]
	add	r2, r7, #116
	add	r1, r7, #84
	add	r0, r7, #84
	bl	uECC_vli_sub(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #84
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	vli_modInv_update(PLT)
	b	.L111
.L115:
	ldrsb	r3, [r7, #3]
	add	r2, r7, #20
	add	r1, r7, #52
	add	r0, r7, #52
	bl	uECC_vli_sub(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #52
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_rshift1(PLT)
	ldrsb	r2, [r7, #3]
	add	r1, r7, #84
	add	r3, r7, #116
	mov	r0, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L117
	ldrsb	r3, [r7, #3]
	add	r1, r7, #116
	add	r0, r7, #116
	ldr	r2, [r7, #4]
	bl	uECC_vli_add(PLT)
.L117:
	ldrsb	r3, [r7, #3]
	add	r2, r7, #84
	add	r1, r7, #116
	add	r0, r7, #116
	bl	uECC_vli_sub(PLT)
	ldrsb	r2, [r7, #3]
	add	r3, r7, #116
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	vli_modInv_update(PLT)
.L111:
	ldrsb	r2, [r7, #3]
	add	r1, r7, #52
	add	r3, r7, #20
	mov	r0, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	strb	r3, [r7, #19]
	ldrsb	r3, [r7, #19]
	cmp	r3, #0
	bne	.L118
	ldrsb	r2, [r7, #3]
	add	r3, r7, #84
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_set(PLT)
.L108:
	ldr	r2, .L120+8
.LPIC13:
	add	r2, pc
	ldr	r3, .L120+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #148]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L119
	bl	__stack_chk_fail(PLT)
.L119:
	adds	r7, r7, #152
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L121:
	.align	2
.L120:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	1
	.global	double_jacobian_default
	.syntax unified
	.thumb
	.thumb_func
	.type	double_jacobian_default, %function
double_jacobian_default:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L129
.LPIC14:
	add	r2, pc
	ldr	r3, .L129+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #92]
	mov	r3, #0
	ldr	r3, [r7]
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	ldrsb	r3, [r7, #23]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L128
	add	r3, r7, #28
	ldr	r2, [r7]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	add	r2, r7, #28
	add	r0, r7, #60
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	add	r1, r7, #28
	add	r3, r7, #28
	ldr	r2, [r7]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modAdd(PLT)
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #23]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_add(PLT)
	str	r0, [r7, #24]
	ldrsb	r3, [r7, #23]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_rshift1(PLT)
	ldrsb	r3, [r7, #23]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #31
	ldrsb	r3, [r7, #23]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r0, [r7, #12]
	add	r3, r3, r0
	orrs	r2, r2, r1
	str	r2, [r3]
	b	.L126
.L125:
	ldrsb	r3, [r7, #23]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_rshift1(PLT)
.L126:
	ldr	r2, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7]
	adds	r1, r3, #4
	add	r2, r7, #60
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7]
	adds	r1, r3, #4
	add	r2, r7, #60
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7]
	adds	r2, r3, #4
	add	r1, r7, #60
	add	r0, r7, #60
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #4]
	bl	uECC_vli_modSub(PLT)
	add	r2, r7, #60
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7]
	adds	r1, r3, #4
	add	r2, r7, #28
	add	r0, r7, #28
	ldrsb	r3, [r7, #23]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	ldrsb	r3, [r7, #23]
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	uECC_vli_set(PLT)
	ldrsb	r3, [r7, #23]
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #4]
	bl	uECC_vli_set(PLT)
	ldrsb	r2, [r7, #23]
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_set(PLT)
	b	.L122
.L128:
	nop
.L122:
	ldr	r2, .L129+8
.LPIC15:
	add	r2, pc
	ldr	r3, .L129+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #92]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L127
	bl	__stack_chk_fail(PLT)
.L127:
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L130:
	.align	2
.L129:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
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
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L133
.LPIC16:
	add	r2, pc
	ldr	r3, .L133+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	mov	r3, #0
	add	r3, r7, #20
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	movs	r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r1, r3, #4
	add	r2, r7, #20
	ldrsb	r3, [r7, #19]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #132
	ldr	r3, [r7, #4]
	adds	r1, r3, #4
	ldrsb	r3, [r7, #19]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modAdd(PLT)
	nop
	ldr	r2, .L133+8
.LPIC17:
	add	r2, pc
	ldr	r3, .L133+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L132
	bl	__stack_chk_fail(PLT)
.L132:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L134:
	.align	2
.L133:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.size	x_side_default, .-x_side_default
	.align	1
	.global	uECC_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_secp256r1, %function
uECC_secp256r1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L137
.LPIC18:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L138:
	.align	2
.L137:
	.word	curve_secp256r1-(.LPIC18+4)
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	1
	.global	vli_mmod_fast_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L147
.LPIC22:
	add	r2, pc
	ldr	r3, .L147+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	mov	r3, #0
	movs	r2, #8
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	uECC_vli_set(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #40]
	add	r2, r7, #12
	add	r1, r7, #12
	add	r0, r7, #12
	movs	r3, #8
	bl	uECC_vli_add(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_add(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	add	r2, r7, #12
	add	r1, r7, #12
	add	r0, r7, #12
	movs	r3, #8
	bl	uECC_vli_add(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_add(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #40]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_add(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #40]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_add(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #40]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_sub(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	subs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #40]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_sub(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	subs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	str	r3, [r7, #40]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_sub(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	subs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	str	r3, [r7, #40]
	add	r2, r7, #12
	movs	r3, #8
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_sub(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	subs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L143
.L141:
	movs	r3, #8
	ldr	r2, .L147+8
.LPIC19:
	add	r2, pc
	adds	r2, r2, #4
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_add(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L141
	b	.L146
.L144:
	movs	r3, #8
	ldr	r2, .L147+12
.LPIC20:
	add	r2, pc
	adds	r2, r2, #4
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uECC_vli_sub(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	subs	r3, r3, r2
	str	r3, [r7, #8]
.L143:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L144
	movs	r2, #8
	ldr	r1, [r7, #4]
	ldr	r3, .L147+16
.LPIC21:
	add	r3, pc
	adds	r0, r3, #4
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L144
.L146:
	nop
	ldr	r2, .L147+20
.LPIC23:
	add	r2, pc
	ldr	r3, .L147+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L145
	bl	__stack_chk_fail(PLT)
.L145:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L148:
	.align	2
.L147:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	__stack_chk_guard(GOT)
	.word	curve_secp256r1-(.LPIC19+4)
	.word	curve_secp256r1-(.LPIC20+4)
	.word	curve_secp256r1-(.LPIC21+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.global	EccPoint_isZero
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_isZero, %function
EccPoint_isZero:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrsb	r3, [r3]
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r3, r3
	sxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	1
	.global	apply_z
	.syntax unified
	.thumb
	.thumb_func
	.type	apply_z, %function
apply_z:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L153
.LPIC24:
	add	r2, pc
	ldr	r3, .L153+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	mov	r3, #0
	add	r3, r7, #20
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	add	r2, r7, #20
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	add	r1, r7, #20
	add	r0, r7, #20
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	uECC_vli_modMult_fast(PLT)
	add	r2, r7, #20
	ldr	r3, [r7]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modMult_fast(PLT)
	nop
	ldr	r2, .L153+8
.LPIC25:
	add	r2, pc
	ldr	r3, .L153+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L152
	bl	__stack_chk_fail(PLT)
.L152:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L154:
	.align	2
.L153:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.size	apply_z, .-apply_z
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_initial_double, %function
XYcZ_initial_double:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #80]
	str	r3, [r7, #4]
	ldr	r3, [r7, #84]
	str	r3, [r7]
	ldr	r2, .L159
.LPIC26:
	add	r2, pc
	ldr	r3, .L159+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	mov	r3, #0
	ldr	r3, [r7]
	ldrb	r3, [r3]
	strb	r3, [r7, #27]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L156
	ldrsb	r2, [r7, #27]
	add	r3, r7, #28
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	b	.L157
.L156:
	ldrsb	r2, [r7, #27]
	add	r3, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_clear(PLT)
	movs	r3, #1
	str	r3, [r7, #28]
.L157:
	ldrsb	r3, [r7, #27]
	mov	r2, r3
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	uECC_vli_set(PLT)
	ldrsb	r3, [r7, #27]
	mov	r2, r3
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #8]
	bl	uECC_vli_set(PLT)
	add	r2, r7, #28
	ldr	r3, [r7]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #20]
	bl	apply_z(PLT)
	ldr	r3, [r7]
	ldr	r4, [r3, #164]
	add	r2, r7, #28
	ldr	r3, [r7]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #20]
	blx	r4
	add	r2, r7, #28
	ldr	r3, [r7]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	apply_z(PLT)
	nop
	ldr	r2, .L159+8
.LPIC27:
	add	r2, pc
	ldr	r3, .L159+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L158
	bl	__stack_chk_fail(PLT)
.L158:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L160:
	.align	2
.L159:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+4)
	.size	XYcZ_initial_double, .-XYcZ_initial_double
	.align	1
	.global	XYcZ_add
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_add, %function
XYcZ_add:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #72]
	str	r3, [r7, #4]
	ldr	r2, .L163
.LPIC28:
	add	r2, pc
	ldr	r3, .L163+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #27]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r0, r7, #28
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	add	r1, r7, #28
	add	r3, r7, #28
	ldr	r2, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	add	r2, r7, #28
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #20]
	bl	uECC_vli_modMult_fast(PLT)
	add	r2, r7, #28
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modSub(PLT)
	add	r3, r7, #28
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r1, r7, #28
	add	r0, r7, #28
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #20]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r1, r7, #28
	add	r0, r7, #28
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #16]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r1, r3, #4
	add	r2, r7, #28
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modSub(PLT)
	ldrsb	r2, [r7, #27]
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_set(PLT)
	nop
	ldr	r2, .L163+8
.LPIC29:
	add	r2, pc
	ldr	r3, .L163+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L162
	bl	__stack_chk_fail(PLT)
.L162:
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L164:
	.align	2
.L163:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+4)
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	XYcZ_addC, %function
XYcZ_addC:
	@ args = 4, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #140
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #144]
	str	r3, [r7, #4]
	ldr	r2, .L167
.LPIC30:
	add	r2, pc
	ldr	r3, .L167+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #124]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #27]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r0, r7, #28
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	add	r1, r7, #28
	add	r3, r7, #28
	ldr	r2, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	add	r2, r7, #28
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #20]
	bl	uECC_vli_modMult_fast(PLT)
	add	r2, r7, #28
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r0, r7, #28
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r0, r7, #60
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	add	r2, r7, #60
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #16]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r0, r7, #60
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #20]
	bl	uECC_vli_modAdd(PLT)
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r1, r3, #4
	add	r2, r7, #60
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #12]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r0, r7, #92
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #20]
	bl	uECC_vli_modSub(PLT)
	add	r2, r7, #92
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #8]
	bl	uECC_vli_modSub(PLT)
	add	r1, r7, #28
	add	r3, r7, #92
	ldr	r2, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r4, r3, #4
	add	r2, r7, #60
	add	r1, r7, #92
	add	r0, r7, #92
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r1, r7, #92
	add	r0, r7, #60
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #20]
	bl	uECC_vli_modSub(PLT)
	add	r2, r7, #28
	add	r1, r7, #60
	add	r0, r7, #60
	ldr	r3, [r7, #4]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r1, r7, #60
	ldrsb	r3, [r7, #27]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #16]
	ldr	r0, [r7, #16]
	bl	uECC_vli_modSub(PLT)
	ldrsb	r2, [r7, #27]
	add	r3, r7, #92
	mov	r1, r3
	ldr	r0, [r7, #20]
	bl	uECC_vli_set(PLT)
	nop
	ldr	r2, .L167+8
.LPIC31:
	add	r2, pc
	ldr	r3, .L167+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L166
	bl	__stack_chk_fail(PLT)
.L166:
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L168:
	.align	2
.L167:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.global	EccPoint_mult
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_mult, %function
EccPoint_mult:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #212
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #220]
	str	r3, [r7, #4]
	ldr	r2, .L173
.LPIC32:
	add	r2, pc
	ldr	r3, .L173+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #196]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #29]
	ldrsb	r2, [r7, #29]
	add	r3, r7, #68
	adds	r3, r3, #32
	ldr	r1, [r7, #16]
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	ldrsb	r3, [r7, #29]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldrsb	r2, [r7, #29]
	add	r3, r7, #132
	adds	r3, r3, #32
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	add	r4, r7, #132
	add	r2, r7, #68
	add	r3, r7, #132
	add	r1, r3, #32
	add	r3, r7, #68
	add	r0, r3, #32
	ldr	r3, [r7, #4]
	str	r3, [sp, #4]
	ldr	r3, [r7, #8]
	str	r3, [sp]
	mov	r3, r4
	bl	XYcZ_initial_double(PLT)
	ldrh	r3, [r7, #216]
	subs	r3, r3, #2
	uxth	r3, r3
	strh	r3, [r7, #30]	@ movhi
	b	.L170
.L171:
	ldrsh	r3, [r7, #30]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #68
	lsls	r3, r3, #5
	adds	r0, r2, r3
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #132
	lsls	r3, r3, #5
	adds	r1, r2, r3
	add	r2, r7, #68
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r4, r2, r3
	add	r2, r7, #132
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r4
	bl	XYcZ_addC(PLT)
	add	r2, r7, #68
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r0, r2, r3
	add	r2, r7, #132
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r1, r2, r3
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #68
	lsls	r3, r3, #5
	adds	r4, r2, r3
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #132
	lsls	r3, r3, #5
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r4
	bl	XYcZ_add(PLT)
	ldrh	r3, [r7, #30]
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #30]	@ movhi
.L170:
	ldrsh	r3, [r7, #30]
	cmp	r3, #0
	bgt	.L171
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #68
	lsls	r3, r3, #5
	adds	r0, r2, r3
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #132
	lsls	r3, r3, #5
	adds	r1, r2, r3
	add	r2, r7, #68
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r4, r2, r3
	add	r2, r7, #132
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r4
	bl	XYcZ_addC(PLT)
	ldr	r3, [r7, #4]
	adds	r4, r3, #4
	add	r2, r7, #68
	add	r3, r7, #68
	add	r1, r3, #32
	add	r0, r7, #36
	ldrsb	r3, [r7, #29]
	str	r3, [sp]
	mov	r3, r4
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #132
	lsls	r3, r3, #5
	add	r2, r2, r3
	add	r1, r7, #36
	add	r0, r7, #36
	ldr	r3, [r7, #4]
	bl	uECC_vli_modMult_fast(PLT)
	add	r1, r7, #36
	add	r0, r7, #36
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrsb	r3, [r7, #29]
	add	r1, r7, #36
	add	r0, r7, #36
	bl	uECC_vli_modInv(PLT)
	ldrsb	r3, [r7, #29]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r2, r2, r3
	add	r1, r7, #36
	add	r0, r7, #36
	ldr	r3, [r7, #4]
	bl	uECC_vli_modMult_fast(PLT)
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #68
	lsls	r3, r3, #5
	add	r2, r2, r3
	add	r1, r7, #36
	add	r0, r7, #36
	ldr	r3, [r7, #4]
	bl	uECC_vli_modMult_fast(PLT)
	add	r2, r7, #68
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r0, r2, r3
	add	r2, r7, #132
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r1, r2, r3
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #68
	lsls	r3, r3, #5
	adds	r4, r2, r3
	ldr	r3, [r7, #32]
	rsb	r3, r3, #1
	add	r2, r7, #132
	lsls	r3, r3, #5
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r4
	bl	XYcZ_add(PLT)
	add	r2, r7, #36
	add	r1, r7, #132
	add	r0, r7, #68
	ldr	r3, [r7, #4]
	bl	apply_z(PLT)
	ldrsb	r2, [r7, #29]
	add	r3, r7, #68
	mov	r1, r3
	ldr	r0, [r7, #20]
	bl	uECC_vli_set(PLT)
	ldrsb	r3, [r7, #29]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrsb	r2, [r7, #29]
	add	r1, r7, #132
	mov	r0, r3
	bl	uECC_vli_set(PLT)
	nop
	ldr	r2, .L173+8
.LPIC33:
	add	r2, pc
	ldr	r3, .L173+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #196]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L172
	bl	__stack_chk_fail(PLT)
.L172:
	adds	r7, r7, #204
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L174:
	.align	2
.L173:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.size	EccPoint_mult, .-EccPoint_mult
	.align	1
	.global	regularize_k
	.syntax unified
	.thumb
	.thumb_func
	.type	regularize_k, %function
regularize_k:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	strb	r3, [r7, #17]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]	@ movhi
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7]
	add	r2, r3, #36
	ldrsb	r3, [r7, #17]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #8]
	bl	uECC_vli_add(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L176
	ldrsh	r2, [r7, #18]
	ldrsb	r3, [r7, #17]
	lsls	r3, r3, #5
	cmp	r2, r3
	bge	.L177
	ldrsh	r3, [r7, #18]
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_testBit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L177
.L176:
	movs	r3, #1
	b	.L178
.L177:
	movs	r3, #0
.L178:
	str	r3, [r7, #20]
	ldr	r3, [r7]
	add	r2, r3, #36
	ldrsb	r3, [r7, #17]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #4]
	bl	uECC_vli_add(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	regularize_k, .-regularize_k
	.align	1
	.global	EccPoint_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_compute_public_key, %function
EccPoint_compute_public_key:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L185
.LPIC34:
	add	r2, pc
	ldr	r3, .L185+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #92]
	mov	r3, #0
	add	r3, r7, #28
	str	r3, [r7, #20]
	add	r3, r7, #60
	str	r3, [r7, #24]
	add	r2, r7, #60
	add	r1, r7, #28
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	bl	regularize_k(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	add	r1, r3, #68
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	lsls	r3, r3, #2
	adds	r3, r3, #96
	add	r3, r3, r7
	ldr	r0, [r3, #-76]
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r3, r3
	sxth	r3, r3
	ldr	r2, [r7, #4]
	str	r2, [sp, #4]
	str	r3, [sp]
	movs	r3, #0
	mov	r2, r0
	ldr	r0, [r7, #12]
	bl	EccPoint_mult(PLT)
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	EccPoint_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L181
	movs	r3, #0
	b	.L183
.L181:
	movs	r3, #1
.L183:
	ldr	r1, .L185+8
.LPIC35:
	add	r1, pc
	ldr	r2, .L185+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #92]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L184
	bl	__stack_chk_fail(PLT)
.L184:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L186:
	.align	2
.L185:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	1
	.global	uECC_vli_nativeToBytes
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_nativeToBytes, %function
uECC_vli_nativeToBytes:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #19]
	b	.L188
.L189:
	ldr	r3, [r7, #8]
	subs	r2, r3, #1
	ldrsb	r3, [r7, #19]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	and	r3, r3, #3
	lsls	r3, r3, #3
	lsr	r1, r2, r3
	ldrsb	r3, [r7, #19]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #19]
.L188:
	ldrsb	r3, [r7, #19]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bgt	.L189
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	1
	.global	uECC_vli_bytesToNative
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_bytesToNative, %function
uECC_vli_bytesToNative:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	sxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_clear(PLT)
	movs	r3, #0
	strb	r3, [r7, #19]
	b	.L191
.L192:
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	ldrsb	r3, [r7, #19]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldrsb	r3, [r7, #19]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	and	r3, r3, #3
	lsls	r3, r3, #3
	lsls	r2, r2, r3
	ldr	r3, [r7, #20]
	bic	r3, r3, #3
	ldr	r0, [r7, #12]
	add	r3, r3, r0
	orrs	r2, r2, r1
	str	r2, [r3]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #19]
.L191:
	ldrsb	r3, [r7, #19]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bgt	.L192
	nop
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	1
	.global	uECC_generate_random_int
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_generate_random_int, %function
uECC_generate_random_int:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	mov	r3, #-1
	str	r3, [r7, #28]
	ldrsb	r3, [r7, #7]
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_numBits(PLT)
	mov	r3, r0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, .L200
.LPIC36:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L194
	movs	r3, #0
	b	.L195
.L194:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L196
.L199:
	ldr	r3, .L200+4
.LPIC37:
	add	r3, pc
	ldr	r3, [r3]
	ldrsb	r2, [r7, #7]
	lsls	r2, r2, #2
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L197
	movs	r3, #0
	b	.L195
.L197:
	ldrsb	r3, [r7, #7]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldrsb	r3, [r7, #7]
	uxth	r3, r3
	lsls	r3, r3, #5
	uxth	r2, r3
	ldrh	r3, [r7, #22]
	subs	r3, r2, r3
	uxth	r3, r3
	sxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #28]
	lsr	r2, r3, r2
	ldrsb	r3, [r7, #7]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r0, [r7, #12]
	add	r3, r3, r0
	ands	r2, r2, r1
	str	r2, [r3]
	ldrsb	r3, [r7, #7]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L198
	ldrsb	r3, [r7, #7]
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #8]
	bl	uECC_vli_cmp(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L198
	movs	r3, #1
	b	.L195
.L198:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L196:
	ldr	r3, [r7, #24]
	cmp	r3, #63
	bls	.L199
	movs	r3, #0
.L195:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L201:
	.align	2
.L200:
	.word	g_rng_function-(.LPIC36+4)
	.word	g_rng_function-(.LPIC37+4)
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.global	uECC_valid_point
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_valid_point, %function
uECC_valid_point:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L210
.LPIC38:
	add	r2, pc
	ldr	r3, .L210+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #76]
	mov	r3, #0
	ldr	r3, [r7]
	ldrb	r3, [r3]
	strb	r3, [r7, #11]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	EccPoint_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L203
	mov	r3, #-1
	b	.L208
.L203:
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrsb	r2, [r7, #11]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L205
	ldr	r3, [r7]
	adds	r0, r3, #4
	ldrsb	r3, [r7, #11]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrsb	r2, [r7, #11]
	mov	r1, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L206
.L205:
	mvn	r3, #1
	b	.L208
.L206:
	ldrsb	r3, [r7, #11]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r2, [r7]
	mov	r0, r3
	bl	uECC_vli_modSquare_fast(PLT)
	ldr	r3, [r7]
	ldr	r3, [r3, #168]
	add	r0, r7, #44
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	blx	r3
	ldrsb	r2, [r7, #11]
	add	r1, r7, #44
	add	r3, r7, #12
	mov	r0, r3
	bl	uECC_vli_equal(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L207
	mvn	r3, #2
	b	.L208
.L207:
	movs	r3, #0
.L208:
	ldr	r1, .L210+8
.LPIC39:
	add	r1, pc
	ldr	r2, .L210+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #76]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L209
	bl	__stack_chk_fail(PLT)
.L209:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L211:
	.align	2
.L210:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+4)
	.size	uECC_valid_point, .-uECC_valid_point
	.align	1
	.global	uECC_valid_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_valid_public_key, %function
uECC_valid_public_key:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L217
.LPIC40:
	add	r2, pc
	ldr	r3, .L217+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #76]
	mov	r3, #0
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	ldr	r3, [r7]
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #12
	adds	r0, r2, r3
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r1, r3, r2
	ldr	r3, [r7]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	bl	uECC_vli_bytesToNative(PLT)
	ldr	r3, [r7]
	add	r1, r3, #68
	add	r3, r7, #12
	movs	r2, #16
	mov	r0, r3
	bl	uECC_vli_cmp_unsafe(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L213
	mvn	r3, #3
	b	.L215
.L213:
	add	r3, r7, #12
	ldr	r1, [r7]
	mov	r0, r3
	bl	uECC_valid_point(PLT)
	mov	r3, r0
.L215:
	ldr	r1, .L217+8
.LPIC41:
	add	r1, pc
	ldr	r2, .L217+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #76]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L216
	bl	__stack_chk_fail(PLT)
.L216:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L218:
	.align	2
.L217:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC40+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC41+4)
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	1
	.global	uECC_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #120
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L226
.LPIC42:
	add	r2, pc
	ldr	r3, .L226+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #116]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #7
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	mov	r2, r3
	add	r3, r7, #20
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	uECC_vli_bytesToNative(PLT)
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	sxtb	r2, r3
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	uECC_vli_isZero(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L220
	movs	r3, #0
	b	.L224
.L220:
	ldr	r3, [r7, #4]
	add	r0, r3, #36
	ldr	r3, [r7, #4]
	ldrsh	r3, [r3, #2]
	adds	r3, r3, #31
	add	r2, r3, #31
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #5
	sxtb	r2, r3
	add	r3, r7, #20
	mov	r1, r3
	bl	uECC_vli_cmp(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L222
	movs	r3, #0
	b	.L224
.L222:
	add	r1, r7, #20
	add	r3, r7, #52
	ldr	r2, [r7, #4]
	mov	r0, r3
	bl	EccPoint_compute_public_key(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L223
	movs	r3, #0
	b	.L224
.L223:
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	add	r3, r7, #52
	mov	r2, r3
	ldr	r0, [r7, #8]
	bl	uECC_vli_nativeToBytes(PLT)
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	ldr	r3, [r7, #8]
	adds	r0, r3, r2
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldrsb	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #52
	add	r3, r3, r2
	mov	r2, r3
	bl	uECC_vli_nativeToBytes(PLT)
	movs	r3, #1
.L224:
	ldr	r1, .L226+8
.LPIC43:
	add	r1, pc
	ldr	r2, .L226+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #116]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L225
	bl	__stack_chk_fail(PLT)
.L225:
	mov	r0, r3
	adds	r7, r7, #120
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L227:
	.align	2
.L226:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC42+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC43+4)
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
