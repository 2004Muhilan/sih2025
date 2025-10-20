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
	adrp	x2, .LANCHOR0
	add	x4, x2, :lo12:.LANCHOR0
	add	x13, sp, 8
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	ldp	q1, q2, [x4]
	cmp	x1, 0
	ldr	q0, [x4, 28]
	ldr	x4, [x3]
	str	x4, [sp, 56]
	mov	x4, 0
	stp	q1, q2, [x13]
	ccmp	x0, 0, 4, ne
	str	q0, [x13, 28]
	beq	.L11
	add	x9, x1, 1
	add	x8, x1, 2
	add	x7, x1, 3
	mov	x11, x0
	mov	x0, 0
.L3:
	ldrb	w5, [x1, x0]
	ldrb	w3, [x9, x0]
	ldrb	w4, [x8, x0]
	ldrb	w6, [x7, x0]
	lsl	w5, w5, 24
	orr	w3, w5, w3, lsl 16
	orr	w4, w6, w4, lsl 8
	orr	w3, w3, w4
	str	w3, [x11, x0]
	add	x0, x0, 4
	cmp	x0, 16
	bne	.L3
	add	x2, x2, :lo12:.LANCHOR0
	add	x4, x2, 48
	mov	x2, 4
	ldp	w7, w6, [x11]
	ldp	w5, w3, [x11, 8]
	b	.L5
	.p2align 2,,3
.L9:
	mov	w3, w1
.L5:
	mov	w1, w3
	tst	x2, 3
	bne	.L4
	and	w1, w3, 255
	ubfx	x12, x3, 8, 8
	lsr	w0, w3, 24
	ubfx	x8, x3, 16, 8
	lsr	w10, w2, 2
	ldrb	w9, [x4, w1, uxtw]
	ldrb	w8, [x4, w8, uxtw]
	ldrb	w1, [x4, w12, uxtw]
	ldrb	w12, [x4, w0, uxtw]
	lsl	w9, w9, 8
	ldr	w0, [x13, x10, lsl 2]
	orr	w1, w9, w1, lsl 16
	orr	w8, w12, w8, lsl 24
	orr	w1, w1, w8
	eor	w1, w1, w0
.L4:
	eor	w1, w1, w7
	str	w1, [x11, x2, lsl 2]
	add	x2, x2, 1
	mov	w7, w6
	mov	w6, w5
	mov	w5, w3
	cmp	x2, 44
	bne	.L9
	mov	w0, 1
.L1:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L14
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L11:
	.cfi_restore_state
	mov	w0, 0
	b	.L1
.L14:
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
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	cmp	x1, 0
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	ccmp	x2, 0, 4, ne
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 64
	ccmp	x0, 0, 4, ne
	ldr	x4, [x3]
	str	x4, [sp, 56]
	mov	x4, 0
	str	x0, [sp, 8]
	mov	w0, 0
	bne	.L27
.L15:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L28
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L27:
	.cfi_restore_state
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	mov	x23, x2
	mov	w3, 16
	stp	x21, x22, [sp, 96]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	add	x21, sp, 16
	mov	x2, x1
	mov	x0, x21
	mov	w1, w3
	stp	x19, x20, [sp, 80]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	add	x24, x23, 160
	add	x19, sp, 32
	stp	x25, x26, [sp, 128]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 144]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	_copy
	ldr	s2, [x23, 8]
	ldp	s4, s3, [x23]
	adrp	x0, .LANCHOR0
	ushr	v19.2s, v2.2s, 24
	ushr	v18.2s, v2.2s, 16
	ushr	v17.2s, v2.2s, 8
	add	x20, x0, :lo12:.LANCHOR0
	ushr	v1.2s, v4.2s, 16
	ushr	v0.2s, v4.2s, 24
	ushr	v6.2s, v4.2s, 8
	ushr	v22.2s, v3.2s, 24
	ushr	v21.2s, v3.2s, 16
	ushr	v20.2s, v3.2s, 8
	ldr	q5, [sp, 16]
	add	x28, x23, 16
	ins	v0.b[1], v1.b[0]
	ldr	s1, [x23, 12]
	add	x20, x20, 48
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
	str	q0, [sp, 16]
	.p2align 3,,7
.L17:
	mov	x27, x21
	mov	x1, x21
	.p2align 3,,7
