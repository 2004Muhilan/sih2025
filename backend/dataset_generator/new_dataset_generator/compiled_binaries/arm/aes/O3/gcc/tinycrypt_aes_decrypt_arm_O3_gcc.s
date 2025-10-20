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
	mov	r4, r2
	ldr	r2, .L15
	str	r0, [sp, #64]
	ldr	r0, .L15+4
.LPIC18:
	add	r0, pc
	ldr	r2, [r0, r2]
	movs	r0, #0
	ldr	r2, [r2]
	str	r2, [sp, #108]
	mov	r2, #0
	cbz	r3, .L12
.L5:
	ldr	r2, .L15+8
	ldr	r3, .L15
.LPIC17:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #108]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L13
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L12:
	movs	r3, #16
	mov	r2, r1
	add	r0, sp, #72
	mov	r1, r3
	str	r0, [sp, #8]
	bl	_copy(PLT)
	ldrd	r3, r2, [r4, #164]
	str	r4, [sp, #68]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	ldr	r1, [r4, #160]
	ldrb	r6, [sp, #74]	@ zero_extendqisi2
	eor	r0, r0, r3, lsr #8
	ldr	r4, [r4, #172]
	ldrb	r9, [sp, #72]	@ zero_extendqisi2
	uxtb	r10, r0
	ldrb	r0, [sp, #81]	@ zero_extendqisi2
	eor	r6, r6, r1, lsr #8
	ldrb	r7, [sp, #73]	@ zero_extendqisi2
	eor	r9, r9, r1, lsr #24
	ldrb	r8, [sp, #76]	@ zero_extendqisi2
	eor	r0, r0, r2, lsr #16
	uxtb	r5, r6
	str	r5, [sp, #28]
	eor	r7, r7, r1, lsr #16
	uxtb	fp, r0
	ldrb	r0, [sp, #82]	@ zero_extendqisi2
	strb	r5, [sp, #74]
	eor	r8, r8, r3, lsr #24
	ldrb	r5, [sp, #77]	@ zero_extendqisi2
	uxtb	r7, r7
	eor	r0, r0, r2, lsr #8
	strb	r9, [sp, #72]
	strb	r7, [sp, #73]
	uxtb	r6, r0
	ldrb	r0, [sp, #85]	@ zero_extendqisi2
	str	r6, [sp, #20]
	eor	r5, r5, r3, lsr #16
	strb	r6, [sp, #82]
	eor	r0, r0, r4, lsr #16
	uxtb	r5, r5
	strb	r10, [sp, #78]
	uxtb	r6, r0
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r6, [sp, #16]
	eors	r0, r0, r1
	strb	r6, [sp, #85]
	strb	r5, [sp, #77]
	uxtb	r1, r0
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	str	r1, [sp, #24]
	strb	r1, [sp, #75]
	eors	r0, r0, r3
	ldrb	r1, [sp, #83]	@ zero_extendqisi2
	uxtb	r0, r0
	strb	fp, [sp, #81]
	eors	r1, r1, r2
	strb	r0, [sp, #79]
	ldr	r6, .L15+12
	uxtb	r1, r1
	strb	r1, [sp, #83]
	strb	r8, [sp, #76]
.LPIC0:
	add	r6, pc
	ldrb	lr, [sp, #80]	@ zero_extendqisi2
	ldrb	ip, [sp, #84]	@ zero_extendqisi2
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	eor	lr, lr, r2, lsr #24
	ldrb	r2, [sp, #86]	@ zero_extendqisi2
	eor	ip, ip, r4, lsr #24
	eors	r3, r3, r4
	strb	lr, [sp, #80]
	eor	r2, r2, r4, lsr #8
	ldr	r4, [sp, #68]
	str	r4, [sp, #4]
	uxtb	r3, r3
	subs	r4, r4, #144
	uxtb	r2, r2
	str	r4, [sp, #36]
	add	r4, sp, #92
	strb	ip, [sp, #84]
	str	r4, [sp, #12]
	add	r4, sp, #76
	strb	r2, [sp, #86]
	str	r4, [sp, #40]
	add	r4, sp, #96
	strb	r3, [sp, #87]
	str	r4, [sp, #52]
	add	r4, sp, #80
	str	r4, [sp, #44]
	add	r4, sp, #100
	str	r4, [sp, #56]
	add	r4, sp, #84
	str	r4, [sp, #48]
	add	r4, sp, #104
	str	r4, [sp, #60]
	mov	r4, r8
	ldr	r8, [sp, #4]
	str	r6, [sp, #4]
	b	.L8
.L14:
	ldrb	r3, [sp, #85]	@ zero_extendqisi2
	str	r3, [sp, #16]
	ldrb	r3, [sp, #82]	@ zero_extendqisi2
	str	r3, [sp, #20]
	ldrb	r3, [sp, #74]	@ zero_extendqisi2
	str	r3, [sp, #28]
	ldrb	r9, [sp, #72]	@ zero_extendqisi2
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	ldrb	r4, [sp, #76]	@ zero_extendqisi2
	ldrb	r7, [sp, #73]	@ zero_extendqisi2
	ldrb	r2, [sp, #86]	@ zero_extendqisi2
	ldrb	r1, [sp, #83]	@ zero_extendqisi2
	ldrb	lr, [sp, #80]	@ zero_extendqisi2
	ldrb	r5, [sp, #77]	@ zero_extendqisi2
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	ldrb	ip, [sp, #84]	@ zero_extendqisi2
	ldrb	fp, [sp, #81]	@ zero_extendqisi2
	ldrb	r10, [sp, #78]	@ zero_extendqisi2
	ldrb	r6, [sp, #75]	@ zero_extendqisi2
	str	r6, [sp, #24]
.L8:
	strb	r3, [sp, #103]
	sub	r8, r8, #16
	ldr	r3, [sp, #24]
	ldr	r6, [sp, #16]
	strb	r2, [sp, #98]
	strb	r3, [sp, #107]
	movs	r3, #16
	ldr	r2, [sp, #28]
	strb	r6, [sp, #93]
	strb	r0, [sp, #95]
	ldr	r6, [sp, #20]
	strb	r1, [sp, #99]
	mov	r1, r3
	strb	r2, [sp, #102]
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #12]
	strb	r9, [sp, #92]
	strb	r6, [sp, #94]
	strb	r4, [sp, #96]
	strb	r7, [sp, #97]
	strb	lr, [sp, #100]
	strb	r5, [sp, #101]
	strb	ip, [sp, #104]
	strb	fp, [sp, #105]
	strb	r10, [sp, #106]
	bl	_copy(PLT)
	ldrb	r2, [sp, #79]	@ zero_extendqisi2
	ldr	r4, [sp, #4]
	ldrb	r3, [sp, #76]	@ zero_extendqisi2
	ldrb	r5, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #80]	@ zero_extendqisi2
	ldrb	lr, [r4, r3]	@ zero_extendqisi2
	ldrb	r3, [sp, #77]	@ zero_extendqisi2
	ldrb	r1, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #81]	@ zero_extendqisi2
	ldrb	r6, [r4, r3]	@ zero_extendqisi2
	ldrb	r3, [sp, #78]	@ zero_extendqisi2
	str	r1, [sp, #20]
	mov	r1, r4
	ldrb	r7, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #82]	@ zero_extendqisi2
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	ldrb	r0, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #83]	@ zero_extendqisi2
	ldrb	r10, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #84]	@ zero_extendqisi2
	ldrb	fp, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #85]	@ zero_extendqisi2
	ldrb	r4, [r4, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #86]	@ zero_extendqisi2
	ldrb	r9, [r1, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #87]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	str	r2, [sp, #24]
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldrb	r2, [sp, #73]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	ldr	r1, [r8, #160]
	eor	r2, r2, r1, lsr #16
	str	r2, [sp, #28]
	ldr	r2, [r8, #164]
	eor	ip, ip, r1, lsr #24
	eors	r5, r5, r2
	eor	lr, lr, r2, lsr #24
	eor	r6, r6, r2, lsr #16
	eor	r2, r3, r2, lsr #8
	str	r6, [sp, #16]
	ldr	r3, [r8, #168]
	ldr	r6, [sp, #20]
	eor	r10, r10, r3
	eor	r7, r7, r3, lsr #16
	eor	r6, r6, r3, lsr #24
	eor	r3, r0, r3, lsr #8
	ldr	r0, [r8, #172]
	str	r6, [sp, #20]
	ldr	r6, [sp, #24]
	eor	r4, r4, r0, lsr #16
	eor	fp, fp, r0, lsr #24
	eors	r6, r6, r0
	eor	r0, r9, r0, lsr #8
	ldrb	r9, [sp, #74]	@ zero_extendqisi2
	str	r6, [sp, #24]
	ldr	r6, [sp, #4]
	ldrb	r9, [r6, r9]	@ zero_extendqisi2
	ldr	r6, [sp, #4]
	eor	r9, r9, r1, lsr #8
	str	r9, [sp, #32]
	ldrb	r9, [sp, #75]	@ zero_extendqisi2
	ldrb	r9, [r6, r9]	@ zero_extendqisi2
	ldr	r6, [sp, #16]
	eor	r9, r9, r1
	movs	r1, #0
	bfi	r1, lr, #0, #8
	bfi	r1, r6, #8, #8
	ldr	r6, [sp, #20]
	bfi	r1, r2, #16, #8
	movs	r2, #0
	bfi	r2, r6, #0, #8
	ldr	r6, [sp, #24]
	bfi	r1, r5, #24, #8
	str	r1, [sp, #76]
	bfi	r2, r7, #8, #8
	ldr	r1, [sp, #28]
	ldr	r5, [sp, #8]
	bfi	r2, r3, #16, #8
	movs	r3, #0
	bfi	r3, fp, #0, #8
	bfi	r2, r10, #24, #8
	str	r2, [sp, #80]
	bfi	r3, r4, #8, #8
	ldr	r4, [sp, #12]
	bfi	r3, r0, #16, #8
	mov	r0, r4
	bfi	r3, r6, #24, #8
	str	r3, [sp, #84]
	movs	r3, #0
	ldr	r6, [sp, #32]
	bfi	r3, ip, #0, #8
	bfi	r3, r1, #8, #8
	mov	r1, r5
	bfi	r3, r6, #16, #8
	bfi	r3, r9, #24, #8
	str	r3, [sp, #72]
	bl	mult_row_column(PLT)
	ldr	r1, [sp, #40]
	ldr	r0, [sp, #52]
	bl	mult_row_column(PLT)
	ldr	r1, [sp, #44]
	ldr	r0, [sp, #56]
	bl	mult_row_column(PLT)
	ldr	r1, [sp, #48]
	ldr	r0, [sp, #60]
	bl	mult_row_column(PLT)
	movs	r3, #16
	mov	r1, r3
	mov	r2, r4
	mov	r0, r5
	bl	_copy(PLT)
	ldr	r3, [sp, #36]
	cmp	r3, r8
	bne	.L14
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	movs	r4, #0
	ldrb	r1, [sp, #80]	@ zero_extendqisi2
	ldrb	r3, [sp, #84]	@ zero_extendqisi2
	bfi	r4, r0, #0, #8
	movs	r0, #0
	ldrb	r5, [sp, #72]	@ zero_extendqisi2
	bfi	r0, r1, #0, #8
	movs	r1, #0
	ldr	r2, [sp, #12]
	bfi	r1, r3, #0, #8
	movs	r3, #0
	ldr	r6, [sp, #4]
	bfi	r3, r5, #0, #8
	ldrb	r5, [sp, #73]	@ zero_extendqisi2
	bfi	r4, r5, #8, #8
	ldrb	r5, [sp, #77]	@ zero_extendqisi2
	bfi	r0, r5, #8, #8
	ldrb	r5, [sp, #81]	@ zero_extendqisi2
	bfi	r1, r5, #8, #8
	ldrb	r5, [sp, #85]	@ zero_extendqisi2
	bfi	r3, r5, #8, #8
	ldrb	r5, [sp, #86]	@ zero_extendqisi2
	bfi	r4, r5, #16, #8
	ldrb	r5, [sp, #74]	@ zero_extendqisi2
	bfi	r0, r5, #16, #8
	ldrb	r5, [sp, #78]	@ zero_extendqisi2
	bfi	r1, r5, #16, #8
	ldrb	r5, [sp, #82]	@ zero_extendqisi2
	bfi	r3, r5, #16, #8
	ldrb	r5, [sp, #83]	@ zero_extendqisi2
	bfi	r4, r5, #24, #8
	str	r4, [sp, #96]
	ldrb	r4, [sp, #87]	@ zero_extendqisi2
	bfi	r0, r4, #24, #8
	str	r0, [sp, #100]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	bfi	r1, r0, #24, #8
	str	r1, [sp, #104]
	ldrb	r1, [sp, #79]	@ zero_extendqisi2
	ldr	r0, [sp, #8]
	bfi	r3, r1, #24, #8
	str	r3, [sp, #92]
	movs	r3, #16
	mov	r1, r3
	bl	_copy(PLT)
	ldrb	r3, [sp, #72]	@ zero_extendqisi2
	ldrb	r8, [sp, #84]	@ zero_extendqisi2
	ldr	r0, [sp, #64]
	ldrb	ip, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #73]	@ zero_extendqisi2
	ldrb	lr, [r8, r6]	@ zero_extendqisi2
	ldrb	r8, [sp, #85]	@ zero_extendqisi2
	ldrb	r7, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #74]	@ zero_extendqisi2
	ldrb	r8, [r8, r6]	@ zero_extendqisi2
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	str	r3, [sp, #20]
	ldrb	r3, [sp, #75]	@ zero_extendqisi2
	ldrb	r2, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #76]	@ zero_extendqisi2
	str	r2, [sp, #24]
	ldrb	r4, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #77]	@ zero_extendqisi2
	ldrb	r1, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #78]	@ zero_extendqisi2
	ldrb	r5, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	ldrb	r2, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	str	r2, [sp, #28]
	ldrb	r9, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #81]	@ zero_extendqisi2
	ldrb	r10, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #82]	@ zero_extendqisi2
	ldrb	fp, [r3, r6]	@ zero_extendqisi2
	ldrb	r3, [sp, #83]	@ zero_extendqisi2
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	str	r8, [sp, #4]
	ldrb	r8, [sp, #86]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	ldrb	r8, [r8, r6]	@ zero_extendqisi2
	str	r8, [sp, #12]
	ldrb	r8, [sp, #87]	@ zero_extendqisi2
	ldrb	r6, [r8, r6]	@ zero_extendqisi2
	str	r6, [sp, #16]
	ldr	r6, [sp, #68]
	ldr	r8, [r6]
	eor	r2, r2, r8
	str	r2, [sp, #32]
	eor	r7, r7, r8, lsr #16
	str	r7, [sp, #24]
	ldr	r7, [sp, #20]
	eor	ip, ip, r8, lsr #24
	ldr	r2, [sp, #28]
	eor	r8, r7, r8, lsr #8
	mov	r7, r6
	ldr	r6, [r6, #4]
	eors	r2, r2, r6
	str	r2, [sp, #20]
	eor	r4, r4, r6, lsr #24
	eor	r1, r1, r6, lsr #16
	eor	r6, r5, r6, lsr #8
	ldr	r2, [sp, #4]
	ldrd	r5, r7, [r7, #8]
	eors	r3, r3, r5
	str	r3, [sp, #28]
	eor	lr, lr, r7, lsr #24
	strb	lr, [sp, #84]
	eor	lr, r2, r7, lsr #16
	ldr	r2, [sp, #12]
	strb	lr, [sp, #85]
	eor	r3, r9, r5, lsr #24
	eor	r10, r10, r5, lsr #16
	eor	r5, fp, r5, lsr #8
	eor	lr, r2, r7, lsr #8
	ldr	r2, [sp, #16]
	strb	lr, [sp, #86]
	eors	r7, r7, r2
	strb	r7, [sp, #87]
	movs	r7, #0
	ldr	r2, [sp, #24]
	bfi	r7, ip, #0, #8
	bfi	r7, r2, #8, #8
	ldr	r2, [sp, #32]
	bfi	r7, r8, #16, #8
	bfi	r7, r2, #24, #8
	str	r7, [sp, #72]
	movs	r7, #0
	ldr	r2, [sp, #20]
	bfi	r7, r4, #0, #8
	bfi	r7, r1, #8, #8
	ldr	r1, [sp, #28]
	bfi	r7, r6, #16, #8
	bfi	r7, r2, #24, #8
	movs	r2, #0
	str	r7, [sp, #76]
	bfi	r2, r3, #0, #8
	movs	r3, #16
	bfi	r2, r10, #8, #8
	bfi	r2, r5, #16, #8
	bfi	r2, r1, #24, #8
	str	r2, [sp, #80]
	ldr	r4, [sp, #8]
	mov	r1, r3
	mov	r2, r4
	bl	_copy(PLT)
	mov	r0, r4
	movs	r2, #16
	movs	r1, #0
	bl	_set(PLT)
	movs	r0, #1
	b	.L5
.L13:
	bl	__stack_chk_fail(PLT)
.L16:
	.align	2
.L15:
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
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
