	.arch armv8-a
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.align	2
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
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	mov	x21, x0
	mov	x19, x1
	ldrb	w0, [x1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w24, w0, 255
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w24, w24, w0
	ldrb	w0, [x19]
	bl	_double_byte
	and	w23, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w23, w23, w0
	ldrb	w0, [x19, 1]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w25, [x19, 1]
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w20, w20, w0
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 2]
	eor	w1, w25, w0
	eor	w1, w24, w1
	eor	w1, w23, w1
	eor	w20, w20, w1
	and	w20, w20, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w22, w0
	eor	w20, w20, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w0
	strb	w20, [x21]
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w23, [x19]
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	and	w0, w0, 255
	eor	w20, w20, w0
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w24, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 2]
	eor	w1, w23, w1
	eor	w1, w22, w1
	eor	w20, w20, w1
	eor	w0, w24, w0
	eor	w20, w20, w0
	and	w20, w20, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	eor	w20, w20, w22
	ldrb	w0, [x19, 3]
	eor	w20, w20, w0
	strb	w20, [x21, 1]
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w20, w20, w0
	ldrb	w22, [x19]
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w23, w0, 255
	ldrb	w0, [x19, 1]
	eor	w22, w22, w0
	eor	w20, w20, w22
	and	w20, w20, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w23, w0
	eor	w20, w20, w0
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	eor	w20, w20, w22
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	eor	w20, w20, w22
	ldrb	w0, [x19, 3]
	eor	w20, w20, w0
	strb	w20, [x21, 2]
	ldrb	w0, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19]
	bl	_double_byte
	and	w0, w0, 255
	eor	w20, w20, w0
	ldrb	w23, [x19]
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 1]
	eor	w1, w23, w1
	eor	w20, w20, w1
	eor	w0, w22, w0
	eor	w20, w20, w0
	and	w20, w20, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w23, [x19, 2]
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	eor	w20, w20, w22
	ldrb	w0, [x19, 3]
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	eor	w20, w20, w22
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
	.global	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	tc_aes128_set_encrypt_key
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	2
	.global	tc_aes_decrypt
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
.LFB21:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 48
	stp	x23, x24, [sp, 96]
	str	x27, [sp, 128]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 27, -16
	mov	x27, x0
	mov	x24, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 40]
	mov	x2, 0
	cmp	x1, 0
	ccmp	x24, 0, 4, ne
	mov	w0, 0
	ccmp	x27, 0, 4, ne
	bne	.L16
.L5:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L17
	ldp	x23, x24, [sp, 96]
	ldr	x27, [sp, 128]
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 144
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
.L16:
	.cfi_restore_state
	stp	x19, x20, [sp, 64]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 80]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x25, x26, [sp, 112]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	mov	w3, 16
	mov	x2, x1
	mov	w1, w3
	add	x0, sp, 8
	bl	_copy
	ldr	w0, [x24, 160]
	ldrb	w1, [sp, 8]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 8]
	ldrb	w1, [sp, 9]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 9]
	ldrb	w1, [sp, 10]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 10]
	ldrb	w1, [sp, 11]
	eor	w0, w0, w1
	strb	w0, [sp, 11]
	ldr	w0, [x24, 164]
	ldrb	w1, [sp, 12]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 12]
	ldrb	w1, [sp, 13]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 13]
	ldrb	w1, [sp, 14]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 14]
	ldrb	w1, [sp, 15]
	eor	w0, w0, w1
	strb	w0, [sp, 15]
	ldr	w0, [x24, 168]
	ldrb	w1, [sp, 16]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 16]
	ldrb	w1, [sp, 17]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 17]
	ldrb	w1, [sp, 18]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 18]
	ldrb	w1, [sp, 19]
	eor	w0, w0, w1
	strb	w0, [sp, 19]
	ldr	w0, [x24, 172]
	ldrb	w1, [sp, 20]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 20]
	ldrb	w1, [sp, 21]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 21]
	ldrb	w1, [sp, 22]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 22]
	ldrb	w1, [sp, 23]
	eor	w0, w0, w1
	strb	w0, [sp, 23]
	add	x22, x24, 144
	add	x19, sp, 24
	add	x23, sp, 8
	mov	w25, 16
	adrp	x20, .LANCHOR0
	add	x20, x20, :lo12:.LANCHOR0
	add	x26, sp, 12
.L8:
	ldrb	w0, [sp, 8]
	strb	w0, [sp, 24]
	ldrb	w0, [sp, 21]
	strb	w0, [sp, 25]
	ldrb	w0, [sp, 18]
	strb	w0, [sp, 26]
	ldrb	w0, [sp, 15]
	strb	w0, [sp, 27]
	ldrb	w0, [sp, 12]
	strb	w0, [sp, 28]
	ldrb	w0, [sp, 9]
	strb	w0, [sp, 29]
	ldrb	w0, [sp, 22]
	strb	w0, [sp, 30]
	ldrb	w0, [sp, 19]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 16]
	strb	w0, [sp, 32]
	ldrb	w0, [sp, 13]
	strb	w0, [sp, 33]
	ldrb	w0, [sp, 10]
	strb	w0, [sp, 34]
	ldrb	w0, [sp, 23]
	strb	w0, [sp, 35]
	ldrb	w0, [sp, 20]
	strb	w0, [sp, 36]
	ldrb	w0, [sp, 17]
	strb	w0, [sp, 37]
	ldrb	w0, [sp, 14]
	strb	w0, [sp, 38]
	ldrb	w0, [sp, 11]
	strb	w0, [sp, 39]
	mov	w3, w25
	mov	x2, x19
	mov	w1, w25
	mov	x0, x23
	bl	_copy
	mov	x21, x23
	mov	x1, x23