.L18:
	ldrb	w3, [x1]
	ldrb	w3, [x20, w3, sxtw]
	strb	w3, [x1], 1
	cmp	x19, x1
	bne	.L18
	adrp	x4, .LC1
	mov	w3, 16
	ldr	q0, [sp, 16]
	mov	w1, w3
	ldr	q1, [x4, #:lo12:.LC1]
	mov	x2, x19
	mov	x0, x21
	tbl	v0.16b, {v0.16b}, v1.16b
	str	q0, [sp, 32]
	bl	_copy
	ldrb	w0, [sp, 16]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 17]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 18]
	eor	w26, w26, w2
	ldrb	w0, [sp, 17]
	ldrb	w3, [sp, 19]
	eor	w1, w0, w1
	ldrb	w22, [sp, 16]
	eor	w2, w1, w26
	eor	w2, w2, w3
	strb	w2, [sp, 32]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w0, [sp, 18]
	bl	_double_byte
	and	w3, w0, 255
	ldrb	w4, [sp, 18]
	eor	w2, w25, w3
	ldrb	w3, [sp, 19]
	eor	w1, w22, w4
	ldrb	w0, [sp, 17]
	eor	w1, w1, w2
	ldrb	w26, [sp, 16]
	eor	w1, w1, w3
	strb	w1, [sp, 33]
	eor	w26, w26, w0
	mov	w0, w4
	and	w26, w26, 255
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 19]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w3, [sp, 19]
	eor	w1, w22, w2
	ldrb	w0, [sp, 16]
	eor	w26, w26, w1
	eor	w26, w26, w3
	strb	w26, [sp, 34]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w3, [sp, 17]
	ldrb	w0, [sp, 19]
	ldrb	w26, [sp, 16]
	ldrb	w22, [sp, 18]
	eor	w26, w26, w3
	bl	_double_byte
	and	w3, w0, 255
	eor	w1, w25, w3
	and	w26, w26, 255
	eor	w26, w26, w1
	ldrb	w0, [sp, 20]
	eor	w2, w22, w26
	strb	w2, [sp, 35]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 21]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 22]
	eor	w26, w26, w2
	ldrb	w0, [sp, 21]
	ldrb	w3, [sp, 23]
	eor	w1, w0, w1
	ldrb	w22, [sp, 20]
	eor	w1, w1, w26
	eor	w1, w1, w3
	strb	w1, [sp, 36]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w0, [sp, 22]
	bl	_double_byte
	and	w3, w0, 255
	ldrb	w4, [sp, 22]
	eor	w1, w25, w3
	ldrb	w3, [sp, 23]
	eor	w2, w22, w4
	ldrb	w0, [sp, 21]
	eor	w1, w1, w2
	ldrb	w26, [sp, 20]
	eor	w1, w1, w3
	strb	w1, [sp, 37]
	eor	w26, w26, w0
	mov	w0, w4
	and	w26, w26, 255
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 23]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w3, [sp, 23]
	eor	w1, w22, w2
	ldrb	w0, [sp, 20]
	eor	w26, w26, w1
	eor	w26, w26, w3
	strb	w26, [sp, 38]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w3, [sp, 21]
	ldrb	w0, [sp, 23]
	ldrb	w26, [sp, 20]
	ldrb	w22, [sp, 22]
	eor	w26, w26, w3
	bl	_double_byte
	and	w3, w0, 255
	eor	w1, w25, w3
	and	w26, w26, 255
	eor	w26, w26, w1
	ldrb	w0, [sp, 24]
	eor	w2, w22, w26
	strb	w2, [sp, 39]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 25]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 26]
	eor	w26, w26, w2
	ldrb	w0, [sp, 25]
	ldrb	w3, [sp, 27]
	eor	w1, w0, w1
	ldrb	w22, [sp, 24]
	eor	w2, w1, w26
	eor	w2, w2, w3
	strb	w2, [sp, 40]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w0, [sp, 26]
	bl	_double_byte
	and	w3, w0, 255
	ldrb	w4, [sp, 26]
	eor	w2, w25, w3
	ldrb	w3, [sp, 27]
	eor	w1, w22, w4
	ldrb	w0, [sp, 25]
	eor	w1, w1, w2
	ldrb	w26, [sp, 24]
	eor	w1, w1, w3
	strb	w1, [sp, 41]
	eor	w26, w26, w0
	mov	w0, w4
	and	w26, w26, 255
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 27]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w3, [sp, 27]
	eor	w1, w22, w2
	ldrb	w0, [sp, 24]
	eor	w26, w26, w1
	eor	w26, w26, w3
	strb	w26, [sp, 42]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w3, [sp, 25]
	ldrb	w0, [sp, 27]
	ldrb	w26, [sp, 24]
	ldrb	w22, [sp, 26]
	eor	w26, w26, w3
	bl	_double_byte
	and	w3, w0, 255
	eor	w1, w25, w3
	and	w26, w26, 255
	eor	w26, w26, w1
	ldrb	w0, [sp, 28]
	eor	w2, w22, w26
	strb	w2, [sp, 43]
	bl	_double_byte
	and	w26, w0, 255
	ldrb	w0, [sp, 29]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w1, [sp, 30]
	eor	w26, w26, w2
	ldrb	w0, [sp, 29]
	ldrb	w3, [sp, 31]
	eor	w1, w0, w1
	ldrb	w22, [sp, 28]
	eor	w2, w1, w26
	eor	w2, w2, w3
	strb	w2, [sp, 44]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w0, [sp, 30]
	bl	_double_byte
	and	w3, w0, 255
	ldrb	w4, [sp, 30]
	eor	w2, w25, w3
	ldrb	w3, [sp, 31]
	eor	w1, w22, w4
	ldrb	w0, [sp, 29]
	eor	w1, w1, w2
	ldrb	w26, [sp, 28]
	eor	w1, w1, w3
	strb	w1, [sp, 45]
	eor	w26, w26, w0
	mov	w0, w4
	and	w26, w26, 255
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 31]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w3, [sp, 31]
	eor	w1, w22, w2
	ldrb	w0, [sp, 28]
	eor	w26, w26, w1
	eor	w26, w26, w3
	strb	w26, [sp, 46]
	bl	_double_byte
	and	w25, w0, 255
	ldrb	w2, [sp, 29]
	ldrb	w0, [sp, 31]
	ldrb	w26, [sp, 28]
	ldrb	w22, [sp, 30]
	eor	w26, w26, w2
	bl	_double_byte
	and	w3, w0, 255
	eor	w1, w25, w3
	and	w26, w26, 255
	eor	w26, w26, w1
	mov	w3, 16
	eor	w4, w22, w26
	mov	x2, x19
	mov	x0, x21
	mov	w1, w3
	strb	w4, [sp, 47]
	bl	_copy
	ldp	s4, s3, [x28]
	add	x28, x28, 16
	ldr	s2, [x28, -8]
	ldr	q5, [sp, 16]
	ushr	v1.2s, v4.2s, 16
	ushr	v0.2s, v4.2s, 24
	ushr	v6.2s, v4.2s, 8
	ushr	v22.2s, v3.2s, 24
	ushr	v21.2s, v3.2s, 16
	ushr	v20.2s, v3.2s, 8
	ushr	v19.2s, v2.2s, 24
	ushr	v18.2s, v2.2s, 16
	ushr	v17.2s, v2.2s, 8
	ins	v0.b[1], v1.b[0]
	ldr	s1, [x28, -4]
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
	str	q0, [sp, 16]
	cmp	x28, x24
	bne	.L17
	adrp	x0, .LANCHOR0
	add	x1, x0, :lo12:.LANCHOR0
	add	x1, x1, 48
	.p2align 3,,7
