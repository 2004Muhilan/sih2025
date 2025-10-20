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
	.file	"sha256_compress.c"
	.text
	.align	1
	.global	sha256_compress
	.syntax unified
	.thumb
	.thumb_func
	.type	sha256_compress, %function
sha256_compress:
	@ args = 0, pretend = 0, frame = 336
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #336
	add	r7, sp, #0
	add	r3, r7, #336
	sub	r3, r3, #332
	str	r0, [r3]
	add	r3, r7, #336
	sub	r3, r3, #336
	str	r1, [r3]
	ldr	r2, .L9
.LPIC0:
	add	r2, pc
	ldr	r3, .L9+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #332]
	mov	r3, #0
	add	r3, r7, #336
	sub	r3, r3, #328
	movs	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	add	r3, r7, #336
	sub	r3, r3, #328
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #336
	sub	r2, r2, #336
	ldr	r2, [r2]
	add	r3, r3, r2
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #260
	add	r2, r7, #336
	sub	r2, r2, #328
	ldr	r2, [r2]
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #336
	sub	r3, r3, #328
	add	r2, r7, #336
	sub	r2, r2, #328
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L2:
	add	r3, r7, #336
	sub	r3, r3, #328
	ldr	r3, [r3]
	cmp	r3, #15
	ble	.L3
	add	r3, r7, #336
	sub	r3, r3, #324
	movs	r2, #16
	str	r2, [r3]
	b	.L4
.L5:
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	sub	r2, r3, #15
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r2, lsl #2]
	ror	r2, r3, #7
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	sub	r1, r3, #15
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r1, lsl #2]
	ror	r3, r3, #18
	eor	r1, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	sub	r2, r3, #15
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r2, lsl #2]
	lsrs	r2, r3, #3
	add	r3, r7, #336
	sub	r3, r3, #268
	eors	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	subs	r2, r3, #2
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r2, lsl #2]
	ror	r2, r3, #17
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	subs	r1, r3, #2
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r1, lsl #2]
	ror	r3, r3, #19
	eor	r1, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	subs	r2, r3, #2
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r2, lsl #2]
	lsrs	r2, r3, #10
	add	r3, r7, #336
	sub	r3, r3, #264
	eors	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	sub	r2, r3, #16
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r2, [r3, r2, lsl #2]
	add	r3, r7, #336
	sub	r3, r3, #268
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	subs	r1, r3, #7
	add	r3, r7, #336
	sub	r3, r3, #260
	ldr	r3, [r3, r1, lsl #2]
	add	r2, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #264
	ldr	r3, [r3]
	adds	r1, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #260
	add	r2, r7, #336
	sub	r2, r2, #324
	ldr	r2, [r2]
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #336
	sub	r3, r3, #324
	add	r2, r7, #336
	sub	r2, r2, #324
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L4:
	add	r3, r7, #336
	sub	r3, r3, #324
	ldr	r3, [r3]
	cmp	r3, #63
	ble	.L5
	add	r3, r7, #336
	sub	r3, r3, #320
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #316
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #312
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #308
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #12]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #304
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #16]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #300
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #20]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #296
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #24]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #292
	add	r2, r7, #336
	sub	r2, r2, #332
	ldr	r2, [r2]
	ldr	r2, [r2, #28]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #288
	movs	r2, #0
	str	r2, [r3]
	b	.L6
.L7:
	add	r3, r7, #336
	sub	r3, r3, #304
	ldr	r3, [r3]
	ror	r2, r3, #6
	add	r3, r7, #336
	sub	r3, r3, #304
	ldr	r3, [r3]
	ror	r3, r3, #11
	eor	r1, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #304
	ldr	r3, [r3]
	ror	r2, r3, #25
	add	r3, r7, #336
	sub	r3, r3, #284
	eors	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r2, r3, #292
	add	r3, r7, #336
	sub	r3, r3, #284
	ldr	r2, [r2]
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #336
	sub	r1, r3, #304
	add	r3, r7, #336
	sub	r3, r3, #300
	ldr	r1, [r1]
	ldr	r3, [r3]
	ands	r1, r1, r3
	add	r3, r7, #336
	sub	r3, r3, #304
	ldr	r3, [r3]
	mvns	r0, r3
	add	r3, r7, #336
	sub	r3, r3, #296
	ldr	r3, [r3]
	ands	r3, r3, r0
	eors	r3, r3, r1
	add	r2, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #260
	add	r1, r7, #336
	sub	r1, r1, #288
	ldr	r1, [r1]
	ldr	r3, [r3, r1, lsl #2]
	adds	r1, r2, r3
	add	r3, r7, #336
	sub	r2, r3, #280
	movw	r3, #12184
	movt	r3, 17034
	add	r3, r3, r1
	str	r3, [r2]
	add	r3, r7, #336
	sub	r3, r3, #320
	ldr	r3, [r3]
	ror	r2, r3, #2
	add	r3, r7, #336
	sub	r3, r3, #320
	ldr	r3, [r3]
	ror	r3, r3, #13
	eor	r1, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #320
	ldr	r3, [r3]
	ror	r2, r3, #22
	add	r3, r7, #336
	sub	r3, r3, #276
	eors	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r2, r3, #316
	add	r3, r7, #336
	sub	r3, r3, #312
	ldr	r2, [r2]
	ldr	r3, [r3]
	eors	r2, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #320
	ldr	r3, [r3]
	ands	r2, r2, r3
	add	r3, r7, #336
	sub	r1, r3, #316
	add	r3, r7, #336
	sub	r3, r3, #312
	ldr	r1, [r1]
	ldr	r3, [r3]
	ands	r3, r3, r1
	eors	r2, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #272
	add	r1, r7, #336
	sub	r1, r1, #276
	ldr	r1, [r1]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #292
	add	r2, r7, #336
	sub	r2, r2, #296
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #296
	add	r2, r7, #336
	sub	r2, r2, #300
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #300
	add	r2, r7, #336
	sub	r2, r2, #304
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #304
	add	r2, r7, #336
	sub	r1, r2, #308
	add	r2, r7, #336
	sub	r2, r2, #280
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #308
	add	r2, r7, #336
	sub	r2, r2, #312
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #312
	add	r2, r7, #336
	sub	r2, r2, #316
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #316
	add	r2, r7, #336
	sub	r2, r2, #320
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #320
	add	r2, r7, #336
	sub	r1, r2, #280
	add	r2, r7, #336
	sub	r2, r2, #272
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #288
	add	r2, r7, #336
	sub	r2, r2, #288
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L6:
	add	r3, r7, #336
	sub	r3, r3, #288
	ldr	r3, [r3]
	cmp	r3, #63
	ble	.L7
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #320
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #4
	add	r2, r7, #336
	sub	r2, r2, #316
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #8
	add	r2, r7, #336
	sub	r2, r2, #312
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #12
	add	r2, r7, #336
	sub	r2, r2, #308
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #16
	add	r2, r7, #336
	sub	r2, r2, #304
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #20
	add	r2, r7, #336
	sub	r2, r2, #300
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #24
	add	r2, r7, #336
	sub	r2, r2, #296
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #28
	ldr	r1, [r3]
	add	r3, r7, #336
	sub	r3, r3, #332
	ldr	r3, [r3]
	adds	r3, r3, #28
	add	r2, r7, #336
	sub	r2, r2, #292
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	nop
	ldr	r2, .L9+8
.LPIC1:
	add	r2, pc
	ldr	r3, .L9+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #332]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L8
	bl	__stack_chk_fail(PLT)
.L8:
	add	r7, r7, #336
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
