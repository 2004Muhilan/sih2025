	.arch armv8-a
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.align	2
	.type	add_round_key, %function
add_round_key:
.LFB17:
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
.LFE17:
	.size	add_round_key, .-add_round_key
	.align	2
	.type	sub_bytes, %function
sub_bytes:
.LFB18:
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
.LFE18:
	.size	sub_bytes, .-sub_bytes
	.align	2
	.type	shift_rows, %function
shift_rows:
.LFB21:
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
	ldrb	w2, [x0, 5]
	strb	w2, [sp, 9]
	ldrb	w2, [x0, 10]
	strb	w2, [sp, 10]
	ldrb	w2, [x0, 15]
	strb	w2, [sp, 11]
	ldrb	w2, [x0, 4]
	strb	w2, [sp, 12]
	ldrb	w2, [x0, 9]
	strb	w2, [sp, 13]
	ldrb	w2, [x0, 14]
	strb	w2, [sp, 14]
	ldrb	w2, [x0, 3]
	strb	w2, [sp, 15]
	ldrb	w2, [x0, 8]
	strb	w2, [sp, 16]
	ldrb	w2, [x0, 13]
	strb	w2, [sp, 17]
	ldrb	w2, [x0, 2]
	strb	w2, [sp, 18]
	ldrb	w2, [x0, 7]
	strb	w2, [sp, 19]
	ldrb	w2, [x0, 12]
	strb	w2, [sp, 20]
	ldrb	w2, [x0, 1]
	ldrb	w1, [x0, 11]
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
.LFE21:
	.size	shift_rows, .-shift_rows
	.align	2
	.type	mult_row_column, %function
mult_row_column:
.LFB19:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x0
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	ldrb	w0, [x1]
	bl	_double_byte
	and	w20, w0, 255
	ldrb	w0, [x19, 1]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w2, [x19, 2]
	eor	w20, w20, w1
	ldrb	w0, [x19, 1]
	ldrb	w1, [x19, 3]
	eor	w0, w0, w2
	eor	w0, w0, w20
	eor	w0, w0, w1
	strb	w0, [x21]
	ldrb	w0, [x19, 1]
	ldrb	w20, [x19]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [x19, 2]
	bl	_double_byte
	and	w0, w0, 255
	ldrb	w1, [x19, 2]
	eor	w22, w22, w0
	ldrb	w0, [x19, 3]
	eor	w20, w20, w1
	eor	w20, w20, w22
	eor	w20, w20, w0
	strb	w20, [x21, 1]
	ldrb	w0, [x19, 1]
	ldrb	w20, [x19]
	eor	w20, w20, w0
	ldrb	w0, [x19, 2]
	and	w20, w20, 255
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
	ldrb	w20, [x19]
	and	w22, w0, 255
	ldrb	w0, [x19, 1]
	ldrb	w23, [x19, 2]
	eor	w20, w20, w0
	ldrb	w0, [x19, 3]
	and	w20, w20, 255
	bl	_double_byte
	and	w0, w0, 255
	eor	w22, w22, w0
	eor	w20, w20, w22
	eor	w23, w23, w20
	strb	w23, [x21, 3]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE19:
	.size	mult_row_column, .-mult_row_column
	.align	2
	.global	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	adrp	x2, :got:__stack_chk_guard
	ldr	x2, [x2, :got_lo12:__stack_chk_guard]
	add	x5, sp, 8
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	ldr	x3, [x2]
	str	x3, [sp, 56]
	mov	x3, 0
	adrp	x2, .LANCHOR0
	add	x3, x2, :lo12:.LANCHOR0
	add	x3, x3, 256
	ldp	q0, q1, [x3]
	stp	q0, q1, [x5]
	ldr	q0, [x3, 28]
	str	q0, [x5, 28]
	cbz	x0, .L17
	cbz	x1, .L17
	mov	x4, 0
.L12:
	ldrb	w6, [x1, 1]
	add	x1, x1, 4
	ldrb	w3, [x1, -4]
	ldrb	w7, [x1, -1]
	lsl	w6, w6, 16
	orr	w3, w6, w3, lsl 24
	ldrb	w6, [x1, -2]
	orr	w6, w7, w6, lsl 8
	orr	w3, w3, w6
	str	w3, [x0, x4]
	add	x4, x4, 4
	cmp	x4, 16
	bne	.L12
	add	x2, x2, :lo12:.LANCHOR0
	mov	w3, 4
.L14:
	ldr	w1, [x0, 12]
	tst	x3, 3
	bne	.L13
	and	x6, x1, 255
	ubfx	x4, x1, 8, 8
	ldrb	w6, [x2, x6]
	ldrb	w4, [x2, x4]
	lsl	w6, w6, 8
	orr	w4, w6, w4, lsl 16
	ubfx	x6, x1, 16, 8
	lsr	w1, w1, 24
	ldrb	w6, [x2, x6]
	ldrb	w1, [x2, x1]
	orr	w1, w1, w6, lsl 24
	orr	w4, w4, w1
	and	x1, x3, 4294967292
	ldr	w1, [x5, x1]
	eor	w1, w4, w1
.L13:
	ldr	w4, [x0]
	add	w3, w3, 1
	add	x0, x0, 4
	eor	w1, w4, w1
	str	w1, [x0, 12]
	cmp	w3, 44
	bne	.L14
	mov	w0, 1
.L10:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L15
	bl	__stack_chk_fail
.L17:
	mov	w0, 0
	b	.L10
.L15:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	2
	.global	tc_aes_encrypt
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
.LFB22:
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
	cbz	x22, .L27
	cbz	x1, .L27
	cbz	x20, .L27
	add	x19, sp, 8
	mov	x2, x1
	mov	w3, 16
	mov	x0, x19
	mov	w1, w3
	bl	_copy
	mov	x1, x20
	add	x21, x20, 16
	add	x23, sp, 24
	add	x20, x20, 160
	add	x27, sp, 12
	add	x26, sp, 28
	add	x25, sp, 16
	add	x24, sp, 32
	mov	x0, x19
	bl	add_round_key
.L23:
	mov	x0, x19
	bl	sub_bytes
	bl	shift_rows
	mov	x1, x19
	mov	x0, x23
	bl	mult_row_column
	mov	x1, x27
	mov	x0, x26
	bl	mult_row_column
	mov	x1, x25
	mov	x0, x24
	bl	mult_row_column
	add	x1, sp, 20
	add	x0, sp, 36
	bl	mult_row_column
	mov	x2, x23
	mov	w3, 16
	mov	x0, x19
	mov	w1, w3
	bl	_copy
	mov	x1, x21
	mov	x0, x19
	add	x21, x21, 16
	bl	add_round_key
	cmp	x21, x20
	bne	.L23
	bl	sub_bytes
	bl	shift_rows
	mov	x1, x21
	mov	x0, x19
	bl	add_round_key
	mov	x0, x22
	mov	w3, 16
	mov	x2, x19
	mov	w1, w3
	bl	_copy
	mov	x0, x19
	mov	w2, 16
	mov	w1, 0
	bl	_set
	mov	w0, 1
.L21:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L27:
	mov	w0, 0
	b	.L21
.L24:
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
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