.L19:
	ldrb	w0, [x27]
	ldrb	w0, [x1, w0, sxtw]
	strb	w0, [x27], 1
	cmp	x19, x27
	bne	.L19
	adrp	x0, .LC1
	mov	x2, x19
	ldr	q0, [sp, 16]
	mov	w3, 16
	ldr	q1, [x0, #:lo12:.LC1]
	mov	w1, w3
	mov	x0, x21
	tbl	v0.16b, {v0.16b}, v1.16b
	str	q0, [sp, 32]
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
	ldr	q5, [sp, 16]
	mov	w1, w3
	ins	v0.b[1], v1.b[0]
	ldr	s1, [x23, 172]
	ldr	x0, [sp, 8]
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
	str	q0, [sp, 16]
	bl	_copy
	mov	x0, x21
	mov	w2, 16
	mov	w1, 0
	bl	_set
	ldp	x19, x20, [sp, 80]
	.cfi_restore 20
	.cfi_restore 19
	mov	w0, 1
	ldp	x21, x22, [sp, 96]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 112]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 128]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 144]
	.cfi_restore 28
	.cfi_restore 27
	b	.L15
.L28:
	stp	x19, x20, [sp, 80]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 96]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 128]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 144]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC1:
	.byte	0
	.byte	5
	.byte	10
	.byte	15
	.byte	4
	.byte	9
	.byte	14
	.byte	3
	.byte	8
	.byte	13
	.byte	2
	.byte	7
	.byte	12
	.byte	1
	.byte	6
	.byte	11
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
