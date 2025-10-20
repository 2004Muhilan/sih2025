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
	.file	"tinycrypt_aes_encrypt.c"
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
	.type	sub_bytes, %function
sub_bytes:
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
	.size	sub_bytes, .-sub_bytes
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	shift_rows, %function
shift_rows:
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
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	strb	r2, [sp, #5]
	ldrb	r2, [r0, #10]	@ zero_extendqisi2
	strb	r2, [sp, #6]
	ldrb	r2, [r0, #15]	@ zero_extendqisi2
	strb	r2, [sp, #7]
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	strb	r2, [sp, #8]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	strb	r2, [sp, #9]
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	strb	r2, [sp, #10]
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	strb	r2, [sp, #11]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	strb	r2, [sp, #12]
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	strb	r2, [sp, #13]
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	strb	r2, [sp, #14]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	strb	r2, [sp, #15]
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	strb	r2, [sp, #16]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	strb	r2, [sp, #17]
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
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
	.size	shift_rows, .-shift_rows
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mult_row_column, %function
mult_row_column:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r6, r0
	ldrb	r0, [r1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r5, r0
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	eors	r3, r3, r2
	ldrb	r2, [r4, #3]	@ zero_extendqisi2
	eors	r3, r3, r2
	eors	r5, r5, r3
	eors	r0, r0, r5
	strb	r0, [r6]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrb	r7, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	mov	r5, r0
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	eors	r7, r7, r3
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	eors	r7, r7, r3
	eors	r5, r5, r7
	eors	r0, r0, r5
	strb	r0, [r6, #1]
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	ldrb	r7, [r4]	@ zero_extendqisi2
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	eors	r7, r7, r3
	bl	_double_byte(PLT)
	mov	r5, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	eors	r7, r7, r3
	eors	r5, r5, r7
	eors	r0, r0, r5
	strb	r0, [r6, #2]
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r3, [r4]	@ zero_extendqisi2
	eors	r3, r3, r2
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	eors	r3, r3, r2
	eor	r5, r0, r3
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	bl	_double_byte(PLT)
	uxtb	r5, r5
	eors	r5, r5, r0
	strb	r5, [r6, #3]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	mult_row_column, .-mult_row_column
	.align	1
	.global	tc_aes128_set_encrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L22
	push	{r4, r5, r6, r7, lr}
	mov	r7, r0
	ldr	r3, .L22+4
	ldr	r5, .L22+8
.LPIC9:
	add	r2, pc
	sub	sp, sp, #52
	mov	r4, r1
.LPIC3:
	add	r5, pc
	mov	r6, sp
	add	r5, r5, #256
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stm	r6, {r0, r1, r2}
	mov	r0, r7
	cmp	r7, #0
	beq	.L12
	cmp	r4, #0
	beq	.L19
	subs	r0, r7, #4
	mov	r1, r4
	mov	r2, r0
	adds	r4, r4, #16
.L14:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	adds	r1, r1, #4
	ldrb	r5, [r1, #-4]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r5, lsl #24
	ldrb	r5, [r1, #-1]	@ zero_extendqisi2
	orrs	r3, r3, r5
	ldrb	r5, [r1, #-2]	@ zero_extendqisi2
	cmp	r4, r1
	orr	r3, r3, r5, lsl #8
	str	r3, [r2, #4]!
	bne	.L14
	ldr	r4, .L22+12
	movs	r1, #4
.LPIC4:
	add	r4, pc
.L16:
	ldr	r3, [r0, #16]
	lsls	r2, r1, #30
	bne	.L15
	ubfx	r2, r3, #16, #8
	ldrb	r5, [r4, r2]	@ zero_extendqisi2
	lsrs	r2, r3, #24
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	orr	r2, r2, r5, lsl #24
	ubfx	r5, r3, #8, #8
	uxtb	r3, r3
	ldrb	r5, [r4, r5]	@ zero_extendqisi2
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	orr	r2, r2, r5, lsl #16
	orr	r2, r2, r3, lsl #8
	bic	r3, r1, #3
	adds	r3, r3, #48
	add	r3, sp, r3
	ldr	r3, [r3, #-48]
	eors	r3, r3, r2
.L15:
	ldr	r2, [r0, #4]!
	adds	r1, r1, #1
	cmp	r1, #44
	eor	r3, r3, r2
	str	r3, [r0, #16]
	bne	.L16
	movs	r0, #1
.L12:
	ldr	r2, .L22+16
	ldr	r3, .L22+4
.LPIC8:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L17
	bl	__stack_chk_fail(PLT)
.L19:
	mov	r0, r4
	b	.L12
.L17:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L23:
	.align	2
.L22:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC3+4)
	.word	.LANCHOR0-(.LPIC4+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	1
	.global	tc_aes_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r2
	ldr	r2, .L32
	ldr	r3, .L32+4
	sub	sp, sp, #40
.LPIC11:
	add	r2, pc
	mov	r6, r0
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	cmp	r0, #0
	beq	.L24
	cmp	r1, #0
	beq	.L29
	cmp	r5, #0
	beq	.L30
	movs	r3, #16
	add	r4, sp, #4
	mov	r2, r1
	mov	r0, r4
	mov	r1, r3
	add	r7, sp, #20
	bl	_copy(PLT)
	mov	r1, r5
	add	r8, r1, #160
	adds	r5, r5, #16
	add	r10, sp, #8
	add	r9, sp, #24
	mov	r0, r4
	bl	add_round_key(PLT)
.L26:
	mov	r0, r4
	bl	sub_bytes(PLT)
	mov	r0, r4
	bl	shift_rows(PLT)
	mov	r1, r4
	mov	r0, r7
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
	mov	r1, r3
	mov	r2, r7
	mov	r0, r4
	bl	_copy(PLT)
	mov	r1, r5
	mov	r0, r4
	adds	r5, r5, #16
	bl	add_round_key(PLT)
	cmp	r5, r8
	bne	.L26
	bl	sub_bytes(PLT)
	mov	r0, r4
	bl	shift_rows(PLT)
	mov	r1, r5
	mov	r0, r4
	bl	add_round_key(PLT)
	movs	r3, #16
	mov	r1, r3
	mov	r2, r4
	mov	r0, r6
	bl	_copy(PLT)
	mov	r0, r4
	movs	r2, #16
	movs	r1, #0
	bl	_set(PLT)
	movs	r0, #1
.L24:
	ldr	r2, .L32+8
	ldr	r3, .L32+4
.LPIC10:
	add	r2, pc
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L27
	bl	__stack_chk_fail(PLT)
.L29:
	mov	r0, r1
	b	.L24
.L30:
	mov	r0, r5
	b	.L24
.L27:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L33:
	.align	2
.L32:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372"
	.ascii	"YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367"
	.ascii	"\3144\245\345\361q\3301\025\004\307#\303\030\226\005"
	.ascii	"\232\007\022\200\342\353'\262u\011\203,\032\033nZ\240"
	.ascii	"R;\326\263)\343/\204S\321\000\355 \374\261[j\313\276"
	.ascii	"9JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250"
	.ascii	"Q\243@\217\222\2358\365\274\266\332!\020\377\363\322"
	.ascii	"\315\014\023\354_\227D\027\304\247~=d]\031s`\201O\334"
	.ascii	"\"*\220\210F\356\270\024\336^\013\333\3402:\012I\006"
	.ascii	"$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251"
	.ascii	"lV\364\352ez\256\010\272x%.\034\246\264\306\350\335"
	.ascii	"t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301"
	.ascii	"\035\236\341\370\230\021i\331\216\224\233\036\207\351"
	.ascii	"\316U(\337\214\241\211\015\277\346BhA\231-\017\260T"
	.ascii	"\273\026"
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
	.section	.note.GNU-stack,"",%progbits
