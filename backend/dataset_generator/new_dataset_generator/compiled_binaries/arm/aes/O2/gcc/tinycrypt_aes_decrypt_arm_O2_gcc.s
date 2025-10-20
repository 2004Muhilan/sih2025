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
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.type	mult_row_column, %function
mult_row_column:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	mov	r5, r0
	sub	sp, sp, #12
	ldrb	r0, [r1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	str	r2, [sp, #4]
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r3, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	str	r3, [sp]
	bl	_double_byte(PLT)
	mov	fp, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	ldrb	r6, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #2]	@ zero_extendqisi2
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	eors	r6, r6, r1
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	eors	r6, r6, r1
	ldr	r3, [sp]
	eors	r2, r2, r6
	eors	r3, r3, r2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r0, r0, r7
	strb	r0, [r5]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r6, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	fp, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #2]	@ zero_extendqisi2
	mov	r8, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	eors	r6, r6, r1
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	eors	r6, r6, r1
	ldr	r3, [sp]
	eors	r2, r2, r6
	eors	r3, r3, r2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r0, r0, r7
	strb	r0, [r5, #1]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r2, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	str	r2, [sp, #4]
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrb	r6, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	mov	fp, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	eors	r6, r6, r1
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	eors	r6, r6, r1
	ldr	r3, [sp]
	eors	r2, r2, r6
	eors	r3, r3, r2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r0, r0, r7
	strb	r0, [r5, #2]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrb	fp, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r6, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	eor	fp, fp, r3
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	eor	fp, fp, r3
	bl	_double_byte(PLT)
	eor	r10, r10, fp
	bl	_double_byte(PLT)
	eor	r9, r9, r10
	bl	_double_byte(PLT)
	eor	r8, r8, r9
	eor	r6, r6, r8
	eors	r7, r7, r6
	mov	r6, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	uxtb	r7, r7
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r6, r6, r7
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	mov	r4, r3
	bl	_double_byte(PLT)
	eors	r4, r4, r6
	eors	r0, r0, r4
	strb	r0, [r5, #3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	mult_row_column, .-mult_row_column
	.align	1
	.p2align 2,,3
	.global	tc_aes128_set_decrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	tc_aes128_set_encrypt_key(PLT)
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.p2align 2,,3
	.global	tc_aes_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	it	eq
	moveq	r3, #1
	sub	sp, sp, #116
	it	ne
	movne	r3, #0
	cmp	r0, #0
	it	eq
	orreq	r3, r3, #1
	mov	r5, r2
	str	r0, [sp, #60]
	ldr	r0, .L19
	str	r2, [sp, #64]
	ldr	r2, .L19+4
.LPIC2:
	add	r0, pc
	ldr	r2, [r0, r2]
	movs	r0, #0
	ldr	r2, [r2]
	str	r2, [sp, #108]
	mov	r2, #0
	cbz	r3, .L16
.L5:
	ldr	r2, .L19+8
	ldr	r3, .L19+4
.LPIC1:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #108]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L17
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L16:
	add	r8, sp, #72
	movs	r3, #16
	mov	r2, r1
	mov	r0, r8
	mov	r1, r3
	bl	_copy(PLT)
	ldr	r1, [r5, #160]
	ldrb	r7, [sp, #73]	@ zero_extendqisi2
	ldrd	r3, r2, [r5, #164]
	eor	r7, r7, r1, lsr #16
	ldrb	fp, [sp, #72]	@ zero_extendqisi2
	ldrb	r6, [sp, #74]	@ zero_extendqisi2
	uxtb	r0, r7
	str	r0, [sp, #4]
	strb	r0, [sp, #73]
	eor	fp, fp, r1, lsr #24
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	eor	r6, r6, r1, lsr #8
	ldr	r4, [r5, #172]
	sub	r7, r5, #144
	ldrb	lr, [sp, #85]	@ zero_extendqisi2
	uxtb	r6, r6
	eor	r0, r0, r3, lsr #16
	ldrb	r10, [sp, #76]	@ zero_extendqisi2
	strb	fp, [sp, #72]
	uxtb	r0, r0
	str	r0, [sp, #12]
	strb	r0, [sp, #77]
	eor	lr, lr, r4, lsr #16
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	eor	r10, r10, r3, lsr #24
	uxtb	lr, lr
	strb	r6, [sp, #74]
	strb	lr, [sp, #85]
	eor	r0, r0, r3, lsr #8
	uxtb	r0, r0
	str	r0, [sp, #24]
	strb	r0, [sp, #78]
	ldrb	r0, [sp, #81]	@ zero_extendqisi2
	eor	r0, r0, r2, lsr #16
	uxtb	r0, r0
	str	r0, [sp, #20]
	strb	r0, [sp, #81]
	ldrb	r0, [sp, #82]	@ zero_extendqisi2
	eor	r0, r0, r2, lsr #8
	uxtb	r0, r0
	str	r0, [sp]
	strb	r0, [sp, #82]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	eors	r0, r0, r1
	ldrb	r1, [sp, #83]	@ zero_extendqisi2
	uxtb	ip, r0
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	eors	r1, r1, r2
	strb	ip, [sp, #75]
	eors	r0, r0, r3
	uxtb	r1, r1
	strb	r1, [sp, #83]
	uxtb	r0, r0
	strb	r0, [sp, #79]
	strb	r10, [sp, #76]
	ldrb	r9, [sp, #80]	@ zero_extendqisi2
	str	r5, [sp, #68]
	add	r5, sp, #76
	str	r7, [sp, #32]
	add	r7, sp, #92
	eor	r3, r9, r2, lsr #24
	str	r3, [sp, #8]
	strb	r3, [sp, #80]
	add	r9, sp, #88
	ldrb	r3, [sp, #84]	@ zero_extendqisi2
	ldrb	r2, [sp, #86]	@ zero_extendqisi2
	str	r5, [sp, #36]
	add	r5, sp, #96
	eor	r3, r3, r4, lsr #24
	str	r3, [sp, #16]
	strb	r3, [sp, #84]
	eor	r2, r2, r4, lsr #8
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	uxtb	r2, r2
	str	r5, [sp, #48]
	eors	r3, r3, r4
	ldr	r4, .L19+12
	add	r5, sp, #80
	strb	r2, [sp, #86]
.LPIC0:
	add	r4, pc
	uxtb	r3, r3
	str	r5, [sp, #40]
	add	r5, sp, #100
	strb	r3, [sp, #87]
	str	r5, [sp, #52]
	add	r5, sp, #84
	str	r3, [sp, #28]
	str	r5, [sp, #44]
	add	r5, sp, #104
	str	r5, [sp, #56]
	mov	r5, r8
	mov	r8, r4
	ldr	r4, [sp, #68]
	b	.L9
.L18:
	ldrb	r3, [sp, #82]	@ zero_extendqisi2
	str	r3, [sp]
	ldrb	r3, [sp, #73]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	str	r3, [sp, #8]
	ldrb	r3, [sp, #77]	@ zero_extendqisi2
	str	r3, [sp, #12]
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	str	r3, [sp, #28]
	ldrb	r3, [sp, #84]	@ zero_extendqisi2
	str	r3, [sp, #16]
	ldrb	fp, [sp, #72]	@ zero_extendqisi2
	ldrb	r3, [sp, #81]	@ zero_extendqisi2
	ldrb	lr, [sp, #85]	@ zero_extendqisi2
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	ldrb	r10, [sp, #76]	@ zero_extendqisi2
	ldrb	r2, [sp, #86]	@ zero_extendqisi2
	ldrb	r1, [sp, #83]	@ zero_extendqisi2
	ldrb	r6, [sp, #74]	@ zero_extendqisi2
	ldrb	ip, [sp, #75]	@ zero_extendqisi2
	str	r3, [sp, #20]
	ldrb	r3, [sp, #78]	@ zero_extendqisi2
	str	r3, [sp, #24]
.L9:
	ldr	r3, [sp]
	strb	r3, [sp, #94]
	ldr	r3, [sp, #4]
	strb	r3, [sp, #97]
	ldr	r3, [sp, #8]
	strb	r3, [sp, #100]
	ldr	r3, [sp, #12]
	strb	r3, [sp, #101]
	ldr	r3, [sp, #28]
	strb	r3, [sp, #103]
	ldr	r3, [sp, #16]
	strb	r3, [sp, #104]
	ldr	r3, [sp, #20]
	strb	r3, [sp, #105]
	ldr	r3, [sp, #24]
	strb	r3, [sp, #106]
	movs	r3, #16
	strb	r0, [sp, #95]
	mov	r0, r5
	strb	r2, [sp, #98]
	mov	r2, r7
	strb	r1, [sp, #99]
	mov	r1, r3
	strb	fp, [sp, #92]
	strb	lr, [sp, #93]
	strb	r10, [sp, #96]
	strb	r6, [sp, #102]
	strb	ip, [sp, #107]
	bl	_copy(PLT)
	mov	r3, r5
.L7:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #8
	ldrb	fp, [r8, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	ldrb	r10, [r8, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-7]	@ zero_extendqisi2
	ldrb	lr, [r8, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-3]	@ zero_extendqisi2
	ldrb	ip, [r8, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-6]	@ zero_extendqisi2
	ldrb	r6, [r8, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r8, r2]	@ zero_extendqisi2
	movs	r2, #0
	mov	r1, r2
	bfi	r2, fp, #0, #8
	bfi	r1, r10, #0, #8
	bfi	r2, lr, #8, #8
	bfi	r1, ip, #8, #8
	bfi	r2, r6, #16, #8
	bfi	r1, r0, #16, #8
	ldrb	r0, [r3, #-5]	@ zero_extendqisi2
	ldrb	r0, [r8, r0]	@ zero_extendqisi2
	bfi	r2, r0, #24, #8
	str	r2, [r3, #-8]
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	ldrb	r2, [r8, r2]	@ zero_extendqisi2
	bfi	r1, r2, #24, #8
	str	r1, [r3, #-4]
	cmp	r3, r9
	bne	.L7
	ldr	r0, [r4, #148]
	subs	r4, r4, #16
	ldr	r6, [sp, #76]
	ldr	r1, [r4, #168]
	rev	r0, r0
	eors	r0, r0, r6
	str	r0, [sp, #76]
	ldr	r0, [sp, #80]
	rev	r1, r1
	ldr	r2, [r4, #172]
	eors	r1, r1, r0
	str	r1, [sp, #80]
	ldr	r1, [sp, #84]
	rev	r2, r2
	ldr	r3, [r4, #160]
	mov	r0, r7
	eors	r2, r2, r1
	str	r2, [sp, #84]
	ldr	r2, [sp, #72]
	mov	r1, r5
	rev	r3, r3
	eors	r3, r3, r2
	str	r3, [sp, #72]
	bl	mult_row_column(PLT)
	ldr	r1, [sp, #36]
	ldr	r0, [sp, #48]
	bl	mult_row_column(PLT)
	ldr	r1, [sp, #40]
	ldr	r0, [sp, #52]
	bl	mult_row_column(PLT)
	ldr	r1, [sp, #44]
	ldr	r0, [sp, #56]
	bl	mult_row_column(PLT)
	movs	r3, #16
	mov	r1, r3
	mov	r2, r7
	mov	r0, r5
	bl	_copy(PLT)
	ldr	r3, [sp, #32]
	cmp	r3, r4
	bne	.L18
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	mov	r4, r8
	mov	r8, r5
	movs	r5, #0
	ldrb	r1, [sp, #80]	@ zero_extendqisi2
	mov	r2, r7
	bfi	r5, r0, #0, #8
	movs	r0, #0
	ldrb	r3, [sp, #84]	@ zero_extendqisi2
	bfi	r0, r1, #0, #8
	movs	r1, #0
	ldrb	r6, [sp, #72]	@ zero_extendqisi2
	bfi	r1, r3, #0, #8
	movs	r3, #0
	bfi	r3, r6, #0, #8
	ldrb	r6, [sp, #73]	@ zero_extendqisi2
	bfi	r5, r6, #8, #8
	ldrb	r6, [sp, #77]	@ zero_extendqisi2
	bfi	r0, r6, #8, #8
	ldrb	r6, [sp, #81]	@ zero_extendqisi2
	bfi	r1, r6, #8, #8
	ldrb	r6, [sp, #85]	@ zero_extendqisi2
	bfi	r3, r6, #8, #8
	ldrb	r6, [sp, #86]	@ zero_extendqisi2
	bfi	r5, r6, #16, #8
	ldrb	r6, [sp, #74]	@ zero_extendqisi2
	bfi	r0, r6, #16, #8
	ldrb	r6, [sp, #78]	@ zero_extendqisi2
	bfi	r1, r6, #16, #8
	ldrb	r6, [sp, #82]	@ zero_extendqisi2
	bfi	r3, r6, #16, #8
	ldrb	r6, [sp, #83]	@ zero_extendqisi2
	bfi	r5, r6, #24, #8
	str	r5, [sp, #96]
	ldrb	r5, [sp, #87]	@ zero_extendqisi2
	bfi	r0, r5, #24, #8
	str	r0, [sp, #100]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	bfi	r1, r0, #24, #8
	str	r1, [sp, #104]
	ldrb	r1, [sp, #79]	@ zero_extendqisi2
	mov	r0, r8
	bfi	r3, r1, #24, #8
	str	r3, [sp, #92]
	movs	r3, #16
	mov	r1, r3
	bl	_copy(PLT)
	mov	r3, r8
.L10:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #8
	ldrb	lr, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	ldrb	ip, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-7]	@ zero_extendqisi2
	ldrb	r7, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-3]	@ zero_extendqisi2
	ldrb	r6, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-6]	@ zero_extendqisi2
	ldrb	r5, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r4, r2]	@ zero_extendqisi2
	movs	r2, #0
	mov	r1, r2
	bfi	r2, lr, #0, #8
	bfi	r1, ip, #0, #8
	bfi	r2, r7, #8, #8
	bfi	r1, r6, #8, #8
	bfi	r2, r5, #16, #8
	bfi	r1, r0, #16, #8
	ldrb	r0, [r3, #-5]	@ zero_extendqisi2
	ldrb	r0, [r4, r0]	@ zero_extendqisi2
	bfi	r2, r0, #24, #8
	str	r2, [r3, #-8]
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	bfi	r1, r2, #24, #8
	str	r1, [r3, #-4]
	cmp	r3, r9
	bne	.L10
	ldr	r2, [sp, #64]
	ldr	r5, [sp, #76]
	ldr	r0, [sp, #60]
	ldrd	r1, r3, [r2]
	rev	r4, r1
	rev	r1, r3
	ldrd	r3, r2, [r2, #8]
	eors	r1, r1, r5
	str	r1, [sp, #76]
	ldr	r1, [sp, #80]
	rev	r3, r3
	rev	r2, r2
	eors	r3, r3, r1
	ldr	r1, [sp, #84]
	str	r3, [sp, #80]
	movs	r3, #16
	eors	r2, r2, r1
	str	r2, [sp, #84]
	ldr	r2, [sp, #72]
	mov	r1, r3
	eors	r4, r4, r2
	mov	r2, r8
	str	r4, [sp, #72]
	bl	_copy(PLT)
	mov	r0, r8
	movs	r2, #16
	movs	r1, #0
	bl	_set(PLT)
	movs	r0, #1
	b	.L5
.L17:
	bl	__stack_chk_fail(PLT)
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	.LANCHOR0-(.LPIC0+4)
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	inv_sbox, %object
	.size	inv_sbox, 256
inv_sbox:
	.ascii	"R\011j\32506\2458\277@\243\236\201\363\327\373|\343"
	.ascii	"9\202\233/\377\2074\216CD\304\336\351\313T{\2242\246"
	.ascii	"\302#=\356L\225\013B\372\303N\010.\241f(\331$\262v["
	.ascii	"\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314"
	.ascii	"]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204"
	.ascii	"\220\330\253\000\214\274\323\012\367\344X\005\270\263"
	.ascii	"E\006\320,\036\217\312?\017\002\301\257\275\003\001"
	.ascii	"\023\212k:\221\021AOg\334\352\227\362\317\316\360\264"
	.ascii	"\346s\226\254t\"\347\2555\205\342\3717\350\034u\337"
	.ascii	"nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374"
	.ascii	"V>K\306\322y \232\333\300\376x\315Z\364\037\335\250"
	.ascii	"3\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031"
	.ascii	"\265J\015-\345z\237\223\311\234\357\240\340;M\256*\365"
	.ascii	"\260\310\353\273<\203S\231a\027+\004~\272w\326&\341"
	.ascii	"i\024cU!\014}"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
