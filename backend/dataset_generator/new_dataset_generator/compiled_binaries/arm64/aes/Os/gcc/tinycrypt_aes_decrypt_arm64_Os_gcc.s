	.arch armv8-a
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.align	2
	.type	add_round_key, %function
add_round_key:
.LFB18:
	.cfi_startproc
	ldrb	w2, [x1, 3]
	ldrb	w3, [x0]
	eor	w2, w2, w3
	strb	w2, [x0]
	ldrb	w3, [x0, 1]
	ldrh	w2, [x1, 2]
	eor	w2, w2, w3
	strb	w2, [x0, 1]
	ldrb	w3, [x0, 2]
	ldr	w2, [x1]
	eor	w2, w3, w2, lsr 8
	strb	w2, [x0, 2]
	ldrb	w3, [x0, 3]
	ldr	w2, [x1]
	eor	w2, w2, w3
	strb	w2, [x0, 3]
	ldrb	w3, [x0, 4]
	ldrb	w2, [x1, 7]
	eor	w2, w2, w3
	strb	w2, [x0, 4]
	ldrb	w3, [x0, 5]
	ldrh	w2, [x1, 6]
	eor	w2, w2, w3
	strb	w2, [x0, 5]
	ldrb	w3, [x0, 6]
	ldr	w2, [x1, 4]
	eor	w2, w3, w2, lsr 8
	strb	w2, [x0, 6]
	ldrb	w3, [x0, 7]
	ldr	w2, [x1, 4]
	eor	w2, w2, w3
	strb	w2, [x0, 7]
	ldrb	w3, [x0, 8]
	ldrb	w2, [x1, 11]
	eor	w2, w2, w3
	strb	w2, [x0, 8]
	ldrb	w3, [x0, 9]
	ldrh	w2, [x1, 10]
	eor	w2, w2, w3
	strb	w2, [x0, 9]
	ldrb	w3, [x0, 10]
	ldr	w2, [x1, 8]
	eor	w2, w3, w2, lsr 8
	strb	w2, [x0, 10]
	ldr	w2, [x1, 8]
	ldrb	w3, [x0, 11]
	eor	w2, w2, w3
	strb	w2, [x0, 11]
	ldrb	w3, [x0, 12]
	ldrb	w2, [x1, 15]
	eor	w2, w2, w3
	strb	w2, [x0, 12]
	ldrb	w3, [x0, 13]
	ldrh	w2, [x1, 14]
	eor	w2, w2, w3
	strb	w2, [x0, 13]
	ldrb	w3, [x0, 14]
	ldr	w2, [x1, 12]
	eor	w2, w3, w2, lsr 8
	strb	w2, [x0, 14]
	ldrb	w2, [x0, 15]
	ldr	w1, [x1, 12]
	eor	w1, w1, w2
	strb	w1, [x0, 15]
	ret
	.cfi_endproc
.LFE18:
	.size	add_round_key, .-add_round_key
	.align	2
	.type	inv_sub_bytes, %function
inv_sub_bytes:
.LFB19:
	.cfi_startproc
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	mov	x1, 0
.L3:
	ldrb	w3, [x0, x1]
	ldrb	w3, [x2, x3]
	strb	w3, [x0, x1]
	add	x1, x1, 1
	cmp	x1, 16
	bne	.L3
	ret
	.cfi_endproc
.LFE19:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	2
	.type	inv_shift_rows, %function
