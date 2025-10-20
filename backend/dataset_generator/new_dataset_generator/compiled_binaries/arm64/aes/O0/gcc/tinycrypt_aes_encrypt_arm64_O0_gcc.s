	.arch armv8-a
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.section	.rodata
	.align	3
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
	.text
	.align	2
	.type	rotword, %function
rotword:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	ror	w0, w0, 24
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	rotword, .-rotword
	.align	2
	.global	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L4
	mov	w0, 0
	b	.L12
.L4:
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L6
	mov	w0, 0
	b	.L12
.L6:
	str	wzr, [sp, 16]
	b	.L7
.L8:
	ldr	w0, [sp, 16]
	lsl	w0, w0, 2
	uxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	lsl	w1, w0, 24
	ldr	w0, [sp, 16]
	lsl	w0, w0, 2
	add	w0, w0, 1
	uxtw	x0, w0
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 16
	orr	w1, w1, w0
	ldr	w0, [sp, 16]
	lsl	w0, w0, 2
	add	w0, w0, 2
	uxtw	x0, w0
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w0, [x0]
	lsl	w0, w0, 8
	orr	w0, w1, w0
	ldr	w1, [sp, 16]
	lsl	w1, w1, 2
	add	w1, w1, 3
	uxtw	x1, w1
	ldr	x2, [sp]
	add	x1, x2, x1
	ldrb	w1, [x1]
	orr	w0, w0, w1
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 16]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L7:
	ldr	w0, [sp, 16]
	cmp	w0, 3
	bls	.L8
	b	.L9
.L11:
	ldr	w0, [sp, 16]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	uxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	ldr	w0, [sp, 16]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 20]
	bl	rotword
	lsr	w0, w0, 24
	and	w2, w0, 255
	adrp	x0, sbox
	add	x1, x0, :lo12:sbox
	uxtw	x0, w2
	ldrb	w0, [x1, x0]
	lsl	w19, w0, 24
	ldr	w0, [sp, 20]
	bl	rotword
	lsr	w0, w0, 16
	and	w2, w0, 255
	adrp	x0, sbox
	add	x1, x0, :lo12:sbox
	uxtw	x0, w2
	ldrb	w0, [x1, x0]
	lsl	w0, w0, 16
	orr	w19, w19, w0
	ldr	w0, [sp, 20]
	bl	rotword
	lsr	w0, w0, 8
	and	w2, w0, 255
	adrp	x0, sbox
	add	x1, x0, :lo12:sbox
	uxtw	x0, w2
	ldrb	w0, [x1, x0]
	lsl	w0, w0, 8
	orr	w19, w19, w0
	ldr	w0, [sp, 20]
	bl	rotword
	and	w2, w0, 255
	adrp	x0, sbox
	add	x1, x0, :lo12:sbox
	uxtw	x0, w2
	ldrb	w0, [x1, x0]
	orr	w0, w19, w0
	mov	w2, w0
	ldr	w0, [sp, 16]
	lsr	w0, w0, 2
	uxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	eor	w0, w2, w0
	str	w0, [sp, 20]
.L10:
	ldr	w0, [sp, 16]
	sub	w1, w0, #4
	ldr	x0, [sp, 8]
	uxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 20]
	eor	w2, w1, w0
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 16]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L9:
	ldr	w0, [sp, 16]
	cmp	w0, 43
	bls	.L11
	mov	w0, 1
.L12:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L13
	bl	__stack_chk_fail
.L13:
	mov	w0, w1
	ldr	x19, [sp, 96]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.section	.rodata
	.align	3
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
	.text
	.align	2
	.type	add_round_key, %function
add_round_key:
.LFB3:
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
.LFE3:
	.size	add_round_key, .-add_round_key
	.align	2
	.type	sub_bytes, %function
sub_bytes:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 28]
	b	.L16
.L17:
	ldr	w0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w3, w0
	ldr	w0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, sbox
	add	x2, x1, :lo12:sbox
	sxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L16:
	ldr	w0, [sp, 28]
	cmp	w0, 15
	bls	.L17
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	sub_bytes, .-sub_bytes
	.align	2
	.type	mult_row_column, %function
mult_row_column:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	bl	_double_byte
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w19, [x0]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w2, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	eor	w1, w2, w1
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	bl	_double_byte
	and	w0, w0, 255
	eor	w0, w19, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
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
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 2
	ldrb	w0, [x0]
	eor	w0, w1, w0
	and	w19, w0, 255
	ldr	x0, [sp, 32]
	add	x0, x0, 3
	ldrb	w0, [x0]
	bl	_double_byte
	and	w1, w0, 255
	ldr	x0, [sp, 40]
	add	x0, x0, 3
	eor	w1, w19, w1
	and	w1, w1, 255
	strb	w1, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	mult_row_column, .-mult_row_column
	.align	2
	.type	mix_columns, %function
mix_columns:
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
	beq	.L20
	bl	__stack_chk_fail
.L20:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	mix_columns, .-mix_columns
	.align	2
	.type	shift_rows, %function
shift_rows:
.LFB7:
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
	ldrb	w0, [x0, 5]
	strb	w0, [sp, 25]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 10]
	strb	w0, [sp, 26]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 15]
	strb	w0, [sp, 27]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 4]
	strb	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 9]
	strb	w0, [sp, 29]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 14]
	strb	w0, [sp, 30]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 3]
	strb	w0, [sp, 31]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 8]
	strb	w0, [sp, 32]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	strb	w0, [sp, 33]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 2]
	strb	w0, [sp, 34]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 7]
	strb	w0, [sp, 35]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 12]
	strb	w0, [sp, 36]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	strb	w0, [sp, 37]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 6]
	strb	w0, [sp, 38]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 11]
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
	beq	.L22
	bl	__stack_chk_fail
.L22:
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	shift_rows, .-shift_rows
	.align	2
	.global	tc_aes_encrypt
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
.LFB8:
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
	bne	.L24
	mov	w0, 0
	b	.L30
.L24:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L26
	mov	w0, 0
	b	.L30
.L26:
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L27
	mov	w0, 0
	b	.L30
.L27:
	add	x0, sp, 40
	mov	w3, 16
	ldr	x2, [sp, 16]
	mov	w1, 16
	bl	_copy
	ldr	x1, [sp, 8]
	add	x0, sp, 40
	bl	add_round_key
	str	wzr, [sp, 36]
	b	.L28
.L29:
	add	x0, sp, 40
	bl	sub_bytes
	add	x0, sp, 40
	bl	shift_rows
	add	x0, sp, 40
	bl	mix_columns
	ldr	x1, [sp, 8]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	lsl	w0, w0, 2
	uxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 40
	bl	add_round_key
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L28:
	ldr	w0, [sp, 36]
	cmp	w0, 8
	bls	.L29
	add	x0, sp, 40
	bl	sub_bytes
	add	x0, sp, 40
	bl	shift_rows
	ldr	x1, [sp, 8]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	lsl	w0, w0, 2
	uxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x1, x0
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
.L30:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L31
	bl	__stack_chk_fail
.L31:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
