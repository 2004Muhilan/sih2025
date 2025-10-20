	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tinycrypt_aes_decrypt.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	add_round_key, %function
add_round_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	ldrb	r2, [r0]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrh	r3, [r1, #2]
	eors	r3, r3, r2
	strb	r3, [r0, #1]
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	ldr	r2, [r1]
	eor	r3, r3, r2, lsr #8
	strb	r3, [r0, #2]
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	ldr	r2, [r1]
	eors	r3, r3, r2
	strb	r3, [r0, #3]
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #7]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #4]
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	ldrh	r3, [r1, #6]
	eors	r3, r3, r2
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	ldr	r2, [r1, #4]
	eor	r3, r3, r2, lsr #8
	strb	r3, [r0, #6]
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
	ldr	r2, [r1, #4]
	eors	r3, r3, r2
	strb	r3, [r0, #7]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	ldrb	r3, [r1, #11]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #8]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	ldrh	r3, [r1, #10]
	eors	r3, r3, r2
	strb	r3, [r0, #9]
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	ldr	r2, [r1, #8]
	eor	r3, r3, r2, lsr #8
	strb	r3, [r0, #10]
	ldr	r2, [r1, #8]
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #11]
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	ldrb	r3, [r1, #15]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [r0, #12]
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	ldrh	r3, [r1, #14]
	eors	r3, r3, r2
	strb	r3, [r0, #13]
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	ldr	r2, [r1, #12]
	eor	r3, r3, r2, lsr #8
	strb	r3, [r0, #14]
	ldrb	r3, [r0, #15]	@ zero_extendqisi2
	ldr	r2, [r1, #12]
	eors	r3, r3, r2
	strb	r3, [r0, #15]
	bx	lr
	.size	add_round_key, .-add_round_key
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	inv_sub_bytes, %function
inv_sub_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L5
	subs	r3, r0, #1
	adds	r0, r0, #15
.LPIC0:
	add	r1, pc
.L3:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r0
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3]
	bne	.L3
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	inv_shift_rows, %function
inv_shift_rows:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, lr}
	ldr	r1, .L9
	ldr	r2, .L9+4
.LPIC1:
	add	r1, pc
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	ldrb	r2, [r0]	@ zero_extendqisi2
	strb	r2, [sp, #4]
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	strb	r2, [sp, #5]
	ldrb	r2, [r0, #10]	@ zero_extendqisi2
	strb	r2, [sp, #6]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	strb	r2, [sp, #7]
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	strb	r2, [sp, #8]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	strb	r2, [sp, #9]
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	strb	r2, [sp, #10]
	ldrb	r2, [r0, #11]	@ zero_extendqisi2
	strb	r2, [sp, #11]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	strb	r2, [sp, #12]
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	strb	r2, [sp, #13]
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	strb	r2, [sp, #14]
	ldrb	r2, [r0, #15]	@ zero_extendqisi2
	strb	r2, [sp, #15]
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	strb	r2, [sp, #16]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	strb	r2, [sp, #17]
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	strb	r3, [sp, #19]
	movs	r3, #16
	mov	r1, r3
	strb	r2, [sp, #18]
	add	r2, sp, #4
	bl	_copy(PLT)
	ldr	r2, .L9+8
	ldr	r3, .L9+4
.LPIC2:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L8
	bl	__stack_chk_fail(PLT)
.L8:
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	inv_shift_rows, .-inv_shift_rows
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mult_row_column, %function
mult_row_column:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	mov	r5, r0
	ldrb	r0, [r1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp, #4]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	fp, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	ldrb	r6, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #2]	@ zero_extendqisi2
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	eors	r6, r6, r1
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	eors	r6, r6, r1
	ldr	r3, [sp]
	eors	r2, r2, r6
	eors	r3, r3, r2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r0, r0, r7
	strb	r0, [r5]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp, #4]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrb	r6, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	fp, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #2]	@ zero_extendqisi2
	mov	r8, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	eors	r6, r6, r1
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	eors	r6, r6, r1
	ldr	r3, [sp]
	eors	r2, r2, r6
	eors	r3, r3, r2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r0, r0, r7
	strb	r0, [r5, #1]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp, #4]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	str	r0, [sp]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrb	r6, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	mov	fp, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	eors	r6, r6, r1
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r10, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	eors	r6, r6, r1
	ldr	r3, [sp]
	eors	r2, r2, r6
	eors	r3, r3, r2
	eor	fp, fp, r3
	eor	r10, r10, fp
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r0, r0, r7
	strb	r0, [r5, #2]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r9, r0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r8, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrb	r10, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r6, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	eor	r10, r10, r3
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	eor	r10, r10, r3
	eor	r9, r9, r10
	eor	r8, r8, r9
	eor	r7, r7, r8
	eors	r6, r6, r7
	eor	r8, r0, r6
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	uxtb	r8, r8
	bl	_double_byte(PLT)
	mov	r7, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	eor	r7, r7, r8
	bl	_double_byte(PLT)
	bl	_double_byte(PLT)
	mov	r6, r0
	eors	r6, r6, r7
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	eors	r0, r0, r6
	strb	r0, [r5, #3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	mult_row_column, .-mult_row_column
	.align	1
	.global	tc_aes128_set_decrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_decrypt_key, %function
tc_aes128_set_decrypt_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	tc_aes128_set_encrypt_key(PLT)
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.global	tc_aes_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_decrypt, %function
tc_aes_decrypt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r2
	ldr	r2, .L21
	ldr	r3, .L21+4
	sub	sp, sp, #40
.LPIC4:
	add	r2, pc
	mov	r6, r0
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	cmp	r0, #0
	beq	.L13
	cmp	r1, #0
	beq	.L18
	cmp	r4, #0
	beq	.L19
	movs	r3, #16
	add	r5, sp, #4
	add	r7, r4, #144
	add	r8, sp, #20
	add	r10, sp, #8
	add	r9, sp, #24
	mov	r2, r1
	mov	r0, r5
	mov	r1, r3
	bl	_copy(PLT)
	add	r1, r4, #160
	mov	r0, r5
	bl	add_round_key(PLT)
.L15:
	mov	r0, r5
	bl	inv_shift_rows(PLT)
	mov	r0, r5
	bl	inv_sub_bytes(PLT)
	mov	r1, r7
	mov	r0, r5
	subs	r7, r7, #16
	bl	add_round_key(PLT)
	mov	r1, r5
	mov	r0, r8
	bl	mult_row_column(PLT)
	mov	r1, r10
	mov	r0, r9
	bl	mult_row_column(PLT)
	add	r1, sp, #12
	add	r0, sp, #28
	bl	mult_row_column(PLT)
	add	r1, sp, #16
	add	r0, sp, #32
	bl	mult_row_column(PLT)
	movs	r3, #16
	mov	r2, r8
	mov	r1, r3
	mov	r0, r5
	bl	_copy(PLT)
	cmp	r7, r4
	bne	.L15
	mov	r0, r5
	bl	inv_shift_rows(PLT)
	mov	r0, r5
	bl	inv_sub_bytes(PLT)
	mov	r1, r7
	mov	r0, r5
	bl	add_round_key(PLT)
	movs	r3, #16
	mov	r1, r3
	mov	r2, r5
	mov	r0, r6
	bl	_copy(PLT)
	mov	r0, r5
	movs	r2, #16
	movs	r1, #0
	bl	_set(PLT)
	movs	r0, #1
.L13:
	ldr	r2, .L21+8
	ldr	r3, .L21+4
.LPIC3:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L16
	bl	__stack_chk_fail(PLT)
.L18:
	mov	r0, r1
	b	.L13
.L19:
	mov	r0, r4
	b	.L13
.L16:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L22:
	.align	2
.L21:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata
	.set	.LANCHOR0,. + 0
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
