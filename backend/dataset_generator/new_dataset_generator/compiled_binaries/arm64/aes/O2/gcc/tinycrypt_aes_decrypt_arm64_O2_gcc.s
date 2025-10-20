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
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	cmp	x1, 0
	adrp	x3, :got:__stack_chk_guard
	ldr	x3, [x3, :got_lo12:__stack_chk_guard]
	ccmp	x2, 0, 4, ne
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 80
	ccmp	x0, 0, 4, ne
	ldr	x4, [x3]
	str	x4, [sp, 72]
	mov	x4, 0
	str	x0, [sp, 24]
	mov	w0, 0
	bne	.L17
.L5:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L18
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 176
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L17:
	.cfi_restore_state
	stp	x19, x20, [sp, 96]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	mov	x20, x2
	add	x19, sp, 32
	mov	x2, x1
	mov	w3, 16
	mov	x0, x19
	mov	w1, w3
	stp	x21, x22, [sp, 112]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 128]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	add	x23, x20, 144
	add	x24, sp, 56
	stp	x25, x26, [sp, 144]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	add	x26, sp, 52
	add	x25, sp, 40
	stp	x27, x28, [sp, 160]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	_copy
	adrp	x2, .LC0
	ldp	w0, w4, [x20, 160]
	fmov	s0, w0
	ldp	w3, w1, [x20, 168]
	ushr	v1.2s, v0.2s, 24
	ubfx	x13, x0, 16, 8
	ubfx	x10, x0, 8, 8
	fmov	s0, w3
	ubfx	x12, x4, 16, 8
	ubfx	x9, x1, 16, 8
	ubfx	x11, x3, 8, 8
	mov	v2.16b, v1.16b
	ubfx	x7, x1, 8, 8
	ins	v1.b[1], w9
	ushr	v5.2s, v0.2s, 24
	fmov	s0, w4
	ubfx	x5, x4, 8, 8
	ubfx	x8, x3, 16, 8
	fmov	s3, w1
	ins	v2.b[1], w13
	ushr	v0.2s, v0.2s, 24
	ins	v1.b[2], w11
	ushr	v4.2s, v3.2s, 24
	ldr	q3, [sp, 32]
	add	x28, sp, 48
	ins	v2.b[2], w10
	add	x27, sp, 36
	ins	v1.b[3], w4
	ins	v2.b[3], w0
	ins	v1.b[4], v0.b[0]
	ins	v2.b[4], v0.b[0]
	ins	v1.b[5], w13
	ldr	q0, [x2, #:lo12:.LC0]
	add	x2, sp, 44
	ins	v2.b[5], w12
	str	x2, [sp, 8]
	ins	v1.b[6], w7
	add	x2, sp, 60
	tbl	v0.16b, {v3.16b}, v0.16b
	str	x2, [sp, 16]
	adrp	x2, .LANCHOR0
	add	x21, x2, :lo12:.LANCHOR0
	ins	v2.b[6], w5
	ins	v1.b[7], w3
	ins	v2.b[7], w4
	ins	v1.b[8], v5.b[0]
	ins	v2.b[8], v5.b[0]
	ins	v1.b[9], w12
	ins	v2.b[9], w8
	ins	v1.b[10], w10
	ins	v2.b[10], w11
	ins	v1.b[11], w1
	ins	v2.b[11], w3
	ins	v1.b[12], v4.b[0]
	ins	v2.b[12], v4.b[0]
	ins	v1.b[13], w8
	ins	v2.b[13], w9
	ins	v1.b[14], w5
	ins	v2.b[14], w7
	ins	v1.b[15], w0
	ins	v2.b[15], w1
	eor	v0.16b, v0.16b, v1.16b
	eor	v2.16b, v2.16b, v3.16b
	str	q2, [sp, 32]
	.p2align 3,,7
.L9:
	mov	w3, 16
	mov	x2, x28
	mov	w1, w3
	mov	x0, x19
	str	q0, [sp, 48]
	bl	_copy
	mov	x22, x19
	mov	x0, x19
	.p2align 3,,7
.L7:
	ldrb	w1, [x0]
	ldrb	w1, [x21, w1, sxtw]
	strb	w1, [x0], 1
	cmp	x28, x0
	bne	.L7
	ldp	s4, s3, [x23]
	mov	x1, x19
	ldr	s2, [x23, 8]
	mov	x0, x28
	ldr	q5, [sp, 32]
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
	ldr	s1, [x23, 12]
	sub	x23, x23, #16
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
	str	q0, [sp, 32]
	bl	mult_row_column
	mov	x1, x27
	mov	x0, x26
	bl	mult_row_column
	mov	x1, x25
	mov	x0, x24
	bl	mult_row_column
	ldp	x1, x0, [sp, 8]
	bl	mult_row_column
	mov	w3, 16
	mov	x2, x28
	mov	x0, x19
	mov	w1, w3
	bl	_copy
	ldr	q0, [sp, 32]
	cmp	x20, x23
	beq	.L8
	adrp	x0, .LC0
	ldr	q1, [x0, #:lo12:.LC0]
	tbl	v0.16b, {v0.16b}, v1.16b
	b	.L9
.L8:
	adrp	x0, .LC0
	mov	w3, 16
	mov	x2, x28
	mov	w1, w3
	ldr	q1, [x0, #:lo12:.LC0]
	mov	x0, x19
	tbl	v0.16b, {v0.16b}, v1.16b
	str	q0, [sp, 48]
	bl	_copy
	adrp	x0, .LANCHOR0
	add	x21, x0, :lo12:.LANCHOR0
	.p2align 3,,7
.L10:
	ldrb	w0, [x22]
	ldrb	w0, [x21, w0, sxtw]
	strb	w0, [x22], 1
	cmp	x28, x22
	bne	.L10
	ldp	s4, s3, [x20]
	mov	w3, 16
	ldr	s2, [x20, 8]
	mov	w1, w3
	ldr	q5, [sp, 32]
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
	ldr	s1, [x20, 12]
	ldr	x0, [sp, 24]
	mov	x2, x19
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
	str	q0, [sp, 32]
	bl	_copy
	mov	x0, x19
	mov	w2, 16
	mov	w1, 0
	bl	_set
	ldp	x19, x20, [sp, 96]
	.cfi_restore 20
	.cfi_restore 19
	mov	w0, 1
	ldp	x21, x22, [sp, 112]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 128]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 144]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 160]
	.cfi_restore 28
	.cfi_restore 27
	b	.L5
.L18:
	stp	x19, x20, [sp, 96]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 112]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 128]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x25, x26, [sp, 144]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	stp	x27, x28, [sp, 160]
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