.L7:
	ldrb	w0, [x1]
	ldrb	w0, [x20, w0, sxtw]
	strb	w0, [x1], 1
	cmp	x1, x19
	bne	.L7
	ldr	w0, [x22]
	ldrb	w1, [sp, 8]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 8]
	ldrb	w1, [sp, 9]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 9]
	ldrb	w1, [sp, 10]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 10]
	ldrb	w1, [sp, 11]
	eor	w0, w0, w1
	strb	w0, [sp, 11]
	ldr	w0, [x22, 4]
	ldrb	w1, [sp, 12]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 12]
	ldrb	w1, [sp, 13]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 13]
	ldrb	w1, [sp, 14]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 14]
	ldrb	w1, [sp, 15]
	eor	w0, w0, w1
	strb	w0, [sp, 15]
	ldr	w0, [x22, 8]
	ldrb	w1, [sp, 16]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 16]
	ldrb	w1, [sp, 17]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 17]
	ldrb	w1, [sp, 18]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 18]
	ldrb	w1, [sp, 19]
	eor	w0, w0, w1
	strb	w0, [sp, 19]
	ldr	w0, [x22, 12]
	ldrb	w1, [sp, 20]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 20]
	ldrb	w1, [sp, 21]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 21]
	ldrb	w1, [sp, 22]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 22]
	ldrb	w1, [sp, 23]
	eor	w0, w0, w1
	strb	w0, [sp, 23]
	mov	x1, x23
	mov	x0, x19
	bl	mult_row_column
	mov	x1, x26
	add	x0, sp, 28
	bl	mult_row_column
	add	x1, sp, 16
	add	x0, sp, 32
	bl	mult_row_column
	add	x1, sp, 20
	add	x0, sp, 36
	bl	mult_row_column
	mov	w3, w25
	mov	x2, x19
	mov	w1, w25
	mov	x0, x23
	bl	_copy
	sub	x22, x22, #16
	cmp	x24, x22
	bne	.L8
	ldrb	w0, [sp, 8]
	strb	w0, [sp, 24]
	ldrb	w0, [sp, 21]
	strb	w0, [sp, 25]
	ldrb	w0, [sp, 18]
	strb	w0, [sp, 26]
	ldrb	w0, [sp, 15]
	strb	w0, [sp, 27]
	ldrb	w0, [sp, 12]
	strb	w0, [sp, 28]
	ldrb	w0, [sp, 9]
	strb	w0, [sp, 29]
	ldrb	w0, [sp, 22]
	strb	w0, [sp, 30]
	ldrb	w0, [sp, 19]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 16]
	strb	w0, [sp, 32]
	ldrb	w0, [sp, 13]
	strb	w0, [sp, 33]
	ldrb	w0, [sp, 10]
	strb	w0, [sp, 34]
	ldrb	w0, [sp, 23]
	strb	w0, [sp, 35]
	ldrb	w0, [sp, 20]
	strb	w0, [sp, 36]
	ldrb	w0, [sp, 17]
	strb	w0, [sp, 37]
	ldrb	w0, [sp, 14]
	strb	w0, [sp, 38]
	ldrb	w0, [sp, 11]
	strb	w0, [sp, 39]
	mov	w3, 16
	add	x2, sp, 24
	mov	w1, w3
	add	x0, sp, 8
	bl	_copy
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
.L9:
	ldrb	w0, [x21]
	ldrb	w0, [x1, w0, sxtw]
	strb	w0, [x21], 1
	cmp	x21, x19
	bne	.L9
	ldr	w0, [x24]
	ldrb	w1, [sp, 8]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 8]
	ldrb	w1, [sp, 9]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 9]
	ldrb	w1, [sp, 10]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 10]
	ldrb	w1, [sp, 11]
	eor	w0, w0, w1
	strb	w0, [sp, 11]
	ldr	w0, [x24, 4]
	ldrb	w1, [sp, 12]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 12]
	ldrb	w1, [sp, 13]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 13]
	ldrb	w1, [sp, 14]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 14]
	ldrb	w1, [sp, 15]
	eor	w0, w0, w1
	strb	w0, [sp, 15]
	ldr	w0, [x24, 8]
	ldrb	w1, [sp, 16]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 16]
	ldrb	w1, [sp, 17]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 17]
	ldrb	w1, [sp, 18]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 18]
	ldrb	w1, [sp, 19]
	eor	w0, w0, w1
	strb	w0, [sp, 19]
	ldr	w0, [x24, 12]
	ldrb	w1, [sp, 20]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 20]
	ldrb	w1, [sp, 21]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 21]
	ldrb	w1, [sp, 22]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 22]
	ldrb	w1, [sp, 23]
	eor	w0, w0, w1
	strb	w0, [sp, 23]
	add	x19, sp, 8
	mov	w3, 16
	mov	x2, x19
	mov	w1, w3
	mov	x0, x27
	bl	_copy
	mov	w2, 16
	mov	w1, 0
	mov	x0, x19
	bl	_set
	mov	w0, 1
	ldp	x19, x20, [sp, 64]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 80]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x25, x26, [sp, 112]
	.cfi_restore 26
	.cfi_restore 25
	b	.L5
.L17:
	stp	x19, x20, [sp, 64]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 80]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x25, x26, [sp, 112]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
	bl	__stack_chk_fail
	.cfi_endproc
.LFE21:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata
	.align	3
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
