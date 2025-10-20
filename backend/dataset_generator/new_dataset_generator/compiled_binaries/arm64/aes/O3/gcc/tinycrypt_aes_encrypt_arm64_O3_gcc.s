	.arch armv8-a
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.align	2
	.p2align 4,,11
	.global	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	adrp	x3, .LANCHOR0
	add	x2, x3, :lo12:.LANCHOR0
	add	x10, sp, 8
	adrp	x4, :got:__stack_chk_guard
	ldr	x4, [x4, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	ldp	q1, q2, [x2]
	ldr	x5, [x4]
	str	x5, [sp, 56]
	mov	x5, 0
	ldr	q0, [x2, 28]
	cmp	x1, 0
	stp	q1, q2, [x10]
	ccmp	x0, 0, 4, ne
	str	q0, [x10, 28]
	beq	.L11
	ldrb	w5, [x1, 2]
	mov	x4, x0
	ldrb	w7, [x1, 3]
	add	x12, x0, 16
	ldrb	w11, [x1, 1]
	add	x6, x2, 48
	ldrb	w0, [x1]
	lsl	w5, w5, 8
	mov	w2, 4
	orr	w11, w5, w11, lsl 16
	orr	w0, w7, w0, lsl 24
	orr	w11, w11, w0
	str	w11, [x4]
	ldrb	w5, [x1, 5]
	ldrb	w7, [x1, 7]
	ldrb	w9, [x1, 4]
	ldrb	w0, [x1, 6]
	lsl	w5, w5, 16
	orr	w9, w5, w9, lsl 24
	orr	w0, w7, w0, lsl 8
	orr	w9, w9, w0
	str	w9, [x4, 4]
	ldrb	w7, [x1, 9]
	ldrb	w8, [x1, 11]
	ldrb	w5, [x1, 8]
	ldrb	w0, [x1, 10]
	lsl	w7, w7, 16
	orr	w5, w7, w5, lsl 24
	orr	w0, w8, w0, lsl 8
	orr	w5, w5, w0
	str	w5, [x4, 8]
	ldrb	w8, [x1, 13]
	ldrb	w0, [x1, 12]
	ldrb	w7, [x1, 14]
	ldrb	w13, [x1, 15]
	lsl	w1, w8, 16
	orr	w0, w1, w0, lsl 24
	orr	w1, w13, w7, lsl 8
	orr	w0, w0, w1
	str	w0, [x4, 12]
.L3:
	and	w8, w0, 255
	ubfx	x1, x0, 8, 8
	ubfx	x7, x0, 16, 8
	lsr	w14, w0, 24
	lsr	w13, w2, 2
	add	w2, w2, 4
	ldrb	w8, [x6, w8, uxtw]
	ldrb	w1, [x6, w1, uxtw]
	ldrb	w7, [x6, w7, uxtw]
	ldrb	w14, [x6, w14, uxtw]
	lsl	w8, w8, 8
	ldr	w13, [x10, x13, lsl 2]
	orr	w1, w8, w1, lsl 16
	orr	w7, w14, w7, lsl 24
	orr	w1, w1, w7
	eor	w1, w1, w13
	eor	w11, w11, w1
	eor	w9, w9, w11
	stp	w11, w9, [x12]
	eor	w5, w5, w9
	eor	w0, w0, w5
	stp	w5, w0, [x12, 8]
	add	x12, x12, 16
	cmp	w2, 40
	bne	.L3
	add	x0, x3, :lo12:.LANCHOR0
	add	x0, x0, 48
	.p2align 3,,7
.L6:
	sub	w1, w2, #1
	ldr	w1, [x4, x1, lsl 2]
	tst	x2, 3
	bne	.L4
.L14:
	and	w6, w1, 255
	lsr	w3, w1, 24
	ubfx	x8, x1, 8, 8
	ubfx	x5, x1, 16, 8
	sub	w9, w2, #4
	ldr	w7, [sp, 48]
	ldrb	w6, [x0, w6, uxtw]
	ldrb	w1, [x0, w8, uxtw]
	ldrb	w5, [x0, w5, uxtw]
	ldrb	w8, [x0, w3, uxtw]
	lsl	w3, w6, 8
	orr	w1, w3, w1, lsl 16
	ldr	w6, [x4, x9, lsl 2]
	orr	w3, w8, w5, lsl 24
	orr	w1, w1, w3
	eor	w1, w1, w7
	eor	w1, w1, w6
	str	w1, [x4, w2, uxtw 2]
	add	w2, w2, 1
	sub	w1, w2, #1
	ldr	w1, [x4, x1, lsl 2]
	tst	x2, 3
	beq	.L14
.L4:
	sub	w3, w2, #4
	ldr	w3, [x4, x3, lsl 2]
	eor	w1, w3, w1
	str	w1, [x4, w2, uxtw 2]
	add	w2, w2, 1
	cmp	w2, 44
	bne	.L6
	mov	w0, 1
	b	.L1
	.p2align 2,,3
.L11:
	mov	w0, 0
.L1:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L15
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L15:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	2
	.p2align 4,,11
	.global	tc_aes_encrypt
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
.LFB22:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	cmp	x1, 0
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	ccmp	x2, 0, 4, ne
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 48
	ccmp	x0, 0, 4, ne
	ldr	x4, [x3]
	str	x4, [sp, 40]
	mov	x4, 0
	bne	.L24
	mov	w0, 0
.L16:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L25
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 144
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L24:
	.cfi_restore_state
	stp	x23, x24, [sp, 96]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	mov	x23, x2
	mov	w3, 16
	stp	x21, x22, [sp, 80]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	mov	x21, sp
	mov	x2, x1
	mov	w1, w3
	stp	x19, x20, [sp, 64]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	adrp	x19, .LANCHOR0
	stp	x25, x26, [sp, 112]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	mov	x25, x0
	mov	x0, x21
	stp	x27, x28, [sp, 128]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	_copy
	ldrb	w17, [sp]
	ldp	w7, w6, [x23]
	add	x19, x19, :lo12:.LANCHOR0
	ldrb	w4, [sp, 4]
	add	x27, x23, 16
	ldrb	w15, [sp, 1]
	add	x24, x23, 160
	ldrb	w13, [sp, 2]
	add	x19, x19, 48
	ldrb	w14, [sp, 5]
	add	x22, sp, 16
	ldrb	w10, [sp, 6]
	eor	w15, w15, w7, lsr 16
	ldp	w8, w0, [x23, 8]
	eor	w13, w13, w7, lsr 8
	ldrb	w12, [sp, 3]
	eor	w14, w14, w6, lsr 16
	ldrb	w9, [sp, 7]
	eor	w10, w10, w6, lsr 8
	ldrb	w11, [sp, 9]
	eor	w12, w7, w12
	ldrb	w16, [sp, 10]
	eor	w9, w6, w9
	ldrb	w1, [sp, 13]
	eor	w7, w17, w7, lsr 24
	ldrb	w2, [sp, 14]
	eor	w6, w4, w6, lsr 24
	ldrb	w5, [sp, 11]
	eor	w11, w11, w8, lsr 16
	ldrb	w3, [sp, 15]
	eor	w16, w16, w8, lsr 8
	ldrb	w17, [sp, 8]
	eor	w5, w8, w5
	ldrb	w4, [sp, 12]
	eor	w1, w1, w0, lsr 16
	eor	w2, w2, w0, lsr 8
	eor	w3, w0, w3
	and	w15, w15, 255
	and	w13, w13, 255
	and	w12, w12, 255
	and	w14, w14, 255
	and	w10, w10, 255
	and	w9, w9, 255
	and	w11, w11, 255
	and	w16, w16, 255
	and	w5, w5, 255
	eor	w8, w17, w8, lsr 24
	and	w18, w1, 255
	and	w20, w2, 255
	and	w26, w3, 255
	eor	w4, w4, w0, lsr 24
	.p2align 3,,7
.L18:
	ldr	b0, [x19, w7, sxtw]
	mov	w3, 16
	ldr	b6, [x19, w15, sxtw]
	mov	w1, w3
	ldr	b23, [x19, w14, sxtw]
	mov	x2, x22
	mov	v1.16b, v0.16b
	ldr	b19, [x19, w16, sxtw]
	ldr	b18, [x19, w13, sxtw]
	mov	x0, x21
	ins	v0.b[1], v23.b[0]
	ldr	b3, [x19, w26, sxtw]
	ldr	b22, [x19, w12, sxtw]
	ins	v1.b[1], v6.b[0]
	ldr	b24, [x19, w6, sxtw]
	ldr	b20, [x19, w11, sxtw]
	ins	v0.b[2], v19.b[0]
	ldr	b5, [x19, w20, sxtw]
	ldr	b4, [x19, w10, sxtw]
	ins	v1.b[2], v18.b[0]
	ldr	b17, [x19, w9, sxtw]
	ldr	b21, [x19, w8, sxtw]
	ins	v0.b[3], v3.b[0]
	ldr	b7, [x19, w18, sxtw]
	ldr	b2, [x19, w5, sxtw]
	ins	v1.b[3], v22.b[0]
	ldr	b16, [x19, w4, sxtw]
	ins	v0.b[4], v24.b[0]
	ins	v1.b[4], v24.b[0]
	ins	v0.b[5], v20.b[0]
	ins	v1.b[5], v23.b[0]
	ins	v0.b[6], v5.b[0]
	ins	v1.b[6], v4.b[0]
	ins	v0.b[7], v22.b[0]
	ins	v1.b[7], v17.b[0]
	ins	v0.b[8], v21.b[0]
	ins	v1.b[8], v21.b[0]
	ins	v0.b[9], v7.b[0]
	ins	v1.b[9], v20.b[0]
	ins	v0.b[10], v18.b[0]
	ins	v1.b[10], v19.b[0]
	ins	v0.b[11], v17.b[0]
	ins	v1.b[11], v2.b[0]
	ins	v0.b[12], v16.b[0]
	ins	v1.b[12], v16.b[0]
	ins	v0.b[13], v6.b[0]
	ins	v1.b[13], v7.b[0]
	ins	v0.b[14], v4.b[0]
	ins	v1.b[14], v5.b[0]
	ins	v0.b[15], v2.b[0]
	ins	v1.b[15], v3.b[0]
	stp	q1, q0, [sp]
	bl	_copy
	ldrb	w0, [sp]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [sp, 1]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 2]
	eor	w20, w20, w2
	ldrb	w0, [sp, 1]
	ldrb	w2, [sp, 3]
	eor	w1, w0, w1
	ldrb	w26, [sp]
	eor	w1, w1, w20
	eor	w1, w1, w2
	strb	w1, [sp, 16]
	bl	_double_byte
	and	w28, w0, 255
	ldrb	w0, [sp, 2]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 2]
	eor	w28, w28, w1
	ldrb	w1, [sp, 3]
	eor	w26, w26, w2
	ldrb	w0, [sp, 1]
	ldrb	w20, [sp]
	eor	w26, w26, w28
	eor	w26, w26, w1
	strb	w26, [sp, 17]
	eor	w20, w20, w0
	mov	w0, w2
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 3]
	and	w20, w20, 255
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 3]
	eor	w26, w26, w1
	ldrb	w0, [sp]
	eor	w20, w20, w26
	eor	w20, w20, w2
	strb	w20, [sp, 18]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w1, [sp, 1]
	ldrb	w0, [sp, 3]
	ldrb	w20, [sp]
	ldrb	w28, [sp, 2]
	eor	w20, w20, w1
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [sp, 4]
	eor	w26, w26, w1
	and	w20, w20, 255
	eor	w20, w20, w26
	eor	w28, w28, w20
	strb	w28, [sp, 19]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [sp, 5]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 6]
	eor	w20, w20, w2
	ldrb	w0, [sp, 5]
	ldrb	w2, [sp, 7]
	eor	w1, w0, w1
	ldrb	w26, [sp, 4]
	eor	w1, w1, w20
	eor	w1, w1, w2
	strb	w1, [sp, 20]
	bl	_double_byte
	and	w28, w0, 255
	ldrb	w0, [sp, 6]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 6]
	eor	w28, w28, w1
	ldrb	w1, [sp, 7]
	eor	w26, w26, w2
	ldrb	w0, [sp, 5]
	ldrb	w20, [sp, 4]
	eor	w26, w26, w28
	eor	w26, w26, w1
	strb	w26, [sp, 21]
	eor	w20, w20, w0
	mov	w0, w2
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 7]
	and	w20, w20, 255
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 7]
	eor	w26, w26, w1
	ldrb	w0, [sp, 4]
	eor	w20, w20, w26
	eor	w20, w20, w2
	strb	w20, [sp, 22]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w1, [sp, 5]
	ldrb	w0, [sp, 7]
	ldrb	w20, [sp, 4]
	ldrb	w28, [sp, 6]
	eor	w20, w20, w1
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [sp, 8]
	eor	w26, w26, w1
	and	w20, w20, 255
	eor	w20, w20, w26
	eor	w28, w28, w20
	strb	w28, [sp, 23]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [sp, 9]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 10]
	eor	w20, w20, w2
	ldrb	w0, [sp, 9]
	ldrb	w2, [sp, 11]
	eor	w1, w0, w1
	ldrb	w28, [sp, 8]
	eor	w1, w1, w20
	eor	w1, w1, w2
	strb	w1, [sp, 24]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 10]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 10]
	eor	w26, w26, w1
	ldrb	w1, [sp, 11]
	eor	w28, w28, w2
	ldrb	w0, [sp, 9]
	ldrb	w20, [sp, 8]
	eor	w26, w26, w28
	eor	w26, w26, w1
	strb	w26, [sp, 25]
	eor	w20, w20, w0
	mov	w0, w2
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 11]
	and	w20, w20, 255
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 11]
	eor	w26, w26, w1
	ldrb	w0, [sp, 8]
	eor	w20, w20, w26
	eor	w20, w20, w2
	strb	w20, [sp, 26]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w1, [sp, 9]
	ldrb	w0, [sp, 11]
	ldrb	w20, [sp, 8]
	ldrb	w28, [sp, 10]
	eor	w20, w20, w1
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [sp, 12]
	eor	w26, w26, w1
	and	w20, w20, 255
	eor	w20, w20, w26
	eor	w28, w28, w20
	strb	w28, [sp, 27]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [sp, 13]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 14]
	eor	w20, w20, w2
	ldrb	w0, [sp, 13]
	ldrb	w2, [sp, 15]
	eor	w1, w0, w1
	ldrb	w26, [sp, 12]
	eor	w1, w1, w20
	eor	w1, w1, w2
	strb	w1, [sp, 28]
	bl	_double_byte
	and	w28, w0, 255
	ldrb	w0, [sp, 14]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 14]
	eor	w28, w28, w1
	ldrb	w1, [sp, 15]
	eor	w26, w26, w2
	ldrb	w0, [sp, 13]
	ldrb	w20, [sp, 12]
	eor	w26, w26, w28
	eor	w26, w26, w1
	strb	w26, [sp, 29]
	eor	w20, w20, w0
	mov	w0, w2
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 15]
	and	w20, w20, 255
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [sp, 15]
	eor	w26, w26, w1
	ldrb	w0, [sp, 12]
	eor	w20, w20, w26
	eor	w20, w20, w2
	strb	w20, [sp, 30]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w1, [sp, 13]
	ldrb	w0, [sp, 15]
	ldrb	w20, [sp, 12]
	ldrb	w28, [sp, 14]
	eor	w20, w20, w1
	bl	_double_byte
	and	w1, w0, 255
	eor	w26, w26, w1
	and	w20, w20, 255
	eor	w20, w20, w26
	mov	w3, 16
	mov	x2, x22
	mov	w1, w3
	eor	w28, w28, w20
	mov	x0, x21
	strb	w28, [sp, 31]
	bl	_copy
	ldp	w7, w6, [x27]
	ldp	w4, w0, [x27, 8]
	add	x27, x27, 16
	ldrb	w15, [sp, 1]
	ldrb	w13, [sp, 2]
	ldrb	w14, [sp, 5]
	ldrb	w10, [sp, 6]
	eor	w15, w15, w7, lsr 16
	ldrb	w11, [sp, 9]
	eor	w13, w13, w7, lsr 8
	ldrb	w16, [sp, 10]
	eor	w14, w14, w6, lsr 16
	ldrb	w1, [sp, 13]
	eor	w10, w10, w6, lsr 8
	ldrb	w2, [sp, 14]
	eor	w11, w11, w4, lsr 16
	ldrb	w20, [sp]
	eor	w16, w16, w4, lsr 8
	ldrb	w18, [sp, 4]
	eor	w1, w1, w0, lsr 16
	ldrb	w12, [sp, 3]
	eor	w2, w2, w0, lsr 8
	ldrb	w9, [sp, 7]
	and	w15, w15, 255
	ldrb	w5, [sp, 11]
	eor	w12, w7, w12
	ldrb	w3, [sp, 15]
	eor	w9, w6, w9
	ldrb	w8, [sp, 8]
	eor	w5, w4, w5
	ldrb	w17, [sp, 12]
	eor	w3, w0, w3
	eor	w7, w20, w7, lsr 24
	eor	w6, w18, w6, lsr 24
	eor	w8, w8, w4, lsr 24
	and	w13, w13, 255
	and	w12, w12, 255
	and	w14, w14, 255
	and	w10, w10, 255
	and	w9, w9, 255
	and	w11, w11, 255
	and	w16, w16, 255
	and	w5, w5, 255
	and	w18, w1, 255
	and	w20, w2, 255
	and	w26, w3, 255
	eor	w4, w17, w0, lsr 24
	cmp	x27, x24
	bne	.L18
	ldr	b0, [x19, w7, sxtw]
	mov	x2, x22
	ldr	b6, [x19, w15, sxtw]
	mov	w3, 16
	ldr	b23, [x19, w14, sxtw]
	mov	w1, w3
	mov	v1.16b, v0.16b
	ldr	b19, [x19, w16, sxtw]
	ldr	b18, [x19, w13, sxtw]
	mov	x0, x21
	ins	v0.b[1], v23.b[0]
	ldr	b22, [x19, w12, sxtw]
	ldr	b3, [x19, w26, sxtw]
	ins	v1.b[1], v6.b[0]
	ldr	b24, [x19, w6, sxtw]
	ldr	b20, [x19, w11, sxtw]
	ins	v0.b[2], v19.b[0]
	ldr	b4, [x19, w10, sxtw]
	ldr	b5, [x19, w20, sxtw]
	ins	v1.b[2], v18.b[0]
	ldr	b17, [x19, w9, sxtw]
	ldr	b21, [x19, w8, sxtw]
	ins	v0.b[3], v3.b[0]
	ldr	b7, [x19, w18, sxtw]
	ldr	b2, [x19, w5, sxtw]
	ins	v1.b[3], v22.b[0]
	ldr	b16, [x19, w4, sxtw]
	ins	v0.b[4], v24.b[0]
	ins	v1.b[4], v24.b[0]
	ins	v0.b[5], v20.b[0]
	ins	v1.b[5], v23.b[0]
	ins	v0.b[6], v5.b[0]
	ins	v1.b[6], v4.b[0]
	ins	v0.b[7], v22.b[0]
	ins	v1.b[7], v17.b[0]
	ins	v0.b[8], v21.b[0]
	ins	v1.b[8], v21.b[0]
	ins	v0.b[9], v7.b[0]
	ins	v1.b[9], v20.b[0]
	ins	v0.b[10], v18.b[0]
	ins	v1.b[10], v19.b[0]
	ins	v0.b[11], v17.b[0]
	ins	v1.b[11], v2.b[0]
	ins	v0.b[12], v16.b[0]
	ins	v1.b[12], v16.b[0]
	ins	v0.b[13], v6.b[0]
	ins	v1.b[13], v7.b[0]
	ins	v0.b[14], v4.b[0]
	ins	v1.b[14], v5.b[0]
	ins	v0.b[15], v2.b[0]
	ins	v1.b[15], v3.b[0]
	stp	q1, q0, [sp]
	bl	_copy
	ldr	s2, [x23, 168]
	ldp	s4, s3, [x23, 160]
	mov	w3, 16
	ushr	v19.2s, v2.2s, 24
	ushr	v18.2s, v2.2s, 16
	ushr	v17.2s, v2.2s, 8
	mov	x2, x21
	ushr	v1.2s, v4.2s, 16
	ushr	v0.2s, v4.2s, 24
	ushr	v6.2s, v4.2s, 8
	ushr	v22.2s, v3.2s, 24
	ushr	v21.2s, v3.2s, 16
	ushr	v20.2s, v3.2s, 8
	ldr	q5, [sp]
	mov	w1, w3
	ins	v0.b[1], v1.b[0]
	ldr	s1, [x23, 172]
	mov	x0, x25
	ushr	v16.2s, v1.2s, 24
	ushr	v7.2s, v1.2s, 16
	ins	v0.b[2], v6.b[0]
	ushr	v6.2s, v1.2s, 8
	ins	v0.b[3], v4.b[0]
	ins	v0.b[4], v22.b[0]
	ins	v0.b[5], v21.b[0]
	ins	v0.b[6], v20.b[0]
	ins	v0.b[7], v3.b[0]
	ins	v0.b[8], v19.b[0]
	ins	v0.b[9], v18.b[0]
	ins	v0.b[10], v17.b[0]
	ins	v0.b[11], v2.b[0]
	ins	v0.b[12], v16.b[0]
	ins	v0.b[13], v7.b[0]
	ins	v0.b[14], v6.b[0]
	ins	v0.b[15], v1.b[0]
	eor	v0.16b, v5.16b, v0.16b
	str	q0, [sp]
	bl	_copy
	mov	x0, x21
	mov	w2, 16
	mov	w1, 0
	bl	_set
	ldp	x19, x20, [sp, 64]
	.cfi_restore 20
	.cfi_restore 19
	mov	w0, 1
	ldp	x21, x22, [sp, 80]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 96]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 112]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 128]
	.cfi_restore 28
	.cfi_restore 27
	b	.L16
.L25:
	stp	x19, x20, [sp, 64]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 80]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 96]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 112]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 128]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	4
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
	.zero	4
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321"
	.ascii	"\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002"
	.ascii	"\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363"
	.ascii	"\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220"
	.ascii	"\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221"
	.ascii	"\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034"
	.ascii	"\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5"
	.ascii	"W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207"
	.ascii	"\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
