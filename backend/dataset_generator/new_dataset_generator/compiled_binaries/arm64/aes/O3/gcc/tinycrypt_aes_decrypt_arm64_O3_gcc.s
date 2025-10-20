	.arch armv8-a
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.align	2
	.p2align 4,,11
	.type	mult_row_column, %function
mult_row_column:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x21, x0
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	ldrb	w0, [x1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w23, w0, 255
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19]
	eor	w23, w23, w1
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 1]
	eor	w22, w22, w1
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19, 2]
	ldrb	w25, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 2]
	eor	w20, w20, w1
	bl	_double_byte
	bl	_double_byte
	and	w24, w0, 255
	ldrb	w1, [x19, 2]
	ldrb	w0, [x19, 3]
	eor	w25, w25, w1
	eor	w23, w23, w25
	eor	w22, w22, w23
	bl	_double_byte
	eor	w20, w20, w22
	bl	_double_byte
	and	w20, w20, 255
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 3]
	eor	w24, w24, w0
	eor	w20, w20, w24
	eor	w20, w20, w1
	strb	w20, [x21]
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	ldrb	w24, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 1]
	eor	w22, w22, w1
	bl	_double_byte
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 2]
	eor	w20, w20, w1
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w23, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [x19, 2]
	eor	w23, w23, w1
	ldrb	w0, [x19, 3]
	eor	w24, w24, w2
	eor	w22, w22, w24
	eor	w20, w20, w22
	bl	_double_byte
	eor	w20, w20, w23
	bl	_double_byte
	and	w20, w20, 255
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 3]
	eor	w22, w22, w0
	eor	w20, w20, w22
	eor	w20, w20, w1
	strb	w20, [x21, 1]
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 1]
	eor	w20, w20, w1
	ldrb	w23, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w1, [x19, 1]
	ldrb	w0, [x19, 2]
	eor	w23, w23, w1
	eor	w20, w20, w23
	and	w20, w20, 255
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 2]
	eor	w22, w22, w1
	eor	w20, w20, w22
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 3]
	eor	w22, w22, w1
	eor	w20, w20, w22
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 3]
	eor	w22, w22, w0
	eor	w20, w20, w22
	eor	w20, w20, w1
	strb	w20, [x21, 2]
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 1]
	eor	w20, w20, w1
	ldrb	w23, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [x19, 1]
	eor	w22, w22, w1
	ldrb	w0, [x19, 2]
	eor	w23, w23, w2
	eor	w20, w20, w23
	eor	w20, w20, w22
	bl	_double_byte
	and	w20, w20, 255
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	ldrb	w23, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [x19, 3]
	eor	w22, w22, w1
	eor	w20, w20, w22
	bl	_double_byte
	bl	_double_byte
	mov	w1, w0
	ldrb	w0, [x19, 3]
	and	w19, w1, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w19, w19, w0
	eor	w20, w20, w19
	eor	w23, w23, w20
	strb	w23, [x21, 3]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	mult_row_column, .-mult_row_column
	.align	2
	.p2align 4,,11
	.global	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
.LFB15:
	.cfi_startproc
	b	tc_aes128_set_encrypt_key
	.cfi_endproc
.LFE15:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	2
	.p2align 4,,11
	.global	tc_aes_decrypt
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
.LFB21:
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
	bne	.L13
