	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.section	.rodata
	.align	2
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
	.text
	.align	1
	.global	tc_aes128_set_decrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	tc_aes128_set_encrypt_key(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mult_row_column, %function
mult_row_column:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	eors	r2, r2, r4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	eors	r2, r2, r4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r3, r3
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r5, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r5
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	eors	r2, r2, r4
	uxtb	r2, r2
	strb	r2, [r3]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	mult_row_column, .-mult_row_column
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	inv_mix_columns, %function
inv_mix_columns:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L6
.LPIC0:
	add	r2, pc
	ldr	r3, .L6+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	mov	r3, #0
	add	r3, r7, #12
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	mult_row_column(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r3, r7, #12
	adds	r3, r3, #4
	mov	r1, r2
	mov	r0, r3
	bl	mult_row_column(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	add	r3, r7, #12
	adds	r3, r3, #8
	mov	r1, r2
	mov	r0, r3
	bl	mult_row_column(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	add	r3, r7, #12
	adds	r3, r3, #12
	mov	r1, r2
	mov	r0, r3
	bl	mult_row_column(PLT)
	add	r2, r7, #12
	movs	r3, #16
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	_copy(PLT)
	nop
	ldr	r2, .L6+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L6+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L5
	bl	__stack_chk_fail(PLT)
.L5:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	inv_mix_columns, .-inv_mix_columns
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	add_round_key, %function
add_round_key:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #5
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #5
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldr	r3, [r3]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #9
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #9
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #10
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #10
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #11
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #11
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #12
	ldr	r3, [r3]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #13
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #12
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #13
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #14
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #12
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #14
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #15
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #12
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #15
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	add_round_key, .-add_round_key
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	inv_sub_bytes, %function
inv_sub_bytes:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L10
.L11:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, .L12
.LPIC2:
	add	r2, pc
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L10:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	bls	.L11
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	inv_sbox-(.LPIC2+4)
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	inv_shift_rows, %function
inv_shift_rows:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L16
.LPIC3:
	add	r2, pc
	ldr	r3, .L16+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	strb	r3, [r7, #13]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	strb	r3, [r7, #17]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	strb	r3, [r7, #18]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	strb	r3, [r7, #19]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strb	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	strb	r3, [r7, #21]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	strb	r3, [r7, #22]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	strb	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	strb	r3, [r7, #25]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	strb	r3, [r7, #26]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	strb	r3, [r7, #27]
	add	r2, r7, #12
	movs	r3, #16
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	_copy(PLT)
	nop
	ldr	r2, .L16+8
.LPIC4:
	add	r2, pc
	ldr	r3, .L16+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	2
.L16:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	inv_shift_rows, .-inv_shift_rows
	.align	1
	.global	tc_aes_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L27
.LPIC5:
	add	r2, pc
	ldr	r3, .L27+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	mov	r3, #0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L19
	movs	r3, #0
	b	.L25
.L19:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L21
	movs	r3, #0
	b	.L25
.L21:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L22
	movs	r3, #0
	b	.L25
.L22:
	add	r0, r7, #20
	movs	r3, #16
	ldr	r2, [r7, #8]
	movs	r1, #16
	bl	_copy(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #160
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	add_round_key(PLT)
	movs	r3, #9
	str	r3, [r7, #16]
	b	.L23
.L24:
	add	r3, r7, #20
	mov	r0, r3
	bl	inv_shift_rows(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	inv_sub_bytes(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r2, r2, r3
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	add_round_key(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	inv_mix_columns(PLT)
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L23:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L24
	add	r3, r7, #20
	mov	r0, r3
	bl	inv_shift_rows(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	inv_sub_bytes(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	add_round_key(PLT)
	add	r2, r7, #20
	movs	r3, #16
	movs	r1, #16
	ldr	r0, [r7, #12]
	bl	_copy(PLT)
	add	r3, r7, #20
	movs	r2, #16
	movs	r1, #0
	mov	r0, r3
	bl	_set(PLT)
	movs	r3, #1
.L25:
	ldr	r1, .L27+8
.LPIC6:
	add	r1, pc
	ldr	r2, .L27+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #36]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L26
	bl	__stack_chk_fail(PLT)
.L26:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
