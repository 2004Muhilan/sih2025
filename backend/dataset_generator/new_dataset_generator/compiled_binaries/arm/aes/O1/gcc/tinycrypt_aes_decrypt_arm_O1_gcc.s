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
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mult_row_column, %function
mult_row_column:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	r5, r0
	mov	r4, r1
	ldrb	r0, [r1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r6, r0
	ldrb	fp, [r4, #1]	@ zero_extendqisi2
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp, #4]
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	eor	fp, fp, r3
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r6, r6, r7
	ldr	r3, [sp]
	eors	r3, r3, r6
	mov	r6, r3
	ldr	r3, [sp, #4]
	eors	r3, r3, r6
	eors	r0, r0, r3
	strb	r0, [r5]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	fp, [r4]	@ zero_extendqisi2
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r6, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	eor	fp, fp, r3
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r6, r6, r7
	ldr	r3, [sp]
	eors	r3, r3, r6
	mov	r6, r3
	ldr	r3, [sp, #4]
	eors	r3, r3, r6
	eors	r0, r0, r3
	strb	r0, [r5, #1]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	fp, [r4]	@ zero_extendqisi2
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	eor	fp, fp, r3
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r6, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r6, r6, r7
	ldr	r3, [sp]
	eors	r3, r3, r6
	mov	r6, r3
	ldr	r3, [sp, #4]
	eors	r3, r3, r6
	eors	r0, r0, r3
	strb	r0, [r5, #2]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r10, [r4]	@ zero_extendqisi2
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r6, r0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	eor	r10, r10, r3
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	eor	r10, r10, r3
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r6, r6, r7
	eor	r8, r0, r6
	uxtb	r8, r8
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r6, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	eor	r7, r7, r8
	eors	r6, r6, r7
	eors	r0, r0, r6
	strb	r0, [r5, #3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	mult_row_column, .-mult_row_column
	.align	1
	.global	tc_aes128_set_decrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	tc_aes128_set_encrypt_key(PLT)
	pop	{r3, pc}
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.global	tc_aes_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	ldr	r4, .L18
.LPIC3:
	add	r4, pc
	ldr	r3, .L18+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
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
	cbz	r1, .L16
	movs	r0, #0
.L5:
	ldr	r2, .L18+8
.LPIC2:
	add	r2, pc
	ldr	r3, .L18+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L17
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L16:
	mov	r9, r2
	mov	fp, r0
	movs	r3, #16
	mov	r2, r4
	mov	r1, r3
	add	r0, sp, #4
	bl	_copy(PLT)
	ldr	r3, [r9, #160]
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #4]
	ldrb	r2, [sp, #5]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #5]
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #6]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #7]
	ldr	r3, [r9, #164]
	ldrb	r2, [sp, #8]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #8]
	ldrb	r2, [sp, #9]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #9]
	ldrb	r2, [sp, #10]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #10]
	ldrb	r2, [sp, #11]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #11]
	ldr	r3, [r9, #168]
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #12]
	ldrb	r2, [sp, #13]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #13]
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #14]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #15]
	ldr	r3, [r9, #172]
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #16]
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #17]
	ldrb	r2, [sp, #18]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #18]
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #19]
	mov	r6, r9
	sub	r10, r9, #144
	add	r4, sp, #20
	add	r7, sp, #4
	mov	r8, #16
.L8:
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	strb	r3, [sp, #20]
	ldrb	r3, [sp, #17]	@ zero_extendqisi2
	strb	r3, [sp, #21]
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	strb	r3, [sp, #22]
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	strb	r3, [sp, #23]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	strb	r3, [sp, #24]
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	strb	r3, [sp, #25]
	ldrb	r3, [sp, #18]	@ zero_extendqisi2
	strb	r3, [sp, #26]
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	strb	r3, [sp, #27]
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	strb	r3, [sp, #28]
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	strb	r3, [sp, #29]
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	strb	r3, [sp, #30]
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	strb	r3, [sp, #31]
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	strb	r3, [sp, #32]
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	strb	r3, [sp, #33]
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	strb	r3, [sp, #34]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	strb	r3, [sp, #35]
	mov	r3, r8
	mov	r2, r4
	mov	r1, r8
	mov	r0, r7
	bl	_copy(PLT)
	mov	r5, r7
	mov	r3, r7
	ldr	r1, .L18+12
.LPIC0:
	add	r1, pc
.L7:
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3], #1
	cmp	r3, r4
	bne	.L7
	ldr	r3, [r6, #144]
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #4]
	ldrb	r2, [sp, #5]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #5]
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #6]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #7]
	ldr	r3, [r6, #148]
	ldrb	r2, [sp, #8]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #8]
	ldrb	r2, [sp, #9]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #9]
	ldrb	r2, [sp, #10]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #10]
	ldrb	r2, [sp, #11]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #11]
	ldr	r3, [r6, #152]
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #12]
	ldrb	r2, [sp, #13]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #13]
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #14]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #15]
	ldr	r3, [r6, #156]
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #16]
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #17]
	ldrb	r2, [sp, #18]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #18]
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #19]
	mov	r1, r7
	mov	r0, r4
	bl	mult_row_column(PLT)
	add	r1, sp, #8
	add	r0, sp, #24
	bl	mult_row_column(PLT)
	add	r1, sp, #12
	add	r0, sp, #28
	bl	mult_row_column(PLT)
	add	r1, sp, #16
	add	r0, sp, #32
	bl	mult_row_column(PLT)
	mov	r3, r8
	mov	r2, r4
	mov	r1, r8
	mov	r0, r7
	bl	_copy(PLT)
	subs	r6, r6, #16
	cmp	r10, r6
	bne	.L8
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	strb	r3, [sp, #20]
	ldrb	r3, [sp, #17]	@ zero_extendqisi2
	strb	r3, [sp, #21]
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	strb	r3, [sp, #22]
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	strb	r3, [sp, #23]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	strb	r3, [sp, #24]
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	strb	r3, [sp, #25]
	ldrb	r3, [sp, #18]	@ zero_extendqisi2
	strb	r3, [sp, #26]
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	strb	r3, [sp, #27]
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	strb	r3, [sp, #28]
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	strb	r3, [sp, #29]
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	strb	r3, [sp, #30]
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	strb	r3, [sp, #31]
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	strb	r3, [sp, #32]
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	strb	r3, [sp, #33]
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	strb	r3, [sp, #34]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	strb	r3, [sp, #35]
	movs	r3, #16
	add	r2, sp, #20
	mov	r1, r3
	add	r0, sp, #4
	bl	_copy(PLT)
	ldr	r2, .L18+16
.LPIC1:
	add	r2, pc
.L9:
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	strb	r3, [r5], #1
	cmp	r5, r4
	bne	.L9
	ldr	r3, [r9]
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #4]
	ldrb	r2, [sp, #5]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #5]
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #6]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #7]
	ldr	r3, [r9, #4]
	ldrb	r2, [sp, #8]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #8]
	ldrb	r2, [sp, #9]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #9]
	ldrb	r2, [sp, #10]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #10]
	ldrb	r2, [sp, #11]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #11]
	ldr	r3, [r9, #8]
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #12]
	ldrb	r2, [sp, #13]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #13]
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #14]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #15]
	ldr	r3, [r9, #12]
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #24
	strb	r2, [sp, #16]
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #16
	strb	r2, [sp, #17]
	ldrb	r2, [sp, #18]	@ zero_extendqisi2
	eor	r2, r2, r3, lsr #8
	strb	r2, [sp, #18]
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [sp, #19]
	movs	r3, #16
	add	r4, sp, #4
	mov	r2, r4
	mov	r1, r3
	mov	r0, fp
	bl	_copy(PLT)
	movs	r2, #16
	movs	r1, #0
	mov	r0, r4
	bl	_set(PLT)
	movs	r0, #1
	b	.L5
.L17:
	bl	__stack_chk_fail(PLT)
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR0-(.LPIC1+4)
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
