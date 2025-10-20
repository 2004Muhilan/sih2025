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
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.section	.rodata
	.align	2
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
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	rotword, %function
rotword:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ror	r3, r3, #24
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	rotword, .-rotword
	.section	.rodata
	.align	2
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
	.align	1
	.global	tc_aes128_set_encrypt_key
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L14
.LPIC5:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	mov	r3, #0
	ldr	r3, .L14+8
.LPIC0:
	add	r3, pc
	add	r4, r7, #16
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L4
	movs	r3, #0
	b	.L12
.L4:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L6
	movs	r3, #0
	b	.L12
.L6:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L7
.L8:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	adds	r3, r3, #1
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	adds	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #8]
	lsls	r2, r2, #2
	adds	r2, r2, #3
	ldr	r1, [r7]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L7:
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bls	.L8
	b	.L9
.L11:
	ldr	r3, [r7, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L10
	ldr	r0, [r7, #12]
	bl	rotword(PLT)
	mov	r3, r0
	lsrs	r3, r3, #24
	uxtb	r3, r3
	ldr	r2, .L14+12
.LPIC1:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsls	r4, r3, #24
	ldr	r0, [r7, #12]
	bl	rotword(PLT)
	mov	r3, r0
	lsrs	r3, r3, #16
	uxtb	r3, r3
	ldr	r2, .L14+16
.LPIC2:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r4, r4, r3
	ldr	r0, [r7, #12]
	bl	rotword(PLT)
	mov	r3, r0
	lsrs	r3, r3, #8
	uxtb	r3, r3
	ldr	r2, .L14+20
.LPIC3:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r4, r4, r3
	ldr	r0, [r7, #12]
	bl	rotword(PLT)
	mov	r3, r0
	uxtb	r3, r3
	ldr	r2, .L14+24
.LPIC4:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	orrs	r3, r3, r4
	mov	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #2
	lsls	r3, r3, #2
	adds	r3, r3, #64
	add	r3, r3, r7
	ldr	r3, [r3, #-48]
	eors	r3, r3, r2
	str	r3, [r7, #12]
.L10:
	ldr	r3, [r7, #8]
	subs	r2, r3, #4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	eor	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L9:
	ldr	r3, [r7, #8]
	cmp	r3, #43
	bls	.L11
	movs	r3, #1
.L12:
	ldr	r1, .L14+28
.LPIC6:
	add	r1, pc
	ldr	r2, .L14+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #60]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L13
	bl	__stack_chk_fail(PLT)
.L13:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	sbox-(.LPIC1+4)
	.word	sbox-(.LPIC2+4)
	.word	sbox-(.LPIC3+4)
	.word	sbox-(.LPIC4+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
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
	.type	sub_bytes, %function
sub_bytes:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L18
.L19:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, .L20
.LPIC7:
	add	r2, pc
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L18:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	bls	.L19
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	sbox-(.LPIC7+4)
	.size	sub_bytes, .-sub_bytes
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mult_row_column, %function
mult_row_column:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
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
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
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
	uxtb	r1, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	eors	r3, r3, r4
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r2, r3
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
	mov	r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_double_byte(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	eors	r2, r2, r4
	uxtb	r2, r2
	strb	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	mult_row_column, .-mult_row_column
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mix_columns, %function
mix_columns:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L25
.LPIC8:
	add	r2, pc
	ldr	r3, .L25+4
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
	ldr	r2, .L25+8
.LPIC9:
	add	r2, pc
	ldr	r3, .L25+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L24
	bl	__stack_chk_fail(PLT)
.L24:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L26:
	.align	2
.L25:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.size	mix_columns, .-mix_columns
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	shift_rows, %function
shift_rows:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L29
.LPIC10:
	add	r2, pc
	ldr	r3, .L29+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	mov	r3, #0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	strb	r3, [r7, #13]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	strb	r3, [r7, #17]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	strb	r3, [r7, #18]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	strb	r3, [r7, #19]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strb	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	strb	r3, [r7, #21]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	strb	r3, [r7, #22]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	strb	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	strb	r3, [r7, #25]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	strb	r3, [r7, #26]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	strb	r3, [r7, #27]
	add	r2, r7, #12
	movs	r3, #16
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	_copy(PLT)
	nop
	ldr	r2, .L29+8
.LPIC11:
	add	r2, pc
	ldr	r3, .L29+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L28
	bl	__stack_chk_fail(PLT)
.L28:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.size	shift_rows, .-shift_rows
	.align	1
	.global	tc_aes_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, .L40
.LPIC12:
	add	r2, pc
	ldr	r3, .L40+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	mov	r3, #0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L32
	movs	r3, #0
	b	.L38
.L32:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L34
	movs	r3, #0
	b	.L38
.L34:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L35
	movs	r3, #0
	b	.L38
.L35:
	add	r0, r7, #20
	movs	r3, #16
	ldr	r2, [r7, #8]
	movs	r1, #16
	bl	_copy(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	add_round_key(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L36
.L37:
	add	r3, r7, #20
	mov	r0, r3
	bl	sub_bytes(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	shift_rows(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	mix_columns(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	add	r2, r2, r3
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	add_round_key(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L36:
	ldr	r3, [r7, #16]
	cmp	r3, #8
	bls	.L37
	add	r3, r7, #20
	mov	r0, r3
	bl	sub_bytes(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	shift_rows(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	add	r2, r2, r3
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
.L38:
	ldr	r1, .L40+8
.LPIC13:
	add	r1, pc
	ldr	r2, .L40+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #36]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L39
	bl	__stack_chk_fail(PLT)
.L39:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