.L5:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L14
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L13:
	.cfi_restore_state
	stp	x27, x28, [sp, 144]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	mov	x27, x2
	mov	w3, 16
	stp	x19, x20, [sp, 80]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	add	x19, sp, 16
	mov	x2, x1
	mov	x0, x19
	mov	w1, w3
	stp	x21, x22, [sp, 96]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	adrp	x28, .LANCHOR0
	add	x21, x27, 144
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	add	x20, sp, 32
	add	x24, sp, 24
	stp	x25, x26, [sp, 128]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	bl	_copy
	adrp	x4, .LC0
	ldp	w0, w3, [x27, 160]
	fmov	s0, w0
	ldp	w2, w1, [x27, 168]
	ushr	v1.2s, v0.2s, 24
	ubfx	x13, x0, 16, 8
	ubfx	x10, x0, 8, 8
	fmov	s0, w2
	ubfx	x12, x3, 16, 8
	ubfx	x9, x1, 16, 8
	ubfx	x11, x2, 8, 8
	mov	v2.16b, v1.16b
	ubfx	x5, x3, 8, 8
	ins	v1.b[1], w9
	ushr	v5.2s, v0.2s, 24
	fmov	s0, w3
	ubfx	x6, x1, 8, 8
	ubfx	x8, x2, 16, 8
	fmov	s3, w1
	ins	v2.b[1], w13
	ushr	v0.2s, v0.2s, 24
	ins	v1.b[2], w11
	ushr	v4.2s, v3.2s, 24
	ldr	q3, [sp, 16]
	add	x26, sp, 20
	ins	v2.b[2], w10
	add	x25, sp, 36
	ins	v1.b[3], w3
	add	x23, sp, 40
	add	x22, sp, 28
	add	x28, x28, :lo12:.LANCHOR0
	ins	v2.b[3], w0
	ins	v1.b[4], v0.b[0]
	ins	v2.b[4], v0.b[0]
	ins	v1.b[5], w13
	ldr	q0, [x4, #:lo12:.LC0]
	add	x4, sp, 44
	ins	v2.b[5], w12
	str	x4, [sp]
	ins	v1.b[6], w6
	tbl	v0.16b, {v3.16b}, v0.16b
	ins	v2.b[6], w5
	ins	v1.b[7], w2
	ins	v2.b[7], w3
	ins	v1.b[8], v5.b[0]
	ins	v2.b[8], v5.b[0]
	ins	v1.b[9], w12
	ins	v2.b[9], w8
	ins	v1.b[10], w10
	ins	v2.b[10], w11
	ins	v1.b[11], w1
	ins	v2.b[11], w2
	ins	v1.b[12], v4.b[0]
	ins	v2.b[12], v4.b[0]
	ins	v1.b[13], w8
	ins	v2.b[13], w9
	ins	v1.b[14], w5
	ins	v2.b[14], w6
	ins	v1.b[15], w0
	ins	v2.b[15], w1
	eor	v0.16b, v0.16b, v1.16b
	eor	v2.16b, v2.16b, v3.16b
	str	q2, [sp, 16]
	b	.L8
	.p2align 2,,3
.L15:
	adrp	x0, .LC0
	ldr	q1, [x0, #:lo12:.LC0]
	tbl	v0.16b, {v0.16b}, v1.16b
.L8:
	mov	w3, 16
	mov	x2, x20
	mov	w1, w3
	mov	x0, x19
	str	q0, [sp, 32]
	bl	_copy
	ldrb	w3, [sp, 16]
	ldrb	w6, [sp, 17]
	mov	x1, x19
	ldr	w5, [x21]
	mov	x0, x20
	ldrb	w2, [sp, 18]
	sub	x21, x21, #16
	ldrb	w3, [x28, w3, sxtw]
	ldrb	w6, [x28, w6, sxtw]
	ldrb	w9, [sp, 19]
	eor	w3, w3, w5, lsr 24
	fmov	s0, w3
	eor	w3, w6, w5, lsr 16
	ldrb	w2, [x28, w2, sxtw]
	ldrb	w8, [sp, 20]
	ins	v0.b[1], w3
	ldrb	w9, [x28, w9, sxtw]
	eor	w2, w2, w5, lsr 8
	ldr	w6, [x21, 20]
	eor	w5, w5, w9
	ldrb	w3, [sp, 21]
	ldrb	w8, [x28, w8, sxtw]
	ins	v0.b[2], w2
	ldrb	w9, [sp, 22]
	ldrb	w10, [sp, 23]
	eor	w8, w8, w6, lsr 24
	ldrb	w3, [x28, w3, sxtw]
	ldrb	w12, [sp, 27]
	ins	v0.b[3], w5
	ldrb	w2, [x28, w9, sxtw]
	eor	w5, w3, w6, lsr 16
	ldrb	w9, [sp, 24]
	ldrb	w10, [x28, w10, sxtw]
	eor	w2, w2, w6, lsr 8
	ldr	w3, [x21, 24]
	ins	v0.b[4], w8
	eor	w6, w6, w10
	ldrb	w11, [x28, w9, sxtw]
	ldrb	w10, [sp, 25]
	ldrb	w9, [sp, 26]
	ins	v0.b[5], w5
	eor	w11, w11, w3, lsr 24
	ldrb	w8, [sp, 28]
	ldrb	w10, [x28, w10, sxtw]
	ldrb	w9, [x28, w9, sxtw]
	ins	v0.b[6], w2
	ldrb	w5, [x28, w12, sxtw]
	eor	w10, w10, w3, lsr 16
	ldrb	w8, [x28, w8, sxtw]
	eor	w9, w9, w3, lsr 8
	eor	w5, w3, w5
	ldrb	w2, [sp, 29]
	ins	v0.b[7], w6
	ldr	w3, [x21, 28]
	eor	w8, w8, w3, lsr 24
	ldrb	w2, [x28, w2, sxtw]
	ins	v0.b[8], w11
	ldrb	w6, [sp, 30]
	ldrb	w11, [sp, 31]
	eor	w2, w2, w3, lsr 16
	ins	v0.b[9], w10
	ldrb	w6, [x28, w6, sxtw]
	ldrb	w10, [x28, w11, sxtw]
	eor	w6, w6, w3, lsr 8
	eor	w3, w3, w10
	ins	v0.b[10], w9
	ins	v0.b[11], w5
	ins	v0.b[12], w8
	ins	v0.b[13], w2
	ins	v0.b[14], w6
	ins	v0.b[15], w3
	str	q0, [sp, 16]
	bl	mult_row_column
	mov	x1, x26
	mov	x0, x25
	bl	mult_row_column
	mov	x1, x24
	mov	x0, x23
	bl	mult_row_column
	ldr	x0, [sp]
	mov	x1, x22
	bl	mult_row_column
	mov	w3, 16
	mov	x2, x20
	mov	x0, x19
	mov	w1, w3
	bl	_copy
	ldr	q0, [sp, 16]
	cmp	x27, x21
	bne	.L15
	adrp	x0, .LC0
	mov	x2, x20
	mov	w3, 16
	mov	w1, w3
	ldr	q1, [x0, #:lo12:.LC0]
	mov	x0, x19
	tbl	v0.16b, {v0.16b}, v1.16b
	str	q0, [sp, 32]
	bl	_copy
	ldrb	w1, [sp, 16]
	ldrb	w8, [sp, 17]
	mov	w3, 16
	ldr	w6, [x27]
	mov	x2, x19
	ldrb	w5, [sp, 18]
	ldrb	w4, [x28, w1, sxtw]
	mov	w1, w3
	ldrb	w8, [x28, w8, sxtw]
	ldrb	w10, [sp, 19]
	eor	w4, w4, w6, lsr 24
	fmov	s0, w4
	eor	w8, w8, w6, lsr 16
	ldrb	w4, [x28, w5, sxtw]
	ldrb	w9, [sp, 20]
	ins	v0.b[1], w8
	ldrb	w10, [x28, w10, sxtw]
	eor	w4, w4, w6, lsr 8
	ldrb	w8, [sp, 21]
	eor	w6, w6, w10
	ldrb	w10, [sp, 22]
	ldrb	w9, [x28, w9, sxtw]
	ins	v0.b[2], w4
	ldrb	w11, [sp, 23]
	ldp	w5, w4, [x27, 4]
	ldrb	w8, [x28, w8, sxtw]
	ins	v0.b[3], w6
	ldrb	w12, [x28, w10, sxtw]
	eor	w9, w9, w5, lsr 24
	ldrb	w10, [sp, 24]
	eor	w8, w8, w5, lsr 16
	ldrb	w6, [x28, w11, sxtw]
	eor	w12, w12, w5, lsr 8
	ldrb	w13, [sp, 28]
	ins	v0.b[4], w9
	eor	w6, w5, w6
	ldrb	w11, [x28, w10, sxtw]
	ldrb	w10, [sp, 25]
	ldrb	w9, [sp, 26]
	ins	v0.b[5], w8
	eor	w11, w11, w4, lsr 24
	ldrb	w5, [sp, 27]
	ldrb	w10, [x28, w10, sxtw]
	ldrb	w9, [x28, w9, sxtw]
	ins	v0.b[6], w12
	ldrb	w8, [x28, w13, sxtw]
	eor	w10, w10, w4, lsr 16
	ldrb	w5, [x28, w5, sxtw]
	eor	w9, w9, w4, lsr 8
	ldrb	w7, [sp, 29]
	eor	w5, w4, w5
	ldr	w4, [x27, 12]
	ins	v0.b[7], w6
	ldr	x0, [sp, 8]
	eor	w8, w8, w4, lsr 24
	ldrb	w7, [x28, w7, sxtw]
	ins	v0.b[8], w11
	ldrb	w6, [sp, 30]
	ldrb	w11, [sp, 31]
	eor	w7, w7, w4, lsr 16
	ins	v0.b[9], w10
	ldrb	w6, [x28, w6, sxtw]
	ldrb	w10, [x28, w11, sxtw]
	eor	w6, w6, w4, lsr 8
	eor	w4, w4, w10
	ins	v0.b[10], w9
	ins	v0.b[11], w5
	ins	v0.b[12], w8
	ins	v0.b[13], w7
	ins	v0.b[14], w6
	ins	v0.b[15], w4
	str	q0, [sp, 16]
	bl	_copy
	mov	x0, x19
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
	b	.L5
.L14:
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
.LFE21:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.byte	0
	.byte	13
	.byte	10
	.byte	7
	.byte	4
	.byte	1
	.byte	14
	.byte	11
	.byte	8
	.byte	5
	.byte	2
	.byte	15
	.byte	12
	.byte	9
	.byte	6
	.byte	3
	.section	.rodata
	.align	4
	.set	.LANCHOR0,. + 0
	.type	inv_sbox, %object
	.size	inv_sbox, 256
inv_sbox:
	.string	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253"
	.ascii	"\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017"
	.ascii	"\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034"
	.ascii	"u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V"
	.ascii	">K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\307"
	.ascii	"1\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311"
	.ascii	"\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004"
	.ascii	"~\272w\326&\341i\024cU!\f}"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
