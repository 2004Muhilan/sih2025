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
	mov	r8, r10
	mov	r9, #1
	mov	lr, r7
	uxtb	r4, r10
	subs	r2, r6, #4
	str	r4, [sp, #12]
	strd	fp, r2, [sp, #4]
.L12:
	sxtb	r4, r9
	cmp	r10, r4
	ble	.L14
	ldr	r2, [sp, #12]
	subs	r5, r1, r4
	mov	r1, r3
	mov	r3, ip
	sub	r7, r2, r9
	ldr	r2, [sp, #8]
	add	r5, lr, r5, lsl #2
	mov	ip, #0
	uxtab	r7, r4, r7
	add	r4, r4, #1073741824
	subs	r4, r4, #1
	str	r8, [sp]
	add	r7, r2, r7, lsl #2
	add	r4, r6, r4, lsl #2
.L11:
	ldr	r2, [r4, #4]!
	mov	r8, #0
	ldr	fp, [r5], #-4
	umull	r2, fp, fp, r2
	adds	r2, r2, r1
	adcs	fp, fp, r3
	mov	r1, r2
	it	cs
	movcs	r8, #1
	mov	r3, fp
	add	ip, ip, r8
	cmp	r7, r4
	bne	.L11
	ldr	r8, [sp]
.L8:
	str	r1, [r0, r8, lsl #2]
	add	r8, r8, #1
	ldr	r2, [sp, #4]
	add	r9, r9, #1
	sxtb	r8, r8
	uxtb	r9, r9
	mov	r1, r8
	cmp	r8, r2
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
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_modInv_update, %function
vli_modInv_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	lsl	lr, r2, #2
	ldr	r4, [r0]
	add	r3, r0, lr
	ands	r4, r4, #1
	beq	.L22
	cmp	r2, #0
	ble	.L23
	sub	r6, lr, #4
	sub	ip, r0, #4
	subs	r5, r1, #4
	add	r6, r6, r0
	movs	r4, #0
.L24:
	ldr	r1, [ip, #4]!
	ldr	r2, [r5, #4]!
	add	r2, r2, r1
	add	r2, r2, r4
	str	r2, [ip]
	cmp	r1, r2
	it	ne
	movne	r4, #0
	it	hi
	orrhi	r4, r4, #1
	cmp	r6, ip
	bne	.L24
	cmp	r0, r3
	bcs	.L29
.L26:
	movs	r1, #0
.L30:
	ldr	r2, [r3, #-4]!
	cmp	r0, r3
	orr	r5, r1, r2, lsr #1
	lsl	r1, r2, #31
	str	r5, [r3]
	bcc	.L30
.L29:
	cbz	r4, .L21
	sub	lr, lr, #4
	ldr	r3, [r0, lr]
	orr	r3, r3, #-2147483648
	str	r3, [r0, lr]
.L21:
	pop	{r4, r5, r6, pc}
.L22:
	cmp	r0, r3
	bcc	.L26
	pop	{r4, r5, r6, pc}
.L23:
	cmp	r0, r3
	it	cc
	movcc	r4, #0
	bcc	.L26
	pop	{r4, r5, r6, pc}
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.p2align 2,,3
	.global	vli_mmod_fast_secp256r1
	.syntax unified
	.thumb
	.thumb_func
	.type	vli_mmod_fast_secp256r1, %function
vli_mmod_fast_secp256r1:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	adds	r3, r1, #4
	cmp	r0, r3
	sub	sp, sp, #20
	ldr	r3, [r1]
	beq	.L40
	ldr	r2, [r1, #4]
	strd	r3, r2, [r0]
	ldrd	r3, r2, [r1, #8]
	strd	r3, r2, [r0, #8]
	ldrd	r3, r2, [r1, #16]
	strd	r3, r2, [r0, #16]
	ldrd	r3, r2, [r1, #24]
	strd	r3, r2, [r0, #24]
.L41:
	ldrd	r3, r5, [r1, #44]
	ldrd	r4, r7, [r1, #52]
	lsl	fp, r3, #1
	ldr	r2, [r1, #60]
	cmp	r3, fp
	ldr	r8, [r0, #16]
	ite	ls
	movls	r3, #0
	movhi	r3, #1
	add	r6, r3, r5, lsl #1
	cmp	r3, #0
	sub	r9, r5, r6
	it	eq
	moveq	r3, #0
	clz	r9, r9
	ldr	lr, [r0, #20]
	ldr	ip, [r0, #24]
	lsr	r9, r9, #5
	it	ne
	movne	r3, r9
	cmp	r5, r6
	it	hi
	orrhi	r3, r3, #1
	add	r10, r3, r4, lsl #1
	and	r3, r3, #1
	cmp	r4, r10
	add	r10, r10, lr
	it	ne
	movne	r3, #0
	ldr	r4, [r0, #28]
	it	hi
	orrhi	r3, r3, #1
	add	r9, r3, r7, lsl #1
	and	r3, r3, #1
	cmp	r7, r9
	add	r9, r9, ip
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	add	r7, r3, r2, lsl #1
	cmp	r2, r7
	add	r7, r7, r4
	it	eq
	moveq	r2, r3
	ldr	r3, [r0, #12]
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	adds	r5, r3, fp
	adc	r6, r8, r6
	it	cs
	movcs	fp, #1
	sub	r3, r8, r6
	it	cc
	movcc	fp, #0
	clz	r3, r3
	cmp	fp, #0
	strd	r5, r6, [r0, #12]
	lsr	r3, r3, #5
	it	eq
	moveq	r3, #0
	cmp	r8, r6
	it	hi
	orrhi	r3, r3, #1
	add	r10, r10, r3
	and	r3, r3, #1
	cmp	lr, r10
	str	r10, [r0, #20]
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	add	r9, r9, r3
	and	r3, r3, #1
	cmp	ip, r9
	str	r9, [r0, #24]
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	add	r7, r7, r3
	str	r7, [r0, #28]
	cmp	r4, r7
	it	ne
	movne	r3, #0
	ldr	ip, [r1, #56]
	it	hi
	orrhi	r3, r3, #1
	add	r3, r3, r2
	str	r3, [sp]
	ldrd	r2, r4, [r1, #48]
	ldr	r3, [r1, #60]
	lsl	r8, r2, #1
	cmp	r2, r8
	ite	ls
	movls	fp, #0
	movhi	fp, #1
	add	lr, fp, r4, lsl #1
	cmp	fp, #0
	sub	r2, r4, lr
	clz	r2, r2
	lsr	r2, r2, #5
	it	eq
	moveq	r2, #0
	cmp	r4, lr
	it	hi
	orrhi	r2, r2, #1
	add	r4, r2, ip, lsl #1
	and	r2, r2, #1
	cmp	ip, r4
	add	r4, r4, r10
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	add	ip, r2, r3, lsl #1
	and	r2, r2, #1
	cmp	r3, ip
	add	ip, ip, r9
	it	ne
	movne	r2, #0
	ldr	r3, [sp]
	it	hi
	orrhi	r2, r2, #1
	adds	r8, r8, r5
	adc	lr, lr, r6
	it	cs
	movcs	fp, #1
	sub	r5, lr, r6
	it	cc
	movcc	fp, #0
	clz	r5, r5
	cmp	fp, #0
	add	r2, r2, r7
	strd	r8, lr, [r0, #12]
	lsr	r5, r5, #5
	it	eq
	moveq	r5, #0
	cmp	lr, r6
	it	cc
	orrcc	r5, r5, #1
	add	r4, r4, r5
	and	r5, r5, #1
	cmp	r4, r10
	str	r4, [r0, #20]
	it	ne
	movne	r5, #0
	it	cc
	orrcc	r5, r5, #1
	add	ip, ip, r5
	and	r5, r5, #1
	cmp	ip, r9
	str	ip, [r0, #24]
	it	ne
	movne	r5, #0
	it	cc
	orrcc	r5, r5, #1
	add	r2, r2, r5
	str	r2, [r0, #28]
	cmp	r2, r7
	it	ne
	movne	r5, #0
	ldr	r7, [r1, #32]
	it	cc
	orrcc	r5, r5, #1
	ldr	r6, [r1, #36]
	add	r3, r3, r5
	ldr	r5, [r0]
	str	r3, [sp, #8]
	adds	r5, r7, r5
	str	r5, [sp, #4]
	ldr	r5, [r0, #4]
	ldr	r3, [r1, #40]
	ldr	r7, [r0, #8]
	adc	r6, r6, r5
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	add	r3, r3, r7
	ldr	r7, [r0, #4]
	cmp	r5, #0
	ldr	r5, [sp, #4]
	sub	r9, r6, r7
	clz	r9, r9
	lsr	r9, r9, #5
	it	eq
	moveq	r9, #0
	cmp	r6, r7
	it	cc
	orrcc	r9, r9, #1
	ldr	r7, [r0, #8]
	add	r3, r3, r9
	and	r9, r9, #1
	cmp	r3, r7
	str	r3, [sp]
	it	ne
	movne	r9, #0
	ldr	r3, [r1, #56]
	it	cc
	orrcc	r9, r9, #1
	add	r10, r3, ip
	adds	r3, r9, r8
	ite	cs
	movcs	fp, #1
	movcc	fp, #0
	cmp	r3, r8
	ite	ne
	movne	r9, #0
	andeq	r9, r9, #1
	mov	r7, r3
	orr	fp, r9, fp
	ldr	r3, [sp]
	ldr	r9, [r1, #60]
	str	r7, [sp, #12]
	str	r7, [r0, #12]
	adds	r7, fp, lr
	str	r3, [r0, #8]
	ite	cs
	movcs	r8, #1
	movcc	r8, #0
	cmp	r7, lr
	ite	ne
	movne	r3, #0
	andeq	r3, fp, #1
	orr	r3, r3, r8
	add	r9, r9, r2
	adds	r8, r3, r4
	strd	r5, r6, [r0]
	ite	cs
	movcs	lr, #1
	movcc	lr, #0
	cmp	r8, r4
	ite	ne
	movne	r3, #0
	andeq	r3, r3, #1
	str	r8, [r0, #20]
	orr	r3, r3, lr
	str	r7, [r0, #16]
	add	lr, r10, r3
	and	r3, r3, #1
	cmp	lr, ip
	str	lr, [r0, #24]
	it	ne
	movne	r3, #0
	str	r7, [sp, #4]
	it	cc
	orrcc	r3, r3, #1
	add	r4, r9, r3
	str	r4, [r0, #28]
	cmp	r4, r2
	ldr	r2, [sp, #8]
	it	ne
	movne	r3, #0
	ldr	r7, [r1, #40]
	it	cc
	orrcc	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r1, #36]
	str	r3, [sp, #8]
	adds	ip, r2, r5
	ldr	r3, [sp]
	adc	r7, r7, r6
	it	cs
	movcs	r9, #1
	sub	r10, r7, r6
	it	cc
	movcc	r9, #0
	clz	r10, r10
	cmp	r9, #0
	ldr	r2, [r1, #44]
	lsr	r10, r10, #5
	it	eq
	moveq	r10, #0
	cmp	r7, r6
	it	cc
	orrcc	r10, r10, #1
	add	r2, r2, r3
	add	r9, r2, r10
	ldr	r6, [sp, #4]
	ldrd	r5, r2, [r1, #52]
	cmp	r9, r3
	ldr	r3, [sp, #12]
	and	fp, r10, #1
	it	ne
	movne	fp, #0
	add	r2, r2, r6
	it	cc
	orrcc	fp, fp, #1
	adds	r6, r5, r3
	add	r6, r6, fp
	and	fp, fp, #1
	cmp	r6, r3
	ldr	r3, [sp, #4]
	it	ne
	movne	fp, #0
	add	r10, r5, lr
	it	cc
	orrcc	fp, fp, #1
	add	r5, r2, fp
	and	r2, fp, #1
	cmp	r5, r3
	ldr	r3, [r1, #60]
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	add	fp, r3, r8
	add	fp, fp, r2
	cmp	fp, r8
	and	r8, r2, #1
	it	ne
	movne	r8, #0
	it	cc
	orrcc	r8, r8, #1
	add	r2, r10, r8
	and	r8, r8, #1
	cmp	r2, lr
	ldr	lr, [r1, #32]
	it	ne
	movne	r8, #0
	strd	ip, r7, [r0]
	it	cc
	orrcc	r8, r8, #1
	add	lr, lr, r4
	add	lr, lr, r8
	strd	r5, fp, [r0, #16]
	cmp	lr, r4
	strd	r9, r6, [r0, #8]
	str	r2, [r0, #24]
	it	eq
	moveq	r4, r8
	str	lr, [r0, #28]
	it	ne
	movne	r4, #0
	ldr	r3, [sp, #8]
	it	cc
	orrcc	r4, r4, #1
	add	r3, r3, r4
	str	r3, [sp, #4]
	ldr	r3, [r1, #44]
	subs	r10, ip, r3
	ldr	r3, [r1, #48]
	ite	cc
	movcc	r4, #1
	movcs	r4, #0
	sbc	ip, r7, r3
	ldr	r3, [r1, #52]
	cmp	ip, r7
	it	ne
	movne	r4, #0
	sub	r3, r9, r3
	it	hi
	orrhi	r4, r4, #1
	subs	r7, r3, r4
	and	r3, r4, #1
	cmp	r7, r9
	ldr	r4, [r1, #32]
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	subs	r4, r2, r4
	subs	r8, r6, r3
	str	r4, [sp]
	ite	cc
	movcc	r4, #1
	movcs	r4, #0
	cmp	r8, r6
	it	ne
	movne	r3, #0
	orrs	r3, r3, r4
	ldr	r4, [r1, #40]
	subs	r6, r5, r3
	strd	r10, ip, [r0]
	sub	r9, lr, r4
	ite	cc
	movcc	r4, #1
	movcs	r4, #0
	cmp	r6, r5
	it	ne
	movne	r3, #0
	orrs	r3, r3, r4
	strd	r7, r8, [r0, #8]
	subs	r4, fp, r3
	str	r6, [r0, #16]
	ite	cc
	movcc	r5, #1
	movcs	r5, #0
	cmp	r4, fp
	ite	ne
	movne	r3, #0
	andeq	r3, r3, #1
	str	r4, [r0, #20]
	orrs	r3, r3, r5
	ldr	r5, [sp]
	subs	r5, r5, r3
	and	r3, r3, #1
	cmp	r5, r2
	str	r5, [r0, #24]
	it	ne
	movne	r3, #0
	ldr	r2, [sp, #4]
	it	hi
	orrhi	r3, r3, #1
	str	r5, [sp]
	sub	r9, r9, r3
	str	r9, [r0, #28]
	cmp	r9, lr
	it	ne
	movne	r3, #0
	ldr	r5, [r1, #56]
	it	hi
	orrhi	r3, r3, #1
	subs	r3, r2, r3
	ldr	r2, [r1, #48]
	str	r3, [sp, #4]
	subs	lr, r10, r2
	ldr	r2, [r1, #52]
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	add	r2, r2, r3
	subs	r10, ip, r2
	ite	cc
	movcc	fp, #1
	movcs	fp, #0
	cmp	r10, ip
	it	ne
	movne	r3, #0
	orr	r2, r3, fp
	ldr	r3, [r1, #60]
	sub	ip, r7, r2
	sub	ip, ip, r5
	sub	r3, r8, r3
	cmp	ip, r7
	it	ne
	movne	r2, #0
	it	hi
	orrhi	r2, r2, #1
	subs	r7, r3, r2
	cmp	r7, r8
	ite	eq
	moveq	r3, r2
	movne	r3, #0
	ldr	r2, [r1, #36]
	it	hi
	orrhi	r3, r3, #1
	ldr	r5, [sp]
	subs	r8, r6, r3
	sub	fp, r5, r2
	ite	cc
	movcc	r2, #1
	movcs	r2, #0
	cmp	r8, r6
	it	ne
	movne	r3, #0
	orrs	r3, r3, r2
	ldr	r2, [r1, #44]
	subs	r6, r4, r3
	strd	lr, r10, [r0]
	ite	cc
	movcc	r5, #1
	movcs	r5, #0
	cmp	r6, r4
	it	ne
	movne	r3, #0
	ldr	r4, [sp]
	orrs	r3, r3, r5
	sub	r2, r9, r2
	sub	fp, fp, r3
	strd	ip, r7, [r0, #8]
	cmp	fp, r4
	str	r8, [r0, #16]
	it	ne
	movne	r3, #0
	str	fp, [r0, #24]
	it	hi
	orrhi	r3, r3, #1
	str	r6, [r0, #20]
	subs	r2, r2, r3
	ldr	r4, [sp, #4]
	cmp	r2, r9
	str	r2, [r0, #28]
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	ldr	r5, [r1, #60]
	subs	r3, r4, r3
	str	r3, [sp]
	ldr	r3, [r1, #52]
	ldr	r4, [r1, #56]
	subs	r3, lr, r3
	ite	cc
	movcc	r9, #1
	movcs	r9, #0
	add	r4, r4, r9
	subs	lr, r10, r4
	ite	cc
	movcc	r4, #1
	movcs	r4, #0
	cmp	r10, lr
	it	ne
	movne	r9, #0
	orr	r4, r9, r4
	sub	r9, ip, r4
	sub	r9, r9, r5
	ldr	r5, [r1, #32]
	cmp	ip, r9
	ite	eq
	moveq	r10, r4
	movne	r10, #0
	it	cc
	orrcc	r10, r10, #1
	ldr	r4, [r1, #36]
	sub	ip, r7, r10
	sub	ip, ip, r5
	sub	r4, r8, r4
	cmp	r7, ip
	it	ne
	movne	r10, #0
	it	cc
	orrcc	r10, r10, #1
	sub	r7, r4, r10
	ldr	r4, [r1, #40]
	cmp	r8, r7
	it	ne
	movne	r10, #0
	sub	r4, r6, r4
	it	cc
	orrcc	r10, r10, #1
	sub	r8, r4, r10
	cmp	r6, r8
	ldr	r6, [r1, #48]
	ite	eq
	moveq	r4, r10
	movne	r4, #0
	it	cc
	orrcc	r4, r4, #1
	subs	r6, r2, r6
	subs	r10, fp, r4
	strd	r3, lr, [r0]
	ite	cc
	movcc	r5, #1
	movcs	r5, #0
	cmp	fp, r10
	it	ne
	movne	r4, #0
	strd	r7, r8, [r0, #16]
	orrs	r4, r4, r5
	strd	r9, ip, [r0, #8]
	subs	r6, r6, r4
	str	r10, [r0, #24]
	cmp	r6, r2
	str	r6, [r0, #28]
	ldr	r2, [sp]
	it	ne
	movne	r4, #0
	it	hi
	orrhi	r4, r4, #1
	ldr	r5, [r1, #36]
	subs	r2, r2, r4
	str	r2, [sp, #4]
	ldr	r2, [r1, #60]
	ldr	r4, [r1, #56]
	subs	fp, r3, r4
	ldr	r3, [r1, #40]
	str	r3, [sp, #8]
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	add	r2, r2, r3
	subs	r2, lr, r2
	ite	cc
	movcc	r4, #1
	movcs	r4, #0
	cmp	lr, r2
	it	ne
	movne	r3, #0
	orrs	r3, r3, r4
	ldr	r4, [r1, #44]
	str	r4, [sp, #12]
	ldr	r4, [r1, #52]
	subs	r1, r9, r3
	ite	cc
	movcc	lr, #1
	movcs	lr, #0
	cmp	r9, r1
	it	ne
	movne	r3, #0
	str	r1, [r0, #8]
	orr	r3, r3, lr
	str	r1, [sp]
	add	r5, r5, r3
	ldr	r1, [sp, #8]
	subs	r5, ip, r5
	strd	fp, r2, [r0]
	ite	cc
	movcc	r9, #1
	movcs	r9, #0
	cmp	ip, r5
	it	ne
	movne	r3, #0
	str	r5, [r0, #12]
	orr	r3, r3, r9
	sub	ip, r7, r3
	sub	ip, ip, r1
	ldr	r1, [sp, #12]
	cmp	r7, ip
	str	ip, [r0, #16]
	it	ne
	movne	r3, #0
	it	cc
	orrcc	r3, r3, #1
	sub	r7, r8, r3
	subs	r7, r7, r1
	ldr	r1, [sp, #4]
	cmp	r8, r7
	str	r7, [r0, #20]
	ite	eq
	moveq	lr, r3
	movne	lr, #0
	it	cc
	orrcc	lr, lr, #1
	subs	r3, r10, lr
	str	r3, [r0, #24]
	ite	cc
	movcc	r8, #1
	movcs	r8, #0
	cmp	r10, r3
	it	ne
	movne	lr, #0
	orr	lr, lr, r8
	sub	r8, r6, lr
	sub	r4, r8, r4
	str	r4, [r0, #28]
	cmp	r4, r6
	ite	eq
	moveq	r6, lr
	movne	r6, #0
	it	hi
	orrhi	r6, r6, #1
	subs	r6, r1, r6
	bmi	.L120
	cmp	r6, #0
	beq	.L97
.L121:
	ldrd	ip, r9, [r0]
	ldrd	lr, r2, [r0, #8]
	ldrd	r7, r5, [r0, #16]
	ldr	r1, [r0, #24]
.L98:
	add	r3, ip, #1
	str	r3, [r0]
	cmp	r3, ip
	ite	hi
	movhi	r8, r9
	addls	r8, r9, #1
	cmp	r3, ip
	ite	ls
	movls	r3, #0
	movhi	r3, #1
	cmp	r8, r9
	and	r3, r3, #1
	it	ne
	movne	r3, #0
	add	ip, lr, #1
	it	hi
	orrhi	r3, r3, #1
	str	r8, [r0, #4]
	sub	ip, ip, r3
	and	r3, r3, #1
	cmp	ip, lr
	str	ip, [r0, #8]
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	subs	lr, r2, r3
	str	lr, [r0, #12]
	ite	cc
	movcc	ip, #1
	movcs	ip, #0
	cmp	lr, r2
	ite	ne
	movne	r3, #0
	andeq	r3, r3, #1
	orr	r3, ip, r3
	add	ip, r1, #-1
	subs	lr, r7, r3
	str	lr, [r0, #16]
	ite	cc
	movcc	r2, #1
	movcs	r2, #0
	cmp	lr, r7
	ite	ne
	movne	r3, #0
	andeq	r3, r3, #1
	adds	r7, r4, #1
	orrs	r2, r2, r3
	subs	lr, r5, r2
	str	lr, [r0, #20]
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	cmp	lr, r5
	ite	ne
	movne	r2, #0
	andeq	r2, r2, #1
	orrs	r3, r3, r2
	sub	r2, ip, r3
	and	r3, r3, #1
	cmp	r2, r1
	str	r2, [r0, #24]
	it	ne
	movne	r3, #0
	it	hi
	orrhi	r3, r3, #1
	subs	r7, r7, r3
	and	r3, r3, #1
	cmp	r7, r4
	str	r7, [r0, #28]
	it	ne
	movne	r3, #0
	mov	r4, r7
	it	hi
	orrhi	r3, r3, #1
	subs	r6, r6, r3
	cmp	r6, #0
	bne	.L121
.L97:
	adds	r3, r4, #1
	bne	.L39
	ldr	r1, [r0, #24]
	cmp	r1, #0
	beq	.L39
	ldrd	r7, r5, [r0, #16]
	cmp	r1, #1
	ldrd	lr, r2, [r0, #8]
	bne	.L119
	cmp	r5, #0
	bne	.L119
	cmp	r7, #0
	bne	.L119
	cmp	r2, #0
	bne	.L119
	cmp	lr, #-1
	bne	.L39
	ldr	r3, [r0, #4]
	adds	r3, r3, #1
	bne	.L39
	ldr	r9, [r0]
	cmp	r9, #-1
	bne	.L39
	movs	r5, #0
	mov	ip, lr
	mov	r7, r5
	b	.L98
.L120:
	ldr	r1, [sp]
	add	r8, fp, #-1
.L95:
	adds	lr, r8, #1
	add	r10, r2, #-1
	it	ne
	movne	lr, #1
	mov	r9, r2
	add	r2, r10, lr
	and	lr, lr, #1
	cmp	r9, r2
	add	r10, r1, #-1
	it	ne
	movne	lr, #0
	mov	r9, r1
	it	hi
	orrhi	lr, lr, #1
	add	r1, r10, lr
	and	lr, lr, #1
	cmp	r9, r1
	mov	r10, r5
	it	ne
	movne	lr, #0
	it	hi
	orrhi	lr, lr, #1
	adds	r5, r5, lr
	ite	cs
	movcs	r9, #1
	movcc	r9, #0
	cmp	r10, r5
	ite	ne
	movne	lr, #0
	andeq	lr, lr, #1
	mov	r10, ip
	orr	lr, r9, lr
	adds	ip, ip, lr
	ite	cs
	movcs	r9, #1
	movcc	r9, #0
	cmp	r10, ip
	ite	ne
	movne	lr, #0
	andeq	lr, lr, #1
	mov	r10, r7
	orr	r9, r9, lr
	adds	r7, r7, r9
	ite	cs
	movcs	lr, #1
	movcc	lr, #0
	cmp	r10, r7
	ite	ne
	movne	r9, #0
	andeq	r9, r9, #1
	add	r10, r3, #1
	orr	lr, lr, r9
	mov	r9, r3
	add	r3, r10, lr
	and	lr, lr, #1
	cmp	r9, r3
	add	r10, r4, #-1
	it	ne
	movne	lr, #0
	mov	r9, r4
	it	hi
	orrhi	lr, lr, #1
	add	r4, r10, lr
	and	lr, lr, #1
	cmp	r9, r4
	mov	r9, r8
	it	ne
	movne	lr, #0
	add	r8, r8, #-1
	it	hi
	orrhi	lr, lr, #1
	adds	r6, lr, r6
	bne	.L95
	str	r1, [sp]
	strd	r9, r2, [r0]
	strd	r1, r5, [r0, #8]
	strd	ip, r7, [r0, #16]
	strd	r3, r4, [r0, #24]
.L39:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L119:
	ldrd	ip, r9, [r0]
	b	.L98
.L40:
	strd	r3, r3, [r1, #4]
	strd	r3, r3, [r1, #12]
	strd	r3, r3, [r1, #20]
	strd	r3, r3, [r1, #28]
	b	.L41
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modInv.part.0, %function
uECC_vli_modInv.part.0:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	fp, r3, #0
	ldr	r5, .L196
	ldr	r4, .L196+4
	sub	sp, sp, #220
.LPIC1:
	add	r5, pc
	ldr	r4, [r5, r4]
	ldr	r4, [r4]
	str	r4, [sp, #212]
	mov	r4, #0
	str	r0, [sp, #76]
	str	r2, [sp, #8]
	ble	.L123
	uxtb	r4, fp
	add	r3, sp, #84
	mov	r5, r2
	mov	r0, r3
	lsls	r4, r4, #2
	str	r3, [sp, #32]
	mov	r2, r4
	bl	memcpy(PLT)
	add	r3, sp, #116
	mov	r2, r4
	mov	r1, r5
	mov	r0, r3
	str	r3, [sp, #16]
	bl	memcpy(PLT)
	add	r3, sp, #148
	mov	r2, r4
	movs	r1, #0
	mov	r0, r3
	str	r3, [sp, #12]
	bl	memset(PLT)
	add	r3, sp, #180
	mov	r0, r3
	mov	r2, r4
	movs	r1, #0
	str	r3, [sp, #20]
	movs	r3, #1
	str	r3, [sp, #148]
	bl	memset(PLT)
.L124:
	add	r3, fp, #-1
	lsl	r2, fp, #2
	ldr	r4, [sp, #16]
	rsb	r5, r2, #4
	sxtb	r8, r3
	uxtb	r3, r3
	str	r3, [sp, #72]
	add	r3, r8, #1
	adds	r1, r4, r2
	subs	r5, r5, #8
	lsls	r3, r3, #2
	sub	lr, r1, #4
	add	r4, r4, r3
	str	r1, [sp, #36]
	str	r4, [sp]
	adds	r4, r1, r5
	ldr	r1, [sp, #20]
	add	r7, sp, #112
	ldr	r6, [sp, #32]
	add	ip, sp, #80
	add	r1, r1, r3
	str	r1, [sp, #44]
	ldr	r1, [sp, #12]
	adds	r0, r6, r2
	str	r2, [sp, #68]
	add	r2, sp, #176
	str	r2, [sp, #24]
	add	r6, r6, r3
	add	r2, sp, #144
	add	r1, r1, r3
	str	r2, [sp, #28]
	add	r5, r5, r0
	ldr	r2, [sp, #68]
	cmp	r8, #0
	ldr	r3, [sp, #24]
	str	r6, [sp, #4]
	add	r10, ip, r2
	add	r6, r3, r2
	ldr	r3, [sp, #28]
	str	r7, [sp, #56]
	add	r7, r7, r2
	str	lr, [sp, #48]
	add	r9, r3, r2
	sub	lr, r0, #4
	str	r0, [sp, #60]
	str	ip, [sp, #52]
	str	lr, [sp, #64]
	str	r1, [sp, #40]
	blt	.L122
.L125:
	ldrd	r2, r1, [sp]
	mov	r3, r8
	mov	ip, r4
	b	.L154
.L190:
	bcc	.L168
	subs	r3, r3, #1
	lsls	r0, r3, #24
	bmi	.L189
.L154:
	ldr	r4, [r1, #-4]!
	ldr	r0, [r2, #-4]!
	cmp	r4, r0
	bls	.L190
	ldr	r3, [sp, #84]
	mov	r4, ip
	movs	r2, #1
	ands	r3, r3, #1
	beq	.L191
.L184:
	ldr	r3, [sp, #116]
	ands	r3, r3, #1
	beq	.L192
	cmp	r2, #1
	beq	.L133
	cmp	fp, #0
	itt	gt
	movgt	r2, #0
	ldrdgt	ip, r1, [sp, #52]
	ble	.L135
.L145:
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
	cmp	r7, r1
	bne	.L145
.L135:
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	itt	hi
	movhi	r3, #0
	ldrhi	r2, [sp, #48]
	bls	.L148
.L146:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r4
	bne	.L146
.L148:
	ldrd	r1, r2, [sp, #40]
	mov	r3, r8
	mov	ip, r4
	b	.L147
.L193:
	bcc	.L150
	subs	r3, r3, #1
	lsls	r4, r3, #24
	bmi	.L187
.L147:
	ldr	r4, [r2, #-4]!
	ldr	r0, [r1, #-4]!
	cmp	r4, r0
	bls	.L193
.L187:
	mov	r4, ip
	cmp	fp, #0
	ble	.L132
.L160:
	ldrd	r1, ip, [sp, #24]
	movs	r2, #0
.L152:
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
	cmp	r6, r1
	bne	.L152
.L132:
	ldr	r1, [sp, #8]
	mov	r2, fp
	ldr	r0, [sp, #20]
	bl	vli_modInv_update(PLT)
	b	.L125
.L168:
	ldr	r3, [sp, #84]
	mov	r4, ip
	mov	r2, #-1
	ands	r3, r3, #1
	bne	.L184
.L191:
	ldr	r2, [sp, #60]
	ldr	r1, [sp, #32]
	cmp	r2, r1
	it	hi
	ldrhi	r2, [sp, #64]
	bls	.L129
.L127:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r5
	bne	.L127
.L129:
	ldrd	r1, r0, [sp, #8]
	mov	r2, fp
	bl	vli_modInv_update(PLT)
	b	.L125
.L192:
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #16]
	cmp	r2, r1
	it	hi
	ldrhi	r2, [sp, #48]
	bls	.L132
.L131:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r4
	bne	.L131
	ldr	r1, [sp, #8]
	mov	r2, fp
	ldr	r0, [sp, #20]
	bl	vli_modInv_update(PLT)
	b	.L125
.L133:
	cmp	fp, #0
	ble	.L136
	ldrd	r1, ip, [sp, #52]
	movs	r2, #0
.L137:
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
	bne	.L137
.L136:
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #32]
	cmp	r3, r2
	itt	hi
	movhi	r3, #0
	ldrhi	r2, [sp, #64]
	bls	.L140
.L138:
	ldr	r1, [r2]
	orr	r3, r3, r1, lsr #1
	str	r3, [r2], #-4
	lsls	r3, r1, #31
	cmp	r2, r5
	bne	.L138
.L140:
	ldrd	r2, r1, [sp, #40]
	mov	r3, r8
	mov	ip, r4
	b	.L139
.L194:
	bcc	.L142
	subs	r3, r3, #1
	lsls	r0, r3, #24
	bmi	.L186
.L139:
	ldr	r4, [r2, #-4]!
	ldr	r0, [r1, #-4]!
	cmp	r4, r0
	bls	.L194
.L186:
	mov	r4, ip
	cmp	fp, #0
	ble	.L129
.L158:
	ldrd	ip, r1, [sp, #24]
	movs	r2, #0
.L144:
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
	bne	.L144
	ldrd	r1, r0, [sp, #8]
	mov	r2, fp
	bl	vli_modInv_update(PLT)
	b	.L125
.L189:
	cmp	fp, #0
	ble	.L122
	ldr	r2, [sp, #72]
	ldr	r1, [sp, #12]
	adds	r2, r2, #1
	ldr	r0, [sp, #76]
	lsls	r2, r2, #2
	bl	memcpy(PLT)
.L122:
	ldr	r2, .L196+8
	ldr	r3, .L196+4
.LPIC0:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #212]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L195
	add	sp, sp, #220
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L150:
	mov	r4, ip
	cmp	fp, #0
	ble	.L132
	ldr	r3, [sp, #8]
	movs	r2, #0
	ldr	r0, [sp, #24]
	mov	lr, r4
	subs	r1, r3, #4
	ldr	r3, [sp, #68]
	add	ip, r1, r3
.L151:
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
	bne	.L151
	mov	r4, lr
	b	.L160
.L142:
	mov	r4, ip
	cmp	fp, #0
	ble	.L129
	ldr	r3, [sp, #8]
	movs	r2, #0
	ldr	r0, [sp, #28]
	mov	lr, r4
	subs	r1, r3, #4
	ldr	r3, [sp, #68]
	add	ip, r1, r3
.L143:
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
	bne	.L143
	mov	r4, lr
	b	.L158
.L123:
	add	r3, sp, #84
	str	r3, [sp, #32]
	add	r3, sp, #116
	str	r3, [sp, #16]
	movs	r3, #1
	str	r3, [sp, #148]
	add	r3, sp, #148
	str	r3, [sp, #12]
	add	r3, sp, #180
	str	r3, [sp, #20]
	b	.L124
.L195:
	bl	__stack_chk_fail(PLT)
.L197:
	.align	2
.L196:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.size	uECC_vli_modInv.part.0, .-uECC_vli_modInv.part.0
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
	ldr	r3, .L199
.LPIC2:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L200:
	.align	2
.L199:
	.word	.LANCHOR0-(.LPIC2+4)
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
	ldr	r3, .L202
.LPIC3:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L203:
	.align	2
.L202:
	.word	.LANCHOR0-(.LPIC3+4)
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
	ble	.L206
	uxtb	r2, r1
	movs	r1, #0
	lsls	r2, r2, #2
	b	memset(PLT)
.L206:
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
	push	{r4, r5, r6, lr}
	subs	r5, r1, #0
	ble	.L213
	uxtb	r6, r5
	subs	r3, r6, #1
	cmp	r3, #2
	bls	.L214
	lsr	lr, r6, #1
	movs	r2, #0
	mov	r3, r0
	mov	ip, r2
	add	lr, r0, lr, lsl #3
.L211:
	ldrd	r4, r1, [r3]
	adds	r3, r3, #8
	cmp	r3, lr
	orr	r2, r2, r4
	orr	ip, r1, ip
	bne	.L211
	and	r3, r5, #254
	orr	ip, ip, r2
	cmp	r6, r3
	bic	r2, r5, #1
	beq	.L212
.L210:
	ldr	r2, [r0, r2, lsl #2]
	orr	ip, ip, r2
	adds	r2, r3, #1
	sxtb	r1, r2
	uxtb	r2, r2
	cmp	r5, r1
	ble	.L212
	ldr	r2, [r0, r2, lsl #2]
	adds	r3, r3, #2
	orr	ip, ip, r2
	uxtb	r2, r3
	sxtb	r3, r3
	cmp	r5, r3
	itt	gt
	ldrgt	r3, [r0, r2, lsl #2]
	orrgt	ip, ip, r3
.L212:
	clz	r0, ip
	lsrs	r0, r0, #5
	pop	{r4, r5, r6, pc}
.L213:
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L214:
	movs	r2, #0
	mov	ip, r2
	mov	r3, r2
	b	.L210
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
	bmi	.L228
	uxtb	r2, r3
	push	{r4}
	add	r1, r0, r2, lsl #2
	b	.L220
.L221:
	lsls	r4, r3, #24
	bmi	.L236
	mov	r2, r3
.L220:
	ldr	r4, [r1], #-4
	subs	r3, r2, #1
	cmp	r4, #0
	beq	.L221
	adds	r2, r2, #1
.L236:
	sxtb	r1, r2
	cbz	r1, .L225
	add	r3, r1, #1073741824
	subs	r3, r3, #1
	ldr	r3, [r0, r3, lsl #2]
	cbz	r3, .L223
	clz	r3, r3
	rsb	r3, r3, #32
	uxth	r3, r3
.L223:
	subs	r1, r1, #1
	ldr	r4, [sp], #4
	add	r3, r3, r1, lsl #5
	sxth	r0, r3
	bx	lr
.L225:
	mov	r0, r1
	ldr	r4, [sp], #4
	bx	lr
.L228:
	cbz	r1, .L229
	add	r3, r1, #1073741824
	subs	r3, r3, #1
	ldr	r3, [r0, r3, lsl #2]
	cbz	r3, .L232
	clz	r3, r3
	rsb	r3, r3, #32
	uxth	r3, r3
.L232:
	subs	r1, r1, #1
	add	r3, r3, r1, lsl #5
	sxth	r0, r3
	bx	lr
.L229:
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
	subs	r3, r2, #0
	ble	.L247
	push	{r4, r5, r6, lr}
	uxtb	r5, r3
	subs	r2, r5, #1
	cmp	r2, #6
	bls	.L239
	adds	r2, r1, #4
	cmp	r0, r2
	bne	.L250
.L239:
	subs	r1, r1, #4
	subs	r0, r0, #4
	add	r3, r1, r3, lsl #2
.L242:
	ldr	r2, [r1, #4]!
	str	r2, [r0, #4]!
	cmp	r3, r1
	bne	.L242
.L237:
	pop	{r4, r5, r6, pc}
.L250:
	lsr	lr, r5, #1
	mov	r2, r1
	mov	ip, r0
	add	lr, r1, lr, lsl #3
.L240:
	ldrd	r4, r6, [r2]
	adds	r2, r2, #8
	str	r6, [ip, #4]
	cmp	r2, lr
	str	r4, [ip]
	add	ip, ip, #8
	bne	.L240
	and	r3, r3, #254
	cmp	r5, r3
	beq	.L237
	sxth	r3, r3
	ldr	r2, [r1, r3, lsl #2]
	str	r2, [r0, r3, lsl #2]
	pop	{r4, r5, r6, pc}
.L247:
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
	bmi	.L254
	uxtb	r3, r2
	push	{r4}
	lsls	r2, r3, #2
	add	r0, r0, r2
	add	r1, r1, r2
	b	.L253
.L263:
	bcc	.L256
	lsls	r2, r3, #24
	bmi	.L262
.L253:
	ldr	r4, [r0], #-4
	subs	r3, r3, #1
	ldr	r2, [r1], #-4
	cmp	r4, r2
	bls	.L263
	movs	r0, #1
	ldr	r4, [sp], #4
	bx	lr
.L256:
	mov	r0, #-1
	ldr	r4, [sp], #4
	bx	lr
.L262:
	movs	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L254:
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
	bmi	.L267
	uxtb	r2, r3
	push	{lr}
	mov	lr, #0
	lsls	r3, r2, #2
	add	ip, r0, r3
	add	r1, r1, r3
.L266:
	ldr	r3, [ip], #-4
	subs	r2, r2, #1
	ldr	r0, [r1], #-4
	eors	r3, r3, r0
	orr	lr, lr, r3
	lsls	r3, r2, #24
	bpl	.L266
	subs	r0, lr, #0
	it	ne
	movne	r0, #1
	ldr	pc, [sp], #4
.L267:
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
	ble	.L277
	subs	r1, r1, #4
	push	{r4, lr}
	sub	ip, r0, #4
	sub	lr, r2, #4
	add	r4, r1, r3, lsl #2
	movs	r0, #0
.L276:
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
	bne	.L276
	pop	{r4, pc}
.L277:
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
	push	{r4, r5, r6, lr}
	subs	r5, r2, #0
	ldr	r4, .L299
	ldr	r3, .L299+4
	sub	sp, sp, #40
.LPIC5:
	add	r4, pc
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	ble	.L290
	sub	ip, r0, #4
	add	r0, r0, r5, lsl #2
	subs	r4, r0, #4
	sub	lr, r1, #4
	sub	r2, sp, #4
	movs	r0, #0
.L285:
	ldr	r1, [ip, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r1, r3
	subs	r3, r3, r0
	str	r3, [r2, #4]!
	cmp	r1, r3
	it	ne
	movne	r0, #0
	it	cc
	orrcc	r0, r0, #1
	cmp	r4, ip
	bne	.L285
	uxtb	r3, r5
	subs	r0, r0, #0
	add	r2, r3, #-1
	it	ne
	movne	r0, #1
	cmp	r2, #2
	bls	.L291
	lsrs	r2, r3, #1
	mov	ip, sp
	mov	r3, ip
	add	ip, ip, r2, lsl #3
	movs	r2, #0
	mov	r1, r2
.L287:
	ldrd	r6, r4, [r3]
	adds	r3, r3, #8
	cmp	ip, r3
	orr	r2, r2, r6
	orr	r1, r1, r4
	bne	.L287
	lsls	r3, r5, #31
	orr	r1, r1, r2
	it	mi
	bicmi	r3, r5, #1
	bpl	.L288
.L286:
	add	r2, sp, #40
	add	r2, r2, r3, lsl #2
	uxtb	r3, r3
	ldr	r2, [r2, #-40]
	orrs	r1, r1, r2
	adds	r2, r3, #1
	sxtb	r4, r2
	uxtb	r2, r2
	cmp	r5, r4
	ble	.L288
	add	r4, sp, #40
	adds	r3, r3, #2
	add	r2, r4, r2, lsl #2
	ldr	r2, [r2, #-40]
	orrs	r1, r1, r2
	uxtb	r2, r3
	sxtb	r3, r3
	cmp	r5, r3
	itttt	gt
	movgt	r3, r4
	addgt	r2, r3, r2, lsl #2
	ldrgt	r3, [r2, #-40]
	orrgt	r1, r1, r3
.L288:
	lsls	r0, r0, #1
	cmp	r1, #0
	ite	eq
	rsbeq	r0, r0, #0
	rsbne	r0, r0, #1
.L284:
	ldr	r2, .L299+8
	ldr	r3, .L299+4
.LPIC4:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L298
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, pc}
.L290:
	movs	r0, #0
	b	.L284
.L291:
	movs	r1, #0
	mov	r3, r1
	b	.L286
.L298:
	bl	__stack_chk_fail(PLT)
.L300:
	.align	2
.L299:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
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
	ldrsb	r6, [sp, #24]
	cmp	r6, #0
	ble	.L318
	add	r8, r1, r6, lsl #2
	sub	ip, r0, #4
	sub	lr, r1, #4
	subs	r5, r2, #4
	sub	r8, r8, #4
	mov	r7, ip
	movs	r1, #0
.L305:
	ldr	r4, [lr, #4]!
	ldr	r2, [r5, #4]!
	add	r2, r2, r4
	add	r2, r2, r1
	str	r2, [r7, #4]!
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	hi
	orrhi	r1, r1, #1
	cmp	r8, lr
	bne	.L305
	cbz	r1, .L319
.L306:
	add	r0, r0, r6, lsl #2
	subs	r3, r3, #4
	subs	r0, r0, #4
	movs	r1, #0
.L310:
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
	bne	.L310
.L301:
	pop	{r4, r5, r6, r7, r8, pc}
.L319:
	subs	r2, r6, #1
	sxtb	r2, r2
.L303:
	lsls	r1, r2, #2
	adds	r4, r3, r1
	add	r1, r1, r0
	b	.L309
.L320:
	bcc	.L308
	lsls	r5, r2, #24
	bmi	.L308
.L309:
	ldr	r7, [r4], #-4
	subs	r2, r2, #1
	ldr	r5, [r1], #-4
	cmp	r7, r5
	bls	.L320
	b	.L301
.L308:
	cmp	r6, #0
	it	gt
	subgt	ip, r0, #4
	bgt	.L306
	b	.L301
.L318:
	subs	r2, r6, #1
	lsls	r7, r2, #24
	it	pl
	movpl	r2, #127
	bpl	.L303
	b	.L301
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
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
	ble	.L321
	mov	r8, #4
	subs	r5, r0, #4
	rsb	r8, r8, r4, lsl #2
	sub	ip, r1, #4
	add	r7, r1, r8
	sub	lr, r2, #4
	mov	r6, r5
	movs	r1, #0
.L323:
	ldr	r4, [ip, #4]!
	ldr	r2, [lr, #4]!
	subs	r2, r4, r2
	subs	r2, r2, r1
	str	r2, [r6, #4]!
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	cc
	orrcc	r1, r1, #1
	cmp	r7, ip
	bne	.L323
	cbz	r1, .L321
	subs	r3, r3, #4
	add	r0, r0, r8
	movs	r1, #0
.L324:
	ldr	r4, [r5, #4]!
	ldr	r2, [r3, #4]!
	add	r2, r2, r4
	add	r2, r2, r1
	str	r2, [r5]
	cmp	r4, r2
	it	ne
	movne	r1, #0
	it	hi
	orrhi	r1, r1, #1
	cmp	r0, r5
	bne	.L324
.L321:
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
	ldr	r4, .L373
	ldr	r3, .L373+4
	sub	sp, sp, #172
.LPIC7:
	add	r4, pc
	ldrsb	r6, [r7]
	cmp	r6, #0
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #164]
	mov	r3, #0
	ble	.L331
	uxtb	fp, r6
	mov	r4, r0
	add	r3, fp, #-1
	mov	r9, r1
	mov	r5, r2
	uxtb	r3, r3
	str	r3, [sp, #16]
	cmp	r3, #2
	bls	.L358
	lsr	ip, fp, #1
	mov	r3, r5
	add	ip, r2, ip, lsl #3
	movs	r2, #0
	mov	r1, r2
.L334:
	ldr	r0, [r3]
	adds	r3, r3, #8
	cmp	r3, ip
	orr	r2, r2, r0
	ldr	r0, [r3, #-4]
	orr	r1, r1, r0
	bne	.L334
	and	r3, r6, #254
	orrs	r1, r1, r2
	cmp	fp, r3
	bic	r2, r6, #1
	beq	.L335
.L333:
	ldr	r2, [r5, r2, lsl #2]
	orrs	r1, r1, r2
	adds	r2, r3, #1
	sxtb	r0, r2
	uxtb	r2, r2
	cmp	r6, r0
	ble	.L335
	ldr	r2, [r5, r2, lsl #2]
	adds	r3, r3, #2
	orrs	r1, r1, r2
	sxtb	r2, r3
	cmp	r6, r2
	uxtb	r3, r3
	itt	gt
	ldrgt	r3, [r5, r3, lsl #2]
	orrgt	r1, r1, r3
.L335:
	cmp	r1, #0
	beq	.L331
	add	r8, sp, #100
	mov	r3, r6
	mov	r2, r9
	mov	r1, r9
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	add	r3, sp, #36
	mov	r2, r3
	mov	r1, r8
	mov	r10, r2
	mov	r0, r2
	str	r3, [sp, #20]
	ldr	r3, [r7, #172]
	blx	r3
	mov	r2, r10
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	add	r1, sp, #68
	mov	r0, r1
	ldr	r3, [r7, #172]
	str	r1, [sp, #12]
	mov	r1, r8
	blx	r3
	mov	r2, r10
	mov	r1, r10
	ldrsb	r3, [r7]
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	mov	r0, r10
	ldr	r3, [r7, #172]
	mov	r1, r8
	blx	r3
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, r9
	mov	r0, r8
	add	r10, r7, #4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r8
	mov	r0, r9
	blx	r3
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, r5
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r8
	mov	r0, r5
	blx	r3
	mov	r2, r5
	mov	r3, r10
	mov	r1, r4
	mov	r0, r4
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r10
	mov	r2, r5
	mov	r1, r5
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r10
	mov	r2, r5
	mov	r1, r4
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r8
	mov	r0, r4
	blx	r3
	mov	r3, r10
	mov	r2, r4
	mov	r1, r4
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	mov	r3, r10
	mov	r2, r5
	mov	r0, r4
	mov	r1, r4
	str	r6, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r3, [r4]
	lsls	r2, r6, #2
	str	r2, [sp, #24]
	adds	r0, r4, r2
	ands	r3, r3, #1
	beq	.L370
	subs	r1, r4, #4
	str	r10, [sp, #28]
	add	lr, r1, r2
	mov	ip, r7
	movs	r2, #0
	mov	r10, r0
.L338:
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
	cmp	r1, lr
	bne	.L338
	mov	r0, r10
	ldr	r10, [sp, #28]
	cmp	r4, r0
	itt	cc
	movcc	r1, r0
	movcc	r3, #0
	bcs	.L342
.L341:
	ldr	r0, [r1, #-4]!
	cmp	r4, r1
	orr	r3, r3, r0, lsr #1
	str	r3, [r1]
	lsl	r3, r0, #31
	bcc	.L341
.L342:
	ldr	r3, [sp, #24]
	subs	r1, r3, #4
	ldr	r3, [r4, r1]
	orr	r3, r3, r2, lsl #31
	str	r3, [r4, r1]
.L340:
	mov	r2, r4
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r8
	mov	r0, r5
	blx	r3
	ldr	r2, [sp, #12]
	mov	r3, r10
	mov	r1, r5
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r2, [sp, #12]
	mov	r3, r10
	mov	r1, r5
	mov	r0, r5
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r1, [sp, #12]
	mov	r3, r10
	mov	r2, r5
	mov	r0, r1
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r2, [sp, #12]
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r0, r8
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r7, #172]
	mov	r1, r8
	mov	r0, r4
	blx	r3
	ldr	r2, [sp, #20]
	mov	r3, r10
	mov	r1, r4
	mov	r0, r2
	str	r6, [sp]
	bl	uECC_vli_modSub(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #6
	bls	.L346
	adds	r3, r5, #4
	cmp	r4, r3
	bne	.L371
.L346:
	ldr	r1, [sp, #24]
	subs	r2, r5, #4
	subs	r4, r4, #4
	mov	r3, r2
	adds	r0, r2, r1
.L349:
	ldr	r1, [r3, #4]!
	str	r1, [r4, #4]!
	cmp	r0, r3
	bne	.L349
	ldr	r3, [sp, #16]
	cmp	r3, #6
	bhi	.L351
.L352:
	ldr	r0, [sp, #24]
	sub	r3, r9, #4
	add	r0, r0, r3
.L355:
	ldr	r1, [r3, #4]!
	str	r1, [r2, #4]!
	cmp	r0, r3
	bne	.L355
.L356:
	ldr	r1, [sp, #20]
	lsl	r2, fp, #2
	mov	r0, r9
	bl	memcpy(PLT)
.L331:
	ldr	r2, .L373+8
	ldr	r3, .L373+4
.LPIC6:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #164]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L372
	add	sp, sp, #172
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L344:
	ldr	r2, [r0, #-4]!
	orr	r3, r3, r2, lsr #1
	str	r3, [r0]
	lsls	r3, r2, #31
.L370:
	cmp	r4, r0
	bcc	.L344
	b	.L340
.L371:
	lsr	r7, fp, #1
	mov	r3, r4
	mov	r2, r5
	add	r7, r4, r7, lsl #3
.L347:
	ldrd	r1, r0, [r2]
	strd	r1, r0, [r3]
	adds	r3, r3, #8
	adds	r2, r2, #8
	cmp	r3, r7
	bne	.L347
	and	r3, r6, #254
	cmp	r3, fp
	beq	.L351
	sxth	r3, r3
	ldr	r2, [r5, r3, lsl #2]
	str	r2, [r4, r3, lsl #2]
.L351:
	add	r3, r9, #4
	cmp	r5, r3
	it	eq
	moveq	r2, r9
	beq	.L352
	lsr	r4, fp, #1
	mov	r3, r5
	mov	r2, r9
	add	r4, r5, r4, lsl #3
.L353:
	ldrd	r1, r0, [r2]
	strd	r1, r0, [r3]
	adds	r3, r3, #8
	adds	r2, r2, #8
	cmp	r4, r3
	bne	.L353
	and	r6, r6, #254
	cmp	r6, fp
	beq	.L356
	sxth	r6, r6
	ldr	r1, [sp, #20]
	lsl	r2, fp, #2
	mov	r0, r9
	ldr	r3, [r9, r6, lsl #2]
	str	r3, [r5, r6, lsl #2]
	bl	memcpy(PLT)
	b	.L331
.L358:
	movs	r1, #0
	mov	r2, r1
	mov	r3, r1
	b	.L333
.L372:
	bl	__stack_chk_fail(PLT)
.L374:
	.align	2
.L373:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.size	double_jacobian_default, .-double_jacobian_default
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r2
	ldr	r2, .L379
	ldr	r3, .L379+4
	sub	sp, sp, #116
.LPIC8:
	add	r2, pc
	ldrsb	r9, [r5]
	add	r7, sp, #44
	mov	r4, r0
	mov	r0, r7
	movs	r6, #0
	ldr	r3, [r2, r3]
	mov	r2, r1
	mov	r8, r1
	ldr	r3, [r3]
	str	r3, [sp, #108]
	mov	r3, #0
	mov	r3, r9
	strd	r6, r6, [sp, #16]
	strd	r6, r6, [sp, #24]
	strd	r6, r6, [sp, #32]
	str	r6, [sp, #40]
	movs	r6, #3
	str	r6, [sp, #12]
	bl	uECC_vli_mult(PLT)
	adds	r6, r5, #4
	ldr	r3, [r5, #172]
	mov	r1, r7
	mov	r0, r4
	blx	r3
	add	r2, sp, #12
	mov	r3, r6
	mov	r1, r4
	mov	r0, r4
	str	r9, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r8
	ldrsb	r3, [r5]
	mov	r1, r4
	mov	r0, r7
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r5, #172]
	mov	r1, r7
	mov	r0, r4
	blx	r3
	mov	r3, r6
	add	r2, r5, #132
	mov	r1, r4
	mov	r0, r4
	str	r9, [sp]
	bl	uECC_vli_modAdd(PLT)
	ldr	r2, .L379+8
	ldr	r3, .L379+4
.LPIC9:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #108]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L378
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L378:
	bl	__stack_chk_fail(PLT)
.L380:
	.align	2
.L379:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.size	x_side_default, .-x_side_default
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
	ldr	r2, .L386
	sub	sp, sp, #188
	mov	fp, r3
	ldr	r3, .L386+4
.LPIC11:
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
	mov	r3, r6
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
	ble	.L381
	uxtb	r2, r6
	mov	r1, r10
	mov	r0, fp
	lsls	r2, r2, #2
	bl	memcpy(PLT)
.L381:
	ldr	r2, .L386+8
	ldr	r3, .L386+4
.LPIC10:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #180]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L385
	add	sp, sp, #188
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L385:
	bl	__stack_chk_fail(PLT)
.L387:
	.align	2
.L386:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.p2align 2,,3
	.global	uECC_vli_mmod
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_mmod, %function
uECC_vli_mmod:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	mov	r5, r3
	sub	sp, sp, #180
	mov	r9, r0
	add	r3, sp, #108
	lsls	r4, r5, #6
	mov	r7, r2
	str	r1, [sp, #40]
	uxth	r4, r4
	ldr	r1, .L492
	str	r3, [sp, #36]
	ldr	r3, .L492+4
.LPIC13:
	add	r1, pc
	ldr	r3, [r1, r3]
	ldr	r3, [r3]
	str	r3, [sp, #172]
	mov	r3, #0
	uxtb	r3, r5
	str	r3, [sp, #28]
	subs	r3, r3, #1
	uxtb	r10, r3
	lsls	r3, r3, #24
	bmi	.L425
	mov	r3, r10
	add	r1, r2, r10, lsl #2
	b	.L390
.L391:
	subs	r2, r3, #1
	lsls	r0, r2, #24
	bmi	.L488
	mov	r3, r2
.L390:
	ldr	r2, [r1], #-4
	cmp	r2, #0
	beq	.L391
	adds	r3, r3, #1
.L488:
	sxtb	r3, r3
.L389:
	cbz	r3, .L392
	add	r2, r3, #1073741824
	subs	r2, r2, #1
	ldr	r2, [r7, r2, lsl #2]
	cbz	r2, .L393
	clz	r2, r2
	rsb	r2, r2, #32
	uxth	r2, r2
.L393:
	subs	r3, r3, #1
	sub	r3, r4, r3, lsl #5
	subs	r3, r3, r2
	uxth	r4, r3
.L392:
	sxth	r4, r4
	add	r3, r4, #31
	and	r8, r4, #31
	ands	r3, r3, r4, asr #32
	it	cc
	movcc	r3, r4
	rsbs	r2, r4, #0
	and	r2, r2, #31
	sbfx	fp, r3, #5, #8
	it	pl
	rsbpl	r8, r2, #0
	asrs	r3, r3, #5
	cmp	fp, #0
	ble	.L397
	subs	r3, r3, #1
	movs	r1, #0
	add	r0, sp, #44
	uxtb	r2, r3
	adds	r2, r2, #1
	lsls	r2, r2, #2
	bl	memset(PLT)
.L397:
	cmp	r8, #0
	ble	.L489
	cmp	r5, #0
	beq	.L428
	add	r3, sp, #176
	ldr	r2, [r7]
	add	r1, r3, fp, lsl #2
	rsb	r3, r8, #32
	cmp	r5, #1
	lsl	r0, r2, r8
	lsr	r2, r2, r3
	str	r0, [r1, #-132]
	beq	.L428
	ldr	r1, [r7, #4]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #2
	lsl	r0, r1, r8
	orr	r2, r2, r0
	lsr	r1, r1, r3
	str	r2, [r6, #-128]
	beq	.L428
	ldr	r2, [r7, #8]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #3
	lsl	r0, r2, r8
	orr	r1, r1, r0
	lsr	r2, r2, r3
	str	r1, [r6, #-124]
	beq	.L428
	ldr	r1, [r7, #12]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #4
	lsl	r0, r1, r8
	orr	r2, r2, r0
	lsr	r1, r1, r3
	str	r2, [r6, #-120]
	beq	.L428
	ldr	r2, [r7, #16]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #5
	lsl	r0, r2, r8
	orr	r1, r1, r0
	lsr	r2, r2, r3
	str	r1, [r6, #-116]
	beq	.L428
	ldr	r1, [r7, #20]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #6
	lsl	r0, r1, r8
	orr	r2, r2, r0
	lsr	r1, r1, r3
	str	r2, [r6, #-112]
	beq	.L428
	ldr	r2, [r7, #24]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #7
	lsl	r0, r2, r8
	orr	r1, r1, r0
	lsr	r2, r2, r3
	str	r1, [r6, #-108]
	beq	.L428
	ldr	r1, [r7, #28]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #8
	lsl	r0, r1, r8
	orr	r2, r2, r0
	lsr	r1, r1, r3
	str	r2, [r6, #-104]
	beq	.L428
	ldr	r2, [r7, #32]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #9
	lsl	r0, r2, r8
	orr	r1, r1, r0
	str	r1, [r6, #-100]
	lsr	r1, r2, r3
	beq	.L428
	ldr	r2, [r7, #36]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #10
	lsl	r0, r2, r8
	orr	r1, r1, r0
	str	r1, [r6, #-96]
	lsr	r1, r2, r3
	beq	.L428
	ldr	r2, [r7, #40]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #11
	lsl	r0, r2, r8
	orr	r1, r1, r0
	lsr	r2, r2, r3
	str	r1, [r6, #-92]
	beq	.L428
	ldr	r1, [r7, #44]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #12
	lsl	r0, r1, r8
	orr	r2, r2, r0
	lsr	r1, r1, r3
	str	r2, [r6, #-88]
	beq	.L428
	ldr	r2, [r7, #48]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #13
	lsl	r0, r2, r8
	orr	r1, r1, r0
	str	r1, [r6, #-84]
	lsr	r1, r2, r3
	beq	.L428
	ldr	r2, [r7, #52]
	add	r0, sp, #176
	add	r6, r0, fp, lsl #2
	cmp	r5, #14
	lsl	r0, r2, r8
	orr	r1, r1, r0
	lsr	r0, r2, r3
	str	r1, [r6, #-80]
	beq	.L428
	ldr	r2, [r7, #56]
	cmp	r5, #15
	lsr	r1, r2, r3
	add	r3, sp, #176
	add	r3, r3, fp, lsl #2
	lsl	r2, r2, r8
	orr	r2, r2, r0
	str	r2, [r3, #-76]
	beq	.L428
	ldr	r3, [r7, #60]
	add	r2, sp, #176
	add	fp, r2, fp, lsl #2
	lsl	r3, r3, r8
	orrs	r3, r3, r1
	str	r3, [fp, #-72]
	add	r3, sp, #44
	str	r3, [sp, #8]
	b	.L398
.L400:
	cmp	r4, #0
	blt	.L388
.L428:
	add	r3, sp, #44
	str	r3, [sp, #8]
.L398:
	add	r8, r5, #-1
	add	r3, sp, #176
	lsls	r2, r5, #2
	lsls	r6, r5, #1
	add	r8, r3, r8, lsl #2
	ldr	r3, [sp, #8]
	movs	r7, #1
	strd	r10, r9, [sp, #20]
	add	lr, r3, r2
	str	r7, [sp, #4]
	sub	r3, lr, r2
	sub	r1, lr, #4
	str	r1, [sp, #16]
	add	r1, lr, r2
	adds	r2, r2, #176
	subs	r3, r3, #4
	add	fp, sp, r2
	mov	ip, r1
	str	r5, [sp, #12]
.L403:
	ldr	r2, [sp, #12]
	cmp	r2, #0
	it	le
	movle	r5, #0
	ble	.L408
	ldr	r1, [sp, #4]
	add	r0, sp, #176
	eor	r2, r1, #1
	add	r2, r0, r2, lsl #2
	ldr	r10, [r2, #-140]
	add	r2, r0, r1, lsl #2
	ldr	r9, [r2, #-140]
	movs	r2, #0
	mov	r5, r2
	mov	r1, r2
.L409:
	add	r0, sp, #176
	add	r1, r0, r1, lsl #2
	ldr	r0, [r9, r2, lsl #2]
	ldr	r1, [r1, #-132]
	add	r1, r1, r5
	subs	r1, r0, r1
	ite	cc
	movcc	r7, #1
	movcs	r7, #0
	cmp	r0, r1
	beq	.L406
	str	r1, [r10, r2, lsl #2]
	adds	r2, r2, #1
	mov	r5, r7
	sxtb	r2, r2
	mov	r1, r2
	cmp	r6, r2
	bgt	.L409
.L408:
	ldr	r2, [sp, #4]
	subs	r2, r2, r5
	clz	r2, r2
	lsrs	r2, r2, #5
	str	r2, [sp, #4]
	ldr	r2, [sp, #8]
	cmp	lr, r2
	itt	hi
	movhi	r2, #0
	ldrhi	r1, [sp, #16]
	bls	.L413
.L410:
	ldr	r0, [r1]
	orr	r2, r2, r0, lsr #1
	str	r2, [r1], #-4
	lsls	r2, r0, #31
	cmp	r1, r3
	bne	.L410
.L413:
	ldr	r1, [fp, #-132]
	cmp	ip, lr
	ldr	r2, [r8, #-132]
	orr	r2, r2, r1, lsl #31
	it	hi
	movhi	r1, ip
	str	r2, [r8, #-132]
	it	hi
	movhi	r2, #0
	bls	.L412
.L415:
	ldr	r0, [r1, #-4]!
	cmp	r1, lr
	orr	r2, r2, r0, lsr #1
	str	r2, [r1]
	lsl	r2, r0, #31
	bhi	.L415
.L412:
	subs	r4, r4, #1
	sxth	r4, r4
	adds	r2, r4, #1
	bne	.L403
	ldr	r7, [sp, #4]
	add	r3, sp, #176
	ldr	r5, [sp, #12]
	ldrd	r10, r9, [sp, #20]
	add	r7, r3, r7, lsl #2
	cmp	r5, #0
	ldr	r6, [r7, #-140]
	ble	.L388
.L402:
	cmp	r10, #6
	bls	.L418
	adds	r3, r6, #4
	cmp	r9, r3
	bne	.L490
.L418:
	add	r3, r6, r5, lsl #2
	sub	r9, r9, #4
	subs	r6, r6, #4
	subs	r3, r3, #4
.L422:
	ldr	r2, [r6, #4]!
	str	r2, [r9, #4]!
	cmp	r6, r3
	bne	.L422
.L388:
	ldr	r2, .L492+8
	ldr	r3, .L492+4
.LPIC12:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #172]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L491
	add	sp, sp, #180
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L406:
	str	r0, [r10, r2, lsl #2]
	adds	r2, r2, #1
	sxtb	r2, r2
	mov	r1, r2
	cmp	r2, r6
	blt	.L409
	b	.L408
.L490:
	ldr	r2, [sp, #28]
	mov	r3, r9
	lsrs	r4, r2, #1
	mov	r2, r6
	add	r4, r9, r4, lsl #3
.L419:
	ldrd	r1, r0, [r2]
	strd	r1, r0, [r3]
	adds	r3, r3, #8
	adds	r2, r2, #8
	cmp	r3, r4
	bne	.L419
	ldr	r3, [sp, #28]
	and	r5, r5, #254
	cmp	r3, r5
	beq	.L388
	sxth	r5, r5
	ldr	r3, [r6, r5, lsl #2]
	str	r3, [r9, r5, lsl #2]
	b	.L388
.L489:
	lsl	r0, fp, #2
	cmp	r5, #0
	ble	.L400
	add	r2, r10, #1
	add	r3, sp, #44
	mov	r1, r7
	add	r0, r0, r3
	lsls	r2, r2, #2
	str	r3, [sp, #8]
	bl	memcpy(PLT)
	cmp	r4, #0
	bge	.L398
	b	.L402
.L425:
	mov	r3, r5
	b	.L389
.L491:
	bl	__stack_chk_fail(PLT)
.L493:
	.align	2
.L492:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
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
	ldr	r0, .L498
	mov	r6, r3
	ldr	r3, .L498+4
	sub	sp, sp, #76
.LPIC14:
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
	ldr	r2, .L498+8
	ldr	r3, .L498+4
.LPIC15:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L497
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L497:
	bl	__stack_chk_fail(PLT)
.L499:
	.align	2
.L498:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
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
	ldr	r0, .L504
	mov	r5, r3
	ldr	r3, .L504+4
.LPIC16:
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
	ldr	r2, .L504+8
	ldr	r3, .L504+4
.LPIC17:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L503
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, pc}
.L503:
	bl	__stack_chk_fail(PLT)
.L505:
	.align	2
.L504:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.p2align 2,,3
	.global	uECC_vli_modInv
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_vli_modInv, %function
uECC_vli_modInv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	ble	.L518
	push	{r4, r5, r6, r7, r8, lr}
	uxtb	r8, r3
	add	r4, r8, #-1
	cmp	r4, #2
	bls	.L513
	lsr	r7, r8, #1
	mov	lr, #0
	mov	ip, r1
	mov	r4, lr
	add	r7, r1, r7, lsl #3
.L510:
	ldrd	r6, r5, [ip]
	add	ip, ip, #8
	cmp	ip, r7
	orr	lr, r6, lr
	orr	r4, r4, r5
	bne	.L510
	lsls	r5, r3, #31
	orr	r4, r4, lr
	it	mi
	bicmi	r6, r3, #1
	bpl	.L511
.L509:
	uxtb	r5, r6
	ldr	r6, [r1, r6, lsl #2]
	orrs	r4, r4, r6
	adds	r6, r5, #1
	sxtb	r7, r6
	uxtb	r6, r6
	cmp	r3, r7
	ble	.L511
	ldr	r6, [r1, r6, lsl #2]
	adds	r5, r5, #2
	orrs	r4, r4, r6
	sxtb	r6, r5
	cmp	r3, r6
	uxtb	r5, r5
	itt	gt
	ldrgt	r5, [r1, r5, lsl #2]
	orrgt	r4, r4, r5
.L511:
	cbz	r4, .L512
	pop	{r4, r5, r6, r7, r8, lr}
	b	uECC_vli_modInv.part.0(PLT)
.L512:
	lsl	r2, r8, #2
	mov	r1, r4
	pop	{r4, r5, r6, r7, r8, lr}
	b	memset(PLT)
.L513:
	movs	r4, #0
	mov	r6, r4
	b	.L509
.L518:
	bx	lr
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
	ldr	r0, .L523
.LPIC18:
	add	r0, pc
	bx	lr
.L524:
	.align	2
.L523:
	.word	.LANCHOR1-(.LPIC18+4)
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
	ldrb	r2, [r1]	@ zero_extendqisi2
	lsls	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	ble	.L528
	uxtb	r2, r2
	movs	r3, #0
	mov	r1, r3
	push	{r4, r5}
	add	r2, r0, r2, lsl #2
.L527:
	ldrd	r5, r4, [r0]
	adds	r0, r0, #8
	cmp	r2, r0
	orr	r3, r3, r5
	orr	r1, r1, r4
	bne	.L527
	orrs	r3, r3, r1
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	pop	{r4, r5}
	bx	lr
.L528:
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
	ldr	r1, .L538
	mov	r5, r3
	ldr	r3, .L538+4
.LPIC19:
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
	ldr	r2, .L538+8
	ldr	r3, .L538+4
.LPIC20:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L537
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L537:
	bl	__stack_chk_fail(PLT)
.L539:
	.align	2
.L538:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+4)
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
	ldr	r2, .L545
	sub	sp, sp, #124
	mov	r9, r3
	ldr	r3, .L545+4
.LPIC22:
	add	r2, pc
	add	r5, sp, #20
	add	r4, sp, #52
	ldr	r6, [sp, #160]
	mov	fp, r0
	str	r1, [sp, #12]
	mov	r1, r7
	mov	r10, r6
	ldr	r3, [r2, r3]
	mov	r2, r0
	mov	r0, r5
	ldrsb	r8, [r10], #4
	ldr	r3, [r3]
	str	r3, [sp, #116]
	mov	r3, #0
	str	r8, [sp]
	mov	r3, r10
	bl	uECC_vli_modSub(PLT)
	mov	r2, r5
	mov	r3, r8
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	mov	r2, r5
	ldrsb	r3, [r6]
	mov	r1, fp
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, fp
	blx	r3
	mov	r2, r5
	ldrsb	r3, [r6]
	mov	r1, r7
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
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
	ldrsb	r3, [r6]
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	mov	r3, r10
	mov	r2, fp
	mov	r1, r5
	mov	r0, r5
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, r7
	mov	r1, r5
	mov	r0, r5
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r3, r10
	mov	r2, fp
	mov	r1, r7
	mov	r0, r7
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r7
	ldrsb	r3, [r6]
	mov	r0, r4
	ldr	r1, [sp, #12]
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	ldr	r0, [sp, #12]
	mov	r1, r4
	blx	r3
	mov	r1, fp
	mov	r3, r10
	mov	r2, r5
	mov	r0, r7
	str	r8, [sp]
	bl	uECC_vli_modSub(PLT)
	mov	r2, r7
	ldrsb	r3, [r6]
	mov	r1, r9
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
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
	ble	.L540
	uxtb	r2, r8
	mov	r1, r5
	mov	r0, r7
	lsls	r2, r2, #2
	bl	memcpy(PLT)
.L540:
	ldr	r2, .L545+8
	ldr	r3, .L545+4
.LPIC21:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L544
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L544:
	bl	__stack_chk_fail(PLT)
.L546:
	.align	2
.L545:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.p2align 2,,3
	.global	EccPoint_mult
	.syntax unified
	.thumb
	.thumb_func
	.type	EccPoint_mult, %function
EccPoint_mult:
	@ args = 8, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L581
	sub	sp, sp, #284
	ldr	r4, .L581+4
.LPIC24:
	add	r5, pc
	ldr	r6, [sp, #324]
	ldr	r4, [r5, r4]
	ldrsh	r5, [sp, #320]
	ldr	r4, [r4]
	str	r4, [sp, #276]
	mov	r4, #0
	mov	r4, r3
	ldrsb	r3, [r6]
	str	r2, [sp, #8]
	cmp	r3, #0
	str	r0, [sp, #44]
	lsl	r2, r3, #2
	str	r1, [sp, #32]
	str	r3, [sp, #12]
	str	r2, [sp, #28]
	ble	.L548
	uxtb	r9, r3
	add	r3, sp, #116
	mov	r0, r3
	mov	r8, r1
	lsl	r9, r9, #2
	str	r3, [sp, #20]
	mov	r2, r9
	add	r7, sp, #180
	bl	memcpy(PLT)
	ldr	r2, [sp, #28]
	mov	r3, r8
	mov	r0, r7
	add	r3, r3, r2
	mov	r2, r9
	mov	r1, r3
	str	r3, [sp, #40]
	bl	memcpy(PLT)
	cmp	r4, #0
	beq	.L578
	add	r3, sp, #212
	mov	r1, r4
	mov	r2, r9
	mov	r0, r3
	str	r3, [sp, #16]
	bl	memcpy(PLT)
.L553:
	add	r8, sp, #84
	mov	r2, r9
	ldr	r1, [sp, #20]
	mov	r0, r8
	bl	memmove(PLT)
	mov	r2, r9
	add	r9, sp, #148
	mov	r1, r7
	mov	r0, r9
	bl	memmove(PLT)
.L551:
	ldr	r10, [sp, #16]
	mov	r3, r6
	ldr	fp, [sp, #20]
	mov	r1, r7
	mov	r2, r10
	subs	r5, r5, #2
	mov	r0, fp
	bl	apply_z(PLT)
	mov	r1, r7
	mov	r3, r6
	mov	r2, r10
	mov	r0, fp
	ldr	r4, [r6, #164]
	blx	r4
	sxth	r5, r5
	mov	r3, r6
	mov	r2, r10
	mov	r1, r9
	mov	r0, r8
	bl	apply_z(PLT)
	cmp	r5, #0
	ble	.L557
.L554:
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
	iteet	ne
	movne	r7, r1
	moveq	r4, r1
	moveq	r7, #0
	movne	r4, #0
	lsls	r7, r7, #5
	lsls	r4, r4, #5
	add	r10, r8, r7
	add	fp, r8, r4
	add	r7, r7, r9
	add	r4, r4, r9
	mov	r2, fp
	mov	r3, r4
	mov	r1, r7
	mov	r0, r10
	bl	XYcZ_addC(PLT)
	mov	r3, r7
	mov	r2, r10
	mov	r1, r4
	mov	r0, fp
	str	r6, [sp]
	bl	XYcZ_add(PLT)
	uxth	r3, r5
	sxth	r5, r5
	cmp	r3, #0
	bne	.L554
.L557:
	ldr	r3, [sp, #8]
	add	r5, sp, #48
	ldr	r3, [r3]
	str	r6, [sp]
	and	r3, r3, #1
	eor	r2, r3, #1
	lsls	r3, r3, #5
	lsls	r2, r2, #5
	add	r10, r9, r3
	add	fp, r8, r2
	add	r0, r8, r3
	mov	r1, r10
	add	r3, r9, r2
	mov	r2, fp
	str	r0, [sp, #24]
	str	r3, [sp, #36]
	bl	XYcZ_addC(PLT)
	ldr	r7, [sp, #12]
	adds	r3, r6, #4
	ldr	r1, [sp, #20]
	mov	r2, r8
	mov	r0, r5
	str	r7, [sp]
	str	r3, [sp, #8]
	bl	uECC_vli_modSub(PLT)
	ldr	r4, [sp, #16]
	mov	r2, r10
	ldrsb	r3, [r6]
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	ldr	r2, [sp, #32]
	ldrsb	r3, [r6]
	mov	r1, r5
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	cmp	r7, #0
	ble	.L579
	ldrb	r7, [sp, #12]	@ zero_extendqisi2
	subs	r3, r7, #1
	cmp	r3, #2
	bls	.L565
	lsr	ip, r7, #1
	movs	r2, #0
	ldr	r4, [sp, #8]
	mov	r3, r5
	add	ip, r5, ip, lsl #3
	mov	r1, r2
.L559:
	ldr	r0, [r3]
	adds	r3, r3, #8
	orrs	r2, r2, r0
	ldr	r0, [r3, #-4]
	cmp	ip, r3
	orr	r1, r1, r0
	bne	.L559
	ldr	r3, [sp, #12]
	orrs	r1, r1, r2
	str	r4, [sp, #8]
	lsls	r2, r3, #31
	it	mi
	bicmi	r3, r3, #1
	bpl	.L560
.L558:
	add	r2, sp, #280
	ldr	r4, [sp, #12]
	add	r2, r2, r3, lsl #2
	uxtb	r3, r3
	ldr	r2, [r2, #-232]
	orrs	r1, r1, r2
	adds	r2, r3, #1
	sxtb	r0, r2
	uxtb	r2, r2
	cmp	r4, r0
	ble	.L560
	add	r0, sp, #280
	adds	r3, r3, #2
	add	r2, r0, r2, lsl #2
	ldr	r2, [r2, #-232]
	orrs	r1, r1, r2
	sxtb	r2, r3
	cmp	r4, r2
	uxtb	r3, r3
	ble	.L560
	add	r3, r0, r3, lsl #2
	ldr	r3, [r3, #-232]
	orrs	r1, r1, r3
.L560:
	cmp	r1, #0
	beq	.L562
	sxth	r7, r7
	mov	r1, r5
	ldrd	r2, r3, [sp, #8]
	mov	r0, r5
	bl	uECC_vli_modInv.part.0(PLT)
.L563:
	ldr	r4, [sp, #16]
	mov	r1, r5
	ldr	r2, [sp, #40]
	lsls	r7, r7, #2
	mov	r0, r4
	ldrsb	r3, [r6]
	bl	uECC_vli_mult(PLT)
	mov	r1, r4
	ldr	r3, [r6, #172]
	mov	r0, r5
	blx	r3
	ldr	r2, [sp, #24]
	mov	r0, r4
	ldrsb	r3, [r6]
	mov	r1, r5
	bl	uECC_vli_mult(PLT)
	mov	r1, r4
	ldr	r3, [r6, #172]
	mov	r0, r5
	blx	r3
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #36]
	mov	r3, r10
	mov	r0, fp
	str	r6, [sp]
	bl	XYcZ_add(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r9
	mov	r0, r8
	bl	apply_z(PLT)
	ldr	r4, [sp, #44]
	mov	r1, r8
	mov	r2, r7
	mov	r0, r4
	bl	memcpy(PLT)
	ldr	r3, [sp, #28]
	mov	r0, r4
	mov	r2, r7
	mov	r1, r9
	add	r0, r0, r3
	bl	memcpy(PLT)
.L547:
	ldr	r2, .L581+8
	ldr	r3, .L581+4
.LPIC23:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #276]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L580
	add	sp, sp, #284
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L562:
	lsls	r2, r7, #2
	mov	r0, r5
	sxth	r7, r7
	bl	memset(PLT)
	b	.L563
.L578:
	add	r3, sp, #212
	mov	r1, r4
	mov	r0, r3
	mov	r2, r9
	str	r3, [sp, #16]
	bl	memset(PLT)
	movs	r3, #1
	str	r3, [sp, #212]
	b	.L553
.L548:
	cbnz	r4, .L577
	movs	r3, #1
	str	r3, [sp, #212]
.L577:
	add	r3, sp, #116
	str	r3, [sp, #20]
	ldr	r3, [sp, #32]
	add	r7, sp, #180
	add	r8, sp, #84
	add	r9, sp, #148
	add	r3, r3, r2
	str	r3, [sp, #40]
	add	r3, sp, #212
	str	r3, [sp, #16]
	b	.L551
.L579:
	ldr	r4, [sp, #16]
	mov	r1, r5
	ldr	r2, [sp, #40]
	ldrsb	r3, [r6]
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	ldr	r7, [sp, #24]
	ldrsb	r3, [r6]
	mov	r1, r5
	mov	r2, r7
	mov	r0, r4
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	ldr	r1, [sp, #36]
	mov	r3, r10
	mov	r2, r7
	mov	r0, fp
	str	r6, [sp]
	bl	XYcZ_add(PLT)
	mov	r3, r6
	mov	r2, r5
	mov	r1, r9
	mov	r0, r8
	bl	apply_z(PLT)
	b	.L547
.L565:
	movs	r1, #0
	mov	r3, r1
	b	.L558
.L580:
	bl	__stack_chk_fail(PLT)
.L582:
	.align	2
.L581:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
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
	ble	.L598
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
.L588:
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
	bne	.L588
	ldrd	r9, fp, [sp]
	cbz	r0, .L599
	movs	r0, #1
.L590:
	uxtb	r8, r8
	subs	r5, r2, #4
	movs	r2, #0
	add	r8, r1, r8, lsl #2
.L591:
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
	bne	.L591
.L583:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L599:
	cmp	r9, r10, lsl #5
	bge	.L590
.L585:
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
	ble	.L583
	add	r4, r3, #32
	add	r8, fp, #-1
	sub	ip, r1, #4
	b	.L590
.L598:
	cmp	r9, r10, lsl #5
	it	ge
	movge	r0, #0
	bge	.L583
	b	.L585
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
	ldr	ip, .L608
	sub	sp, sp, #92
	ldr	r3, .L608+4
.LPIC26:
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
	ldrb	r2, [r5]	@ zero_extendqisi2
	lsls	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	ble	.L604
	uxtb	r2, r2
	movs	r3, #0
	mov	r0, r4
	mov	r1, r3
	add	r2, r4, r2, lsl #2
.L602:
	ldrd	r5, r4, [r0]
	adds	r0, r0, #8
	cmp	r2, r0
	orr	r3, r3, r5
	orr	r1, r1, r4
	bne	.L602
	orrs	r3, r3, r1
	ite	ne
	movne	r0, #1
	moveq	r0, #0
.L600:
	ldr	r2, .L608+8
	ldr	r3, .L608+4
.LPIC25:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #84]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L607
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, pc}
.L604:
	movs	r0, #0
	b	.L600
.L607:
	bl	__stack_chk_fail(PLT)
.L609:
	.align	2
.L608:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
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
	ble	.L610
	mov	ip, #0
	subs	r5, r4, #1
	mov	r3, ip
.L612:
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
	blt	.L612
.L610:
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
	ble	.L620
	asrs	r3, r3, #2
	movs	r1, #0
	subs	r3, r3, #1
	uxtb	r2, r3
	adds	r2, r2, #1
	lsls	r2, r2, #2
	bl	memset(PLT)
.L620:
	cmp	r5, #0
	ittt	gt
	movgt	ip, #0
	addgt	lr, r5, #-1
	movgt	r3, ip
	ble	.L616
.L621:
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
	blt	.L621
.L616:
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
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r2, .L668
	ldr	r3, .L668+4
	sub	sp, sp, #76
.LPIC30:
	add	r2, pc
	mov	r5, r0
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	uxtb	r3, r7
	str	r3, [sp]
	subs	r3, r3, #1
	str	r1, [sp, #24]
	uxtb	fp, r3
	lsls	r4, r3, #24
	bmi	.L644
	mov	r3, fp
	add	r1, r1, fp, lsl #2
	b	.L626
.L627:
	subs	r2, r3, #1
	lsls	r0, r2, #24
	bmi	.L664
	mov	r3, r2
.L626:
	ldr	r2, [r1], #-4
	cmp	r2, #0
	beq	.L627
	adds	r3, r3, #1
.L664:
	sxtb	r3, r3
.L625:
	mov	r2, r3
	cbz	r3, .L628
	add	r2, r3, #1073741824
	ldr	r1, [sp, #24]
	subs	r2, r2, #1
	ldr	r2, [r1, r2, lsl #2]
	cbz	r2, .L629
	clz	r2, r2
	rsb	r2, r2, #32
	uxth	r2, r2
.L629:
	subs	r3, r3, #1
	add	r3, r2, r3, lsl #5
	uxth	r2, r3
.L628:
	ldr	r3, .L668+8
.LPIC27:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L630
	ldr	r1, [sp]
	rsb	r2, r2, r7, lsl #5
	add	r10, r5, r7, lsl #2
	mov	r0, r5
	sxth	r2, r2
	sub	r10, r10, #4
	lsr	r9, r1, #1
	mov	r1, #-1
	mov	r8, #64
	lsr	r2, r1, r2
	str	r2, [sp, #12]
	ldr	r2, [sp, #24]
	add	r1, sp, #32
	lsl	r9, r9, #3
	str	r1, [sp, #28]
	add	r4, r5, r9
	add	r9, r9, r1
	add	r6, r2, r7, lsl #2
	ldr	r2, .L668+12
	subs	r6, r6, #4
.LPIC28:
	add	r2, pc
	str	r2, [sp, #16]
	lsls	r2, r7, #2
	str	r2, [sp, #8]
	ldr	r1, [sp, #8]
	bic	r2, r7, #1
	str	r2, [sp, #20]
	and	r2, r7, #254
	str	r2, [sp, #4]
	blx	r3
	cmp	r0, #0
	beq	.L630
.L666:
	ldr	r3, [r10]
	cmp	r7, #0
	ldr	r2, [sp, #12]
	and	r3, r3, r2
	str	r3, [r10]
	ble	.L636
	cmp	fp, #2
	bls	.L648
	movs	r0, #0
	mov	r3, r5
	mov	r1, r0
.L634:
	ldr	r2, [r3]
	adds	r3, r3, #8
	orrs	r0, r0, r2
	ldr	r2, [r3, #-4]
	cmp	r4, r3
	orr	r1, r1, r2
	bne	.L634
	ldrd	r3, r2, [sp]
	orrs	r1, r1, r0
	cmp	r3, r2
	beq	.L635
	ldr	r2, [sp, #20]
.L633:
	uxtb	r3, r2
	ldr	r2, [r5, r2, lsl #2]
	orrs	r1, r1, r2
	adds	r2, r3, #1
	sxtb	r0, r2
	uxtb	r2, r2
	cmp	r7, r0
	ble	.L635
	ldr	r2, [r5, r2, lsl #2]
	adds	r3, r3, #2
	orrs	r1, r1, r2
	sxtb	r2, r3
	cmp	r7, r2
	uxtb	r3, r3
	itt	gt
	ldrgt	r3, [r5, r3, lsl #2]
	orrgt	r1, r1, r3
.L635:
	cmp	r1, #0
	beq	.L636
	ldr	r3, [sp, #24]
	sub	lr, r5, #4
	add	ip, sp, #28
	movs	r2, #0
	subs	r1, r3, #4
.L637:
	ldr	r0, [r1, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [ip, #4]!
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r1, r6
	bne	.L637
	subs	r2, r2, #0
	it	ne
	movne	r2, #1
	cmp	fp, #2
	bls	.L649
	mov	ip, #0
	ldr	r1, [sp, #28]
	mov	r0, ip
.L639:
	ldr	r3, [r1]
	adds	r1, r1, #8
	orr	ip, r3, ip
	ldr	r3, [r1, #-4]
	cmp	r9, r1
	orr	r0, r0, r3
	bne	.L639
	ldrd	r3, r1, [sp]
	orr	r0, ip, r0
	cmp	r3, r1
	beq	.L640
	ldr	r3, [sp, #20]
.L638:
	add	r1, sp, #72
	add	r1, r1, r3, lsl #2
	uxtb	r3, r3
	ldr	r1, [r1, #-40]
	orrs	r0, r0, r1
	adds	r1, r3, #1
	sxtb	ip, r1
	uxtb	r1, r1
	cmp	r7, ip
	ble	.L640
	add	ip, sp, #72
	adds	r3, r3, #2
	add	r1, ip, r1, lsl #2
	ldr	r1, [r1, #-40]
	orrs	r0, r0, r1
	sxtb	r1, r3
	cmp	r7, r1
	uxtb	r3, r3
	itttt	gt
	movgt	r1, ip
	addgt	r3, r1, r3, lsl #2
	ldrgt	r3, [r3, #-40]
	orrgt	r0, r0, r3
.L640:
	lsls	r2, r2, #1
	cmp	r0, #0
	ite	eq
	rsbeq	r2, r2, #0
	rsbne	r2, r2, #1
	uxtb	r1, r2
	cmp	r1, #1
	beq	.L665
.L636:
	subs	r8, r8, #1
	beq	.L630
	ldr	r3, [sp, #16]
	mov	r0, r5
	ldr	r1, [sp, #8]
	ldr	r3, [r3]
	blx	r3
	cmp	r0, #0
	bne	.L666
.L630:
	movs	r0, #0
.L624:
	ldr	r2, .L668+16
	ldr	r3, .L668+4
.LPIC29:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L667
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L648:
	movs	r1, #0
	mov	r2, r1
	b	.L633
.L649:
	movs	r0, #0
	mov	r3, r0
	b	.L638
.L665:
	mov	r0, r1
	b	.L624
.L644:
	mov	r3, r7
	b	.L625
.L667:
	bl	__stack_chk_fail(PLT)
.L669:
	.align	2
.L668:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC27+4)
	.word	.LANCHOR0-(.LPIC28+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+4)
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
	ldr	r2, .L693
	ldr	r3, .L693+4
.LPIC32:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	sub	sp, sp, #108
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #100]
	mov	r3, #0
	ldrsb	r3, [r1]
	uxtb	lr, r3
	lsl	r0, lr, #1
	sxtb	r2, r0
	cmp	r2, #0
	ble	.L680
	uxtb	r0, r0
	movs	r2, #0
	mov	r6, r1
	mov	ip, r5
	add	r0, r5, r0, lsl #2
	mov	r1, r2
.L672:
	ldrd	r7, r4, [ip]
	add	ip, ip, #8
	cmp	ip, r0
	orr	r2, r2, r7
	orr	r1, r1, r4
	bne	.L672
	orrs	r1, r1, r2
	beq	.L680
	add	lr, lr, #-1
	tst	lr, #128
	uxtb	r7, lr
	bne	.L683
	adds	r1, r7, #2
	mov	r4, r7
	add	r0, r5, r7, lsl #2
	mov	ip, r7
	add	r1, r6, r1, lsl #2
	mov	r2, r1
	b	.L674
.L690:
	bcc	.L683
	add	ip, ip, #-1
	tst	ip, #128
	bne	.L683
.L674:
	ldr	r8, [r2, #-4]!
	ldr	lr, [r0], #-4
	cmp	r8, lr
	bls	.L690
	add	lr, r3, #1
	lsl	r8, r3, #2
	add	lr, lr, r7
	mov	ip, r7
	add	lr, r5, lr, lsl #2
	b	.L676
.L691:
	bcc	.L683
	add	ip, ip, #-1
	tst	ip, #128
	bne	.L683
.L676:
	ldr	r2, [r1, #-4]!
	ldr	r0, [lr, #-4]!
	cmp	r2, r0
	bls	.L691
	add	r2, r5, r8
	add	r8, sp, #36
	mov	r1, r2
	mov	r0, r8
	add	r9, sp, #4
	adds	r7, r7, #1
	bl	uECC_vli_mult(PLT)
	ldr	r3, [r6, #172]
	mov	r1, r8
	mov	r0, r9
	blx	r3
	lsls	r7, r7, #2
	mov	r1, r5
	mov	r2, r6
	mov	r0, r8
	ldr	r3, [r6, #168]
	blx	r3
	movs	r2, #0
	add	r0, r9, r7
	add	r1, r8, r7
.L677:
	ldr	r3, [r0, #-4]!
	subs	r4, r4, #1
	ldr	r5, [r1, #-4]!
	eors	r3, r3, r5
	orrs	r2, r2, r3
	lsls	r3, r4, #24
	bpl	.L677
	cmp	r2, #0
	ite	ne
	mvnne	r0, #2
	moveq	r0, #0
.L670:
	ldr	r2, .L693+8
	ldr	r3, .L693+4
.LPIC31:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L692
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L683:
	mvn	r0, #1
	b	.L670
.L680:
	mov	r0, #-1
	b	.L670
.L692:
	bl	__stack_chk_fail(PLT)
.L694:
	.align	2
.L693:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
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
	ldr	r2, .L712
	ldr	r3, .L712+4
.LPIC34:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r1
	ldrsb	r5, [r1, #1]
	sub	sp, sp, #76
	ldr	r3, [r2, r3]
	add	r9, r5, #6
	ldr	r3, [r3]
	str	r3, [sp, #68]
	mov	r3, #0
	adds	r3, r5, #3
	it	pl
	movpl	r9, r3
	cmp	r5, #0
	ble	.L702
	asr	r9, r9, #2
	add	r6, sp, #4
	movs	r1, #0
	mov	r4, r0
	uxtb	r9, r9
	mov	r0, r6
	subs	r7, r5, #1
	lsl	r2, r9, #2
	bl	memset(PLT)
	movs	r1, #0
	mov	r3, r1
.L701:
	subs	r3, r7, r3
	ldrb	ip, [r4, r1]	@ zero_extendqisi2
	bic	r0, r3, #3
	and	r3, r3, #3
	adds	r1, r1, #1
	lsls	r3, r3, #3
	ldr	r2, [r6, r0]
	sxtb	r1, r1
	lsl	ip, ip, r3
	cmp	r5, r1
	orr	r2, r2, ip
	mov	r3, r1
	str	r2, [r6, r0]
	bgt	.L701
	ldrsb	r3, [r8]
	lsl	r2, r9, #2
	movs	r1, #0
	add	r4, r4, r7
	add	r6, r6, r3, lsl #2
	mov	r0, r6
	bl	memset(PLT)
	movs	r2, #0
	mov	r3, r2
.L703:
	subs	r3, r7, r3
	ldrb	r0, [r4, #1]!	@ zero_extendqisi2
	bic	ip, r3, #3
	and	r3, r3, #3
	adds	r2, r2, #1
	lsl	lr, r3, #3
	ldr	r1, [r6, ip]
	uxtb	r3, r2
	lsl	r0, r0, lr
	sxtb	r2, r2
	orrs	r1, r1, r0
	cmp	r5, r3
	str	r1, [r6, ip]
	bgt	.L703
.L702:
	ldr	r2, [sp, #64]
	ldr	r3, [r8, #128]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #60]
	ldr	r3, [r8, #124]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r3, [sp, #56]
	ldr	r2, [r8, #120]
	cmp	r2, r3
	bcc	.L699
	bhi	.L699
	ldr	r3, [sp, #52]
	ldr	r2, [r8, #116]
	cmp	r2, r3
	bcc	.L699
	bhi	.L699
	ldr	r3, [sp, #48]
	ldr	r2, [r8, #112]
	cmp	r2, r3
	bcc	.L699
	bhi	.L699
	ldr	r3, [sp, #44]
	ldr	r2, [r8, #108]
	cmp	r2, r3
	bcc	.L699
	bhi	.L699
	ldr	r3, [sp, #40]
	ldr	r2, [r8, #104]
	cmp	r2, r3
	bcc	.L699
	bhi	.L699
	ldr	r3, [sp, #36]
	ldr	r2, [r8, #100]
	cmp	r2, r3
	bcc	.L699
	bhi	.L699
	ldr	r2, [sp, #32]
	ldr	r3, [r8, #96]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #28]
	ldr	r3, [r8, #92]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #24]
	ldr	r3, [r8, #88]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #20]
	ldr	r3, [r8, #84]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #16]
	ldr	r3, [r8, #80]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #12]
	ldr	r3, [r8, #76]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #8]
	ldr	r3, [r8, #72]
	cmp	r2, r3
	bhi	.L699
	bcc	.L699
	ldr	r2, [sp, #4]
	ldr	r3, [r8, #68]
	cmp	r2, r3
	bhi	.L699
	it	cs
	mvncs	r0, #3
	bcs	.L695
.L699:
	mov	r1, r8
	add	r0, sp, #4
	bl	uECC_valid_point(PLT)
.L695:
	ldr	r2, .L712+8
	ldr	r3, .L712+4
.LPIC33:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #68]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L711
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L711:
	bl	__stack_chk_fail(PLT)
.L713:
	.align	2
.L712:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	1
	.p2align 2,,3
	.global	uECC_compute_public_key
	.syntax unified
	.thumb
	.thumb_func
	.type	uECC_compute_public_key, %function
uECC_compute_public_key:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r2
	ldr	r2, .L762
	ldr	r3, .L762+4
	sub	sp, sp, #184
.LPIC36:
	add	r2, pc
	ldrsh	r5, [r6, #2]
	mov	r8, r0
	mov	r7, r1
	add	r4, r5, #14
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #180]
	mov	r3, #0
	adds	r3, r5, #7
	it	pl
	movpl	r4, r3
	asrs	r4, r4, #3
	adds	r2, r4, #3
	add	r3, r4, #6
	it	pl
	movpl	r3, r2
	sbfx	r2, r3, #2, #8
	cmp	r2, #0
	ble	.L718
	asrs	r3, r3, #2
	movs	r1, #0
	subs	r3, r3, #1
	add	r0, sp, #16
	uxtb	r2, r3
	adds	r2, r2, #1
	lsls	r2, r2, #2
	bl	memset(PLT)
.L718:
	cmp	r5, #0
	itttt	gt
	movgt	r1, #0
	addgt	lr, r4, #-1
	movgt	r3, r1
	addgt	ip, sp, #16
	ble	.L717
.L721:
	sub	r3, lr, r3
	ldrb	r9, [r8, r1]	@ zero_extendqisi2
	bic	r0, r3, #3
	and	r3, r3, #3
	adds	r1, r1, #1
	lsls	r3, r3, #3
	ldr	r2, [ip, r0]
	sxtb	r1, r1
	lsl	r9, r9, r3
	cmp	r4, r1
	orr	r2, r2, r9
	mov	r3, r1
	str	r2, [ip, r0]
	bgt	.L721
.L717:
	adds	r3, r5, #31
	add	r8, r5, #62
	it	pl
	movpl	r8, r3
	asr	r4, r8, #5
	sbfx	r8, r8, #5, #8
	cmp	r8, #0
	ble	.L722
	uxtb	r4, r4
	add	r10, r4, #-1
	uxtb	r10, r10
	cmp	r10, #2
	bls	.L738
	lsr	lr, r4, #1
	add	r3, sp, #16
	movs	r2, #0
	add	lr, r3, lr, lsl #3
	mov	r1, r2
.L724:
	ldrd	ip, r0, [r3]
	adds	r3, r3, #8
	cmp	r3, lr
	orr	r2, ip, r2
	orr	r1, r1, r0
	bne	.L724
	orrs	r1, r1, r2
	lsls	r2, r4, #31
	bpl	.L725
	bic	r3, r4, #1
	sxtb	r3, r3
.L723:
	add	r2, sp, #184
	add	r2, r2, r3, lsl #2
	uxtb	r3, r3
	ldr	r2, [r2, #-168]
	orrs	r1, r1, r2
	adds	r2, r3, #1
	sxtb	r0, r2
	uxtb	r2, r2
	cmp	r8, r0
	ble	.L725
	add	r0, sp, #184
	adds	r3, r3, #2
	add	r2, r0, r2, lsl #2
	ldr	r2, [r2, #-168]
	orrs	r1, r1, r2
	sxtb	r2, r3
	cmp	r8, r2
	uxtb	r3, r3
	itttt	gt
	movgt	r2, r0
	addgt	r3, r2, r3, lsl #2
	ldrgt	r3, [r3, #-168]
	orrgt	r1, r1, r3
.L725:
	cmp	r1, #0
	beq	.L722
	add	r9, r6, #36
	add	r1, r6, #32
	add	r9, r9, r10, lsl #2
	add	lr, sp, #12
	add	ip, sp, #108
	movs	r2, #0
.L726:
	ldr	r0, [r1, #4]!
	ldr	r3, [lr, #4]!
	subs	r3, r0, r3
	subs	r3, r3, r2
	str	r3, [ip, #4]!
	cmp	r0, r3
	it	ne
	movne	r2, #0
	it	cc
	orrcc	r2, r2, #1
	cmp	r9, r1
	bne	.L726
	subs	r2, r2, #0
	it	ne
	movne	r2, #1
	cmp	r10, #2
	bls	.L739
	lsr	lr, r4, #1
	add	r3, sp, #112
	movs	r0, #0
	add	lr, r3, lr, lsl #3
	mov	ip, r0
.L728:
	ldr	r1, [r3]
	adds	r3, r3, #8
	cmp	lr, r3
	orr	r0, r0, r1
	ldr	r1, [r3, #-4]
	orr	ip, r1, ip
	bne	.L728
	orr	r0, r0, ip
	lsls	r3, r4, #31
	bpl	.L729
	bic	r4, r4, #1
	sxtb	r4, r4
.L727:
	add	r3, sp, #184
	add	r3, r3, r4, lsl #2
	uxtb	r4, r4
	ldr	r3, [r3, #-72]
	orrs	r0, r0, r3
	adds	r3, r4, #1
	sxtb	r1, r3
	uxtb	r3, r3
	cmp	r8, r1
	ble	.L729
	add	r1, sp, #184
	adds	r4, r4, #2
	add	r3, r1, r3, lsl #2
	ldr	r3, [r3, #-72]
	orrs	r0, r0, r3
	sxtb	r3, r4
	cmp	r8, r3
	uxtb	r4, r4
	itttt	gt
	movgt	r3, r1
	addgt	r4, r3, r4, lsl #2
	ldrgt	r3, [r4, #-72]
	orrgt	r0, r0, r3
.L729:
	lsls	r2, r2, #1
	cmp	r0, #0
	ite	eq
	rsbeq	r2, r2, #0
	rsbne	r2, r2, #1
	uxtb	r2, r2
	cmp	r2, #1
	beq	.L760
.L722:
	movs	r0, #0
.L714:
	ldr	r2, .L762+8
	ldr	r3, .L762+4
.LPIC35:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #180]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L761
	add	sp, sp, #184
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L760:
	add	r1, sp, #48
	add	r2, sp, #80
	mov	r3, r6
	add	r0, sp, #16
	str	r1, [sp, #8]
	adds	r5, r5, #1
	str	r2, [sp, #12]
	bl	regularize_k(PLT)
	clz	r0, r0
	add	r2, sp, #184
	sxth	r5, r5
	str	r6, [sp, #4]
	lsrs	r0, r0, #5
	str	r5, [sp]
	add	r4, sp, #112
	movs	r3, #0
	add	r0, r2, r0, lsl #2
	add	r1, r6, #68
	ldr	r2, [r0, #-176]
	mov	r0, r4
	bl	EccPoint_mult(PLT)
	ldrb	r3, [r6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	uxtb	r5, r3
	sxtb	r3, r3
	cmp	r3, #0
	ble	.L722
	movs	r3, #0
	add	r5, r4, r5, lsl #2
	mov	r0, r4
	mov	r2, r3
.L731:
	ldr	r1, [r0]
	adds	r0, r0, #8
	cmp	r0, r5
	orr	r3, r3, r1
	ldr	r1, [r0, #-4]
	orr	r2, r2, r1
	bne	.L731
	orrs	r3, r3, r2
	beq	.L722
	ldrsb	r4, [r6, #1]
	cmp	r4, #0
	itttt	gt
	movgt	r2, #0
	addgt	r5, r4, #-1
	addgt	r0, r7, #-1
	movgt	r3, r2
	ble	.L735
.L734:
	subs	r3, r5, r3
	adds	r1, r2, #1
	bic	r2, r3, #3
	and	r3, r3, #3
	adds	r2, r2, #184
	add	r2, sp, r2
	lsls	r3, r3, #3
	ldr	r2, [r2, #-72]
	lsr	r3, r2, r3
	strb	r3, [r0, #1]!
	uxtb	r3, r1
	sxtb	r2, r1
	cmp	r4, r3
	bgt	.L734
	ldrsb	r5, [r6]
	ldrsb	r0, [r6, #1]
	lsls	r5, r5, #2
	cmp	r0, #0
	ble	.L735
	add	r3, r5, #184
	movs	r2, #0
	add	r5, sp, r3
	subs	r4, r0, #1
	add	r7, r7, r0
	mov	r3, r2
.L736:
	subs	r3, r4, r3
	adds	r2, r2, #1
	bic	r1, r3, #3
	and	r3, r3, #3
	add	r1, r1, r5
	lsls	r3, r3, #3
	ldr	r1, [r1, #-72]
	lsrs	r1, r1, r3
	uxtb	r3, r2
	cmp	r0, r3
	sxtb	r2, r2
	strb	r1, [r7], #1
	bgt	.L736
.L735:
	movs	r0, #1
	b	.L714
.L738:
	movs	r1, #0
	mov	r3, r1
	b	.L723
.L739:
	movs	r0, #0
	mov	r4, r0
	b	.L727
.L761:
	bl	__stack_chk_fail(PLT)
.L763:
	.align	2
.L762:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
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
