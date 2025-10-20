	.arch armv8-a
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.section	.rodata
	.align	3
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
	.text
	.align	2
	.global	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	tc_aes128_set_encrypt_key
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	2
	.type	mult_row_column, %function
mult_row_column:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	eor	w1, w19, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	add	x0, x0, 2
	eor	w1, w19, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w20, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w20, w0
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	add	x0, x0, 3
	eor	w1, w19, w1
	and	w1, w1, 255
	strb	w1, [x0]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	mult_row_column, .-mult_row_column
	.align	2
	.type	inv_mix_columns, %function
inv_mix_columns:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	add	x0, sp, 24
	ldr	x1, [sp, 8]
	bl	mult_row_column
	ldr	x0, [sp, 8]
	add	x1, x0, 4
	add	x0, sp, 24
	add	x0, x0, 4
	bl	mult_row_column
	ldr	x0, [sp, 8]
	add	x1, x0, 8
	add	x0, sp, 24
	add	x0, x0, 8
	bl	mult_row_column
	ldr	x0, [sp, 8]
	add	x1, x0, 12
	add	x0, sp, 24
	add	x0, x0, 12
	bl	mult_row_column
	add	x0, sp, 24
	mov	w3, 16
	mov	x2, x0
	mov	w1, 16
	ldr	x0, [sp, 8]
	bl	_copy
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	inv_mix_columns, .-inv_mix_columns
	.align	2
	.type	add_round_key, %function
add_round_key:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	lsr	w0, w0, 24
	and	w0, w0, 255
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	ldrb	w2, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	lsr	w0, w0, 16
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 2
	ldrb	w2, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	lsr	w0, w0, 8
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 2
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 3
	ldrb	w2, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 3
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	lsr	w0, w0, 24
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 5
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	lsr	w0, w0, 16
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 5
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 6
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	lsr	w0, w0, 8
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 6
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 7
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 7
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w0, [x0]
	lsr	w0, w0, 24
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 9
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w0, [x0]
	lsr	w0, w0, 16
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 9
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 10
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w0, [x0]
	lsr	w0, w0, 8
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 10
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 11
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w0, [x0]
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 11
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	w0, [x0]
	lsr	w0, w0, 24
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 13
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	w0, [x0]
	lsr	w0, w0, 16
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 13
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 14
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	w0, [x0]
	lsr	w0, w0, 8
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 14
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 15
	ldrb	w2, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	w0, [x0]
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	add	x0, x0, 15
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	add_round_key, .-add_round_key
	.align	2
	.type	inv_sub_bytes, %function
inv_sub_bytes:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 28]
	b	.L8
.L9:
	ldr	w0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w3, w0
	ldr	w0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, inv_sbox
	add	x2, x1, :lo12:inv_sbox
	sxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L8:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	bls	.L9
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	2
	.type	inv_shift_rows, %function
inv_shift_rows:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 24]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	strb	w0, [sp, 25]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 10]
	strb	w0, [sp, 26]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 7]
	strb	w0, [sp, 27]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 4]
	strb	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	strb	w0, [sp, 29]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 14]
	strb	w0, [sp, 30]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 11]
	strb	w0, [sp, 31]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 8]
	strb	w0, [sp, 32]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 5]
	strb	w0, [sp, 33]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 2]
	strb	w0, [sp, 34]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 15]
	strb	w0, [sp, 35]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 12]
	strb	w0, [sp, 36]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 9]
	strb	w0, [sp, 37]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 6]
	strb	w0, [sp, 38]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 3]
	strb	w0, [sp, 39]
	add	x0, sp, 24
	mov	w3, 16
	mov	x2, x0
	mov	w1, 16
	ldr	x0, [sp, 8]
	bl	_copy
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	inv_shift_rows, .-inv_shift_rows
	.align	2
	.global	tc_aes_decrypt
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L13
	mov	w0, 0
	b	.L19
.L13:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L15
	mov	w0, 0
	b	.L19
.L15:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L16
	mov	w0, 0
	b	.L19
.L16:
	add	x0, sp, 40
	mov	w3, 16
	ldr	x2, [sp, 16]
	mov	w1, 16
	bl	_copy
	ldr	x0, [sp, 8]
	add	x1, x0, 160
	add	x0, sp, 40
	bl	add_round_key
	mov	w0, 9
	str	w0, [sp, 36]
	b	.L17
.L18:
	add	x0, sp, 40
	bl	inv_shift_rows
	add	x0, sp, 40
	bl	inv_sub_bytes
	ldr	x1, [sp, 8]
	ldr	w0, [sp, 36]
	lsl	w0, w0, 2
	uxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 40
	bl	add_round_key
	add	x0, sp, 40
	bl	inv_mix_columns
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
.L17:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L18
	add	x0, sp, 40
	bl	inv_shift_rows
	add	x0, sp, 40
	bl	inv_sub_bytes
	ldr	x1, [sp, 8]
	add	x0, sp, 40
	bl	add_round_key
	add	x0, sp, 40
	mov	w3, 16
	mov	x2, x0
	mov	w1, 16
	ldr	x0, [sp, 24]
	bl	_copy
	add	x0, sp, 40
	mov	w2, 16
	mov	w1, 0
	bl	_set
	mov	w0, 1
.L19:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L20
	bl	__stack_chk_fail
.L20:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