inv_shift_rows:
.LFB20:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	ldr	x3, [x2]
	str	x3, [sp, 24]
	mov	x3, 0
	ldrb	w2, [x0]
	mov	w3, 16
	strb	w2, [sp, 8]
	ldrb	w2, [x0, 13]
	strb	w2, [sp, 9]
	ldrb	w2, [x0, 10]
	strb	w2, [sp, 10]
	ldrb	w2, [x0, 7]
	strb	w2, [sp, 11]
	ldrb	w2, [x0, 4]
	strb	w2, [sp, 12]
	ldrb	w2, [x0, 1]
	strb	w2, [sp, 13]
	ldrb	w2, [x0, 14]
	strb	w2, [sp, 14]
	ldrb	w2, [x0, 11]
	strb	w2, [sp, 15]
	ldrb	w2, [x0, 8]
	strb	w2, [sp, 16]
	ldrb	w2, [x0, 5]
	strb	w2, [sp, 17]
	ldrb	w2, [x0, 2]
	strb	w2, [sp, 18]
	ldrb	w2, [x0, 15]
	strb	w2, [sp, 19]
	ldrb	w2, [x0, 12]
	strb	w2, [sp, 20]
	ldrb	w2, [x0, 9]
	ldrb	w1, [x0, 3]
	strb	w2, [sp, 21]
	ldrb	w2, [x0, 6]
	strb	w2, [sp, 22]
	add	x2, sp, 8
	strb	w1, [sp, 23]
	mov	w1, w3
	bl	_copy
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 24]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE20:
	.size	inv_shift_rows, .-inv_shift_rows
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
	and	w0, w0, 255
	eor	w23, w23, w0
	ldrb	w0, [x19]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	ldrb	w0, [x19, 1]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19, 2]
	ldrb	w25, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w20, w20, w0
	ldrb	w0, [x19, 2]
	bl	_double_byte
	bl	_double_byte
	and	w24, w0, 255
	ldrb	w0, [x19, 2]
	eor	w25, w25, w0
	ldrb	w0, [x19, 3]
	eor	w23, w23, w25
	eor	w22, w22, w23
	eor	w20, w20, w22
	bl	_double_byte
	and	w20, w20, 255
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w24, w24, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w24
	eor	w20, w20, w0
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
	and	w23, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 2]
	eor	w23, w23, w0
	ldrb	w0, [x19, 3]
	eor	w24, w24, w1
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
	eor	w22, w22, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w22
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
	ldrb	w0, [x19, 1]
	ldrb	w23, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	eor	w23, w23, w0
	ldrb	w0, [x19, 2]
	eor	w20, w20, w23
	and	w20, w20, 255
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	ldrb	w0, [x19, 2]
	eor	w20, w20, w22
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w22
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 3]
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w22
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
	ldrb	w0, [x19, 1]
	ldrb	w23, [x19]
	bl	_double_byte
	bl	_double_byte
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 1]
	eor	w22, w22, w0
	ldrb	w0, [x19, 2]
	eor	w23, w23, w1
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
	and	w0, w0, 255
	eor	w22, w22, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w22
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
	b	tc_aes128_set_encrypt_key
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
	stp	x21, x22, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x22, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	stp	x19, x20, [sp, 64]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x2
	stp	x23, x24, [sp, 96]
	stp	x25, x26, [sp, 112]
	str	x27, [sp, 128]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	ldr	x2, [x0]
	str	x2, [sp, 40]
	mov	x2, 0
	cbz	x22, .L17
	cbz	x1, .L17
	cbz	x20, .L17
	mov	x2, x1
	add	x21, x20, 144
	add	x23, sp, 24
	add	x27, sp, 12
	add	x26, sp, 28
	add	x25, sp, 16
	add	x24, sp, 32
	mov	w3, 16
	add	x19, sp, 8
	mov	w1, w3
	mov	x0, x19
	bl	_copy
	add	x1, x20, 160
	mov	x0, x19
	bl	add_round_key
.L13:
	mov	x0, x19
	bl	inv_shift_rows
	mov	x0, x19
	bl	inv_sub_bytes
	mov	x1, x21
	bl	add_round_key
	mov	x1, x19
	mov	x0, x23
	bl	mult_row_column
	sub	x21, x21, #16
	mov	x1, x27
	mov	x0, x26
	bl	mult_row_column
	mov	x1, x25
	mov	x0, x24
	bl	mult_row_column
	add	x1, sp, 20
	add	x0, sp, 36
	bl	mult_row_column
	mov	w3, 16
	mov	x2, x23
	mov	w1, w3
	mov	x0, x19
	bl	_copy
	cmp	x21, x20
	bne	.L13
	mov	x0, x19
	bl	inv_shift_rows
	mov	x0, x19
	bl	inv_sub_bytes
	mov	x1, x21
	bl	add_round_key
	mov	w3, 16
	mov	x2, x19
	mov	w1, w3
	mov	x0, x22
	bl	_copy
	mov	x0, x19
	mov	w2, 16
	mov	w1, 0
	bl	_set
	mov	w0, 1
.L11:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L17:
	mov	w0, 0
	b	.L11
.L14:
	ldp	x29, x30, [sp, 48]
	ldp	x19, x20, [sp, 64]
	ldp	x21, x22, [sp, 80]
	ldp	x23, x24, [sp, 96]
	ldp	x25, x26, [sp, 112]
	ldr	x27, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE21:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata
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
