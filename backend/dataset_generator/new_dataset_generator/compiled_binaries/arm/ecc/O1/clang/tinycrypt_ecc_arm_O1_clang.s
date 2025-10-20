	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    @ -- Begin function uECC_set_rng
	.p2align	2
	.type	uECC_set_rng,%function
	.code	32                              @ @uECC_set_rng
uECC_set_rng:
	.fnstart
@ %bb.0:
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc, r1
	str	r0, [r1]
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	g_rng_function-(.LPC0_0+8)
.Lfunc_end0:
	.size	uECC_set_rng, .Lfunc_end0-uECC_set_rng
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_get_rng                    @ -- Begin function uECC_get_rng
	.p2align	2
	.type	uECC_get_rng,%function
	.code	32                              @ @uECC_get_rng
uECC_get_rng:
	.fnstart
@ %bb.0:
	ldr	r0, .LCPI1_0
.LPC1_0:
	ldr	r0, [pc, r0]
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	g_rng_function-(.LPC1_0+8)
.Lfunc_end1:
	.size	uECC_get_rng, .Lfunc_end1-uECC_get_rng
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_curve_private_key_size     @ -- Begin function uECC_curve_private_key_size
	.p2align	2
	.type	uECC_curve_private_key_size,%function
	.code	32                              @ @uECC_curve_private_key_size
uECC_curve_private_key_size:
	.fnstart
@ %bb.0:
	ldrsh	r0, [r0, #2]
	add	r0, r0, #7
	add	r0, r0, r0, lsr #29
	asr	r0, r0, #3
	bx	lr
.Lfunc_end2:
	.size	uECC_curve_private_key_size, .Lfunc_end2-uECC_curve_private_key_size
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_curve_public_key_size      @ -- Begin function uECC_curve_public_key_size
	.p2align	2
	.type	uECC_curve_public_key_size,%function
	.code	32                              @ @uECC_curve_public_key_size
uECC_curve_public_key_size:
	.fnstart
@ %bb.0:
	ldrsb	r0, [r0, #1]
	lsl	r0, r0, #1
	bx	lr
.Lfunc_end3:
	.size	uECC_curve_public_key_size, .Lfunc_end3-uECC_curve_public_key_size
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_clear                  @ -- Begin function uECC_vli_clear
	.p2align	2
	.type	uECC_vli_clear,%function
	.code	32                              @ @uECC_vli_clear
uECC_vli_clear:
	.fnstart
@ %bb.0:
	cmp	r1, #1
	bxlt	lr
.LBB4_1:
	uxtb	r1, r1
	lsl	r2, r1, #2
	mov	r1, #0
	b	memset
.Lfunc_end4:
	.size	uECC_vli_clear, .Lfunc_end4-uECC_vli_clear
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_isZero                 @ -- Begin function uECC_vli_isZero
	.p2align	2
	.type	uECC_vli_isZero,%function
	.code	32                              @ @uECC_vli_isZero
uECC_vli_isZero:
	.fnstart
@ %bb.0:
	cmp	r1, #1
	movlt	r0, #1
	bxlt	lr
.LBB5_1:
	uxtb	r2, r1
	mov	r1, #0
.LBB5_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	orr	r1, r3, r1
	subs	r2, r2, #1
	bne	.LBB5_2
@ %bb.3:
	clz	r0, r1
	lsr	r0, r0, #5
	bx	lr
.Lfunc_end5:
	.size	uECC_vli_isZero, .Lfunc_end5-uECC_vli_isZero
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_testBit                @ -- Begin function uECC_vli_testBit
	.p2align	2
	.type	uECC_vli_testBit,%function
	.code	32                              @ @uECC_vli_testBit
uECC_vli_testBit:
	.fnstart
@ %bb.0:
	asr	r2, r1, #5
	ldr	r0, [r0, r2, lsl #2]
	and	r1, r1, #31
	mov	r2, #1
	and	r0, r0, r2, lsl r1
	bx	lr
.Lfunc_end6:
	.size	uECC_vli_testBit, .Lfunc_end6-uECC_vli_testBit
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_numBits                @ -- Begin function uECC_vli_numBits
	.p2align	2
	.type	uECC_vli_numBits,%function
	.code	32                              @ @uECC_vli_numBits
uECC_vli_numBits:
	.fnstart
@ %bb.0:
	sub	r2, r1, #1
	sxtb	r2, r2
	cmn	r2, #1
	mvnge	r2, #0
	add	r12, r2, #1
	uxtb	r3, r1
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
	mov	r1, r3
	sub	r3, r3, #1
	sxtb	r2, r3
	cmp	r2, #0
	bmi	.LBB7_3
@ %bb.2:                                @   in Loop: Header=BB7_1 Depth=1
	uxtb	r2, r2
	ldr	r2, [r0, r2, lsl #2]
	cmp	r2, #0
	beq	.LBB7_1
	b	.LBB7_4
.LBB7_3:
	mov	r1, r12
.LBB7_4:
	tst	r1, #255
	moveq	r0, #0
	sxtheq	r0, r0
	bxeq	lr
.LBB7_5:
	sxtb	r1, r1
	sub	r1, r1, #1
	ldr	r2, [r0, r1, lsl #2]
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB7_7
.LBB7_6:                                @ =>This Inner Loop Header: Depth=1
	add	r0, r0, #1
	lsrs	r2, r2, #1
	bne	.LBB7_6
.LBB7_7:
	add	r0, r0, r1, lsl #5
	sxth	r0, r0
	bx	lr
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_set                    @ -- Begin function uECC_vli_set
	.p2align	2
	.type	uECC_vli_set,%function
	.code	32                              @ @uECC_vli_set
uECC_vli_set:
	.fnstart
@ %bb.0:
	cmp	r2, #1
	bxlt	lr
.LBB8_1:
	uxtb	r2, r2
.LBB8_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, r2, #1
	bne	.LBB8_2
@ %bb.3:
	bx	lr
.Lfunc_end8:
	.size	uECC_vli_set, .Lfunc_end8-uECC_vli_set
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_cmp_unsafe             @ -- Begin function uECC_vli_cmp_unsafe
	.p2align	2
	.type	uECC_vli_cmp_unsafe,%function
	.code	32                              @ @uECC_vli_cmp_unsafe
uECC_vli_cmp_unsafe:
	.fnstart
@ %bb.0:
	uxtb	r2, r2
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB9_5
@ %bb.2:                                @   in Loop: Header=BB9_1 Depth=1
	uxtb	r3, r3
	ldr	r12, [r1, r3, lsl #2]
	ldr	r3, [r0, r3, lsl #2]
	cmp	r3, r12
	bhi	.LBB9_6
@ %bb.3:                                @   in Loop: Header=BB9_1 Depth=1
	bhs	.LBB9_1
@ %bb.4:
	mov	r0, #255
	sxtb	r0, r0
	bx	lr
.LBB9_5:
	mov	r0, #0
	sxtb	r0, r0
	bx	lr
.LBB9_6:
	mov	r0, #1
	sxtb	r0, r0
	bx	lr
.Lfunc_end9:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end9-uECC_vli_cmp_unsafe
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_equal                  @ -- Begin function uECC_vli_equal
	.p2align	2
	.type	uECC_vli_equal,%function
	.code	32                              @ @uECC_vli_equal
uECC_vli_equal:
	.fnstart
@ %bb.0:
	mov	r12, r0
	sub	r0, r2, #1
	sxtb	r0, r0
	cmp	r0, #0
	movmi	r0, #0
	bxmi	lr
.LBB10_1:
	.save	{r11, lr}
	push	{r11, lr}
	uxtb	r2, r0
	mov	r0, #0
.LBB10_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	lr, [r12, r2, lsl #2]
	ldr	r3, [r1, r2, lsl #2]
	eor	r3, r3, lr
	orr	r0, r3, r0
	sub	r3, r2, #1
	cmp	r2, #0
	mov	r2, r3
	bgt	.LBB10_2
@ %bb.3:
	cmp	r0, #0
	movwne	r0, #1
	pop	{r11, pc}
.Lfunc_end10:
	.size	uECC_vli_equal, .Lfunc_end10-uECC_vli_equal
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cond_set                        @ -- Begin function cond_set
	.p2align	2
	.type	cond_set,%function
	.code	32                              @ @cond_set
cond_set:
	.fnstart
@ %bb.0:
	mul	r0, r2, r0
	cmp	r2, #0
	orreq	r0, r0, r1
	bx	lr
.Lfunc_end11:
	.size	cond_set, .Lfunc_end11-cond_set
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_sub                    @ -- Begin function uECC_vli_sub
	.p2align	2
	.type	uECC_vli_sub,%function
	.code	32                              @ @uECC_vli_sub
uECC_vli_sub:
	.fnstart
@ %bb.0:
	cmp	r3, #1
	movlt	r0, #0
	bxlt	lr
.LBB12_1:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	uxtb	r12, r3
	mov	lr, #0
.LBB12_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r2], #4
	ldr	r4, [r1], #4
	add	r5, r3, lr
	cmp	r4, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, lr
	sub	r5, r4, r5
	str	r5, [r0], #4
	subs	r12, r12, #1
	mov	lr, r3
	bne	.LBB12_2
@ %bb.3:
	pop	{r4, r5, r11, lr}
	mov	r0, r3
	bx	lr
.Lfunc_end12:
	.size	uECC_vli_sub, .Lfunc_end12-uECC_vli_sub
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_cmp                    @ -- Begin function uECC_vli_cmp
	.p2align	2
	.type	uECC_vli_cmp,%function
	.code	32                              @ @uECC_vli_cmp
uECC_vli_cmp:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.pad	#32
	sub	sp, sp, #32
	cmp	r2, #1
	uxtb	r12, r2
	blt	.LBB13_7
@ %bb.1:
	mov	r5, #0
	mov	lr, sp
	mov	r4, r12
.LBB13_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r6, [r0], #4
	add	r7, r3, r5
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r5, r6, r7
	str	r5, [lr], #4
	subs	r4, r4, #1
	mov	r5, r3
	bne	.LBB13_2
@ %bb.3:
	cmp	r3, #0
	mvnne	r3, #1
	cmp	r2, #1
	blt	.LBB13_8
.LBB13_4:
	mov	r1, sp
	mov	r0, #0
.LBB13_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1], #4
	orr	r0, r2, r0
	subs	r12, r12, #1
	bne	.LBB13_5
@ %bb.6:
	clz	r0, r0
	lsr	r0, r0, #5
	b	.LBB13_9
.LBB13_7:
	mov	r3, #0
	cmp	r2, #1
	bge	.LBB13_4
.LBB13_8:
	mov	r0, #1
.LBB13_9:
	orr	r0, r0, r3
	eor	r0, r0, #1
	sxtb	r0, r0
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end13:
	.size	uECC_vli_cmp, .Lfunc_end13-uECC_vli_cmp
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_modAdd                 @ -- Begin function uECC_vli_modAdd
	.p2align	2
	.type	uECC_vli_modAdd,%function
	.code	32                              @ @uECC_vli_modAdd
uECC_vli_modAdd:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [sp, #24]
	cmp	r12, #1
	blt	.LBB14_5
@ %bb.1:
	uxtb	lr, r12
	mov	r5, #0
	mov	r4, r0
.LBB14_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r1], #4
	ldr	r8, [r2], #4
	add	r7, r6, r5
	add	r7, r7, r8
	cmp	r7, r6
	mov	r6, #0
	movwlo	r6, #1
	orreq	r6, r6, r5
	str	r7, [r4], #4
	subs	lr, lr, #1
	mov	r5, r6
	bne	.LBB14_2
@ %bb.3:
	cmp	r6, #0
	beq	.LBB14_5
@ %bb.4:
	cmp	r12, #1
	bge	.LBB14_12
	b	.LBB14_14
.LBB14_5:
	uxtb	r2, r12
	mov	r1, #0
.LBB14_6:                               @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r6, r2
	cmp	r6, #0
	bmi	.LBB14_9
@ %bb.7:                                @   in Loop: Header=BB14_6 Depth=1
	uxtb	r7, r6
	ldr	r6, [r0, r7, lsl #2]
	ldr	r7, [r3, r7, lsl #2]
	cmp	r7, r6
	bhi	.LBB14_10
@ %bb.8:                                @   in Loop: Header=BB14_6 Depth=1
	bhs	.LBB14_6
.LBB14_9:
	cmp	r12, #1
	bge	.LBB14_11
	b	.LBB14_14
.LBB14_10:
	mov	r1, #1
	cmp	r12, #1
	blt	.LBB14_14
.LBB14_11:
	cmp	r1, #0
	bne	.LBB14_14
.LBB14_12:
	uxtb	r1, r12
	mov	r5, #0
.LBB14_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r3], #4
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r1, r1, #1
	mov	r5, r2
	bne	.LBB14_13
.LBB14_14:
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end14:
	.size	uECC_vli_modAdd, .Lfunc_end14-uECC_vli_modAdd
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_modSub                 @ -- Begin function uECC_vli_modSub
	.p2align	2
	.type	uECC_vli_modSub,%function
	.code	32                              @ @uECC_vli_modSub
uECC_vli_modSub:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [sp, #24]
	cmp	r12, #1
	blt	.LBB15_4
@ %bb.1:
	uxtb	lr, r12
	mov	r5, #0
	mov	r4, r0
.LBB15_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2], #4
	ldr	r8, [r1], #4
	add	r7, r6, r5
	cmp	r8, r7
	mov	r6, #0
	movwlo	r6, #1
	cmp	r7, #0
	orreq	r6, r6, r5
	sub	r5, r8, r7
	str	r5, [r4], #4
	subs	lr, lr, #1
	mov	r5, r6
	bne	.LBB15_2
@ %bb.3:
	clz	r1, r6
	lsr	r1, r1, #5
	cmp	r12, #1
	bge	.LBB15_5
	b	.LBB15_8
.LBB15_4:
	mov	r1, #1
	cmp	r12, #1
	blt	.LBB15_8
.LBB15_5:
	cmp	r1, #0
	bne	.LBB15_8
@ %bb.6:
	uxtb	r1, r12
	mov	r4, #0
.LBB15_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r3], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r4
	str	r6, [r0], #4
	subs	r1, r1, #1
	mov	r4, r2
	bne	.LBB15_7
.LBB15_8:
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end15:
	.size	uECC_vli_modSub, .Lfunc_end15-uECC_vli_modSub
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_mmod                   @ -- Begin function uECC_vli_mmod
	.p2align	2
	.type	uECC_vli_mmod,%function
	.code	32                              @ @uECC_vli_mmod
uECC_vli_mmod:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#164
	sub	sp, sp, #164
	mov	r9, r3
	mov	r4, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #28]
	add	r0, sp, #32
	str	r0, [sp, #24]
	sub	r0, r3, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	sxtb	r0, r0
	cmn	r0, #1
	mvnge	r0, #0
	add	r1, r0, #1
	uxtb	r8, r3
	lsl	r5, r3, #1
	mov	r2, r8
.LBB16_1:                               @ =>This Inner Loop Header: Depth=1
	mov	r0, r2
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB16_7
@ %bb.2:                                @   in Loop: Header=BB16_1 Depth=1
	uxtb	r3, r3
	ldr	r3, [r4, r3, lsl #2]
	cmp	r3, #0
	beq	.LBB16_1
@ %bb.3:
	tst	r0, #255
	beq	.LBB16_8
.LBB16_4:
	sxtb	r0, r0
	sub	r0, r0, #1
	ldr	r2, [r4, r0, lsl #2]
	mov	r1, #0
	cmp	r2, #0
	beq	.LBB16_6
.LBB16_5:                               @ =>This Inner Loop Header: Depth=1
	add	r1, r1, #1
	lsrs	r2, r2, #1
	bne	.LBB16_5
.LBB16_6:
	add	r0, r1, r0, lsl #5
	b	.LBB16_9
.LBB16_7:
	mov	r0, r1
	tst	r0, #255
	bne	.LBB16_4
.LBB16_8:
	mov	r0, #0
.LBB16_9:
	rsb	r0, r0, r9, lsl #6
	sxth	r6, r0
	asr	r0, r6, #31
	add	r0, r6, r0, lsr #27
	bic	r1, r0, #31
	sub	r11, r6, r1
	asr	r7, r0, #5
	sbfx	r0, r0, #5, #8
	cmp	r0, #1
	blt	.LBB16_11
@ %bb.10:
	mov	r0, #1020
	and	r2, r0, r7, lsl #2
	add	r0, sp, #96
	mov	r1, #0
	bl	memset
.LBB16_11:
	cmp	r11, #1
	blt	.LBB16_15
@ %bb.12:
	cmp	r9, #0
	beq	.LBB16_17
@ %bb.13:
	sxtb	r0, r7
	add	r1, sp, #96
	add	r0, r1, r0, lsl #2
	rsb	r1, r11, #32
	mov	r3, #0
	mov	r2, r9
.LBB16_14:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r4], #4
	orr	r3, r3, r7, lsl r11
	str	r3, [r0], #4
	lsr	r3, r7, r1
	subs	r2, r2, #1
	bne	.LBB16_14
	b	.LBB16_17
.LBB16_15:
	cmp	r9, #1
	blt	.LBB16_17
@ %bb.16:
	sxtb	r0, r7
	add	r1, sp, #96
	add	r0, r1, r0, lsl #2
	lsl	r2, r8, #2
	mov	r1, r4
	bl	memcpy
.LBB16_17:
	cmp	r6, #0
	str	r8, [sp, #4]                    @ 4-byte Spill
	bmi	.LBB16_30
@ %bb.18:
	add	r1, sp, #96
	add	r0, r1, r8, lsl #2
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r3, r1, r9, lsl #2
	add	r0, r3, r8, lsl #2
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #1
	b	.LBB16_21
.LBB16_19:                              @   in Loop: Header=BB16_21 Depth=1
	ldr	r2, [r1, r9, lsl #2]
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	ldr	r7, [r1, r4, lsl #2]
	orr	r2, r7, r2, lsl #31
	str	r2, [r1, r4, lsl #2]
.LBB16_20:                              @   in Loop: Header=BB16_21 Depth=1
	sub	r0, r0, r6
	clz	r0, r0
	lsr	r0, r0, #5
	sub	r6, r10, #1
	sxth	r2, r10
	cmp	r2, #0
	ble	.LBB16_31
.LBB16_21:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_23 Depth 2
                                        @     Child Loop BB16_26 Depth 2
                                        @     Child Loop BB16_29 Depth 2
	mov	r10, r6
	mov	r8, r9
	cmp	r9, #1
	mov	r6, #0
	blt	.LBB16_24
@ %bb.22:                               @   in Loop: Header=BB16_21 Depth=1
	add	r6, sp, #24
	ldr	r2, [r6, r0, lsl #2]
	eor	r7, r0, #1
	ldr	r12, [r6, r7, lsl #2]
	mov	r11, #0
	mov	lr, #0
	mov	r6, #0
.LBB16_23:                              @   Parent Loop BB16_21 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r1, r11, lsl #2]
	ldr	r9, [r2, r11, lsl #2]
	add	r7, r7, r6
	subs	r4, r9, r7
	str	r4, [r12, r11, lsl #2]
	mov	r4, #0
	movwlo	r4, #1
	cmp	r7, #0
	movne	r6, r4
	add	lr, lr, #1
	sxtb	r11, lr
	cmp	r5, r11
	bgt	.LBB16_23
.LBB16_24:                              @   in Loop: Header=BB16_21 Depth=1
	mov	r9, r8
	cmp	r8, #1
	blt	.LBB16_19
@ %bb.25:                               @   in Loop: Header=BB16_21 Depth=1
	mov	r7, #0
	ldr	r2, [sp, #16]                   @ 4-byte Reload
.LBB16_26:                              @   Parent Loop BB16_21 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r2, #-4]!
	orr	r7, r7, r4, lsr #1
	str	r7, [r2]
	lsl	r7, r4, #31
	cmp	r2, r1
	bhi	.LBB16_26
@ %bb.27:                               @   in Loop: Header=BB16_21 Depth=1
	ldr	r2, [r1, r9, lsl #2]
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	ldr	r7, [r1, r4, lsl #2]
	orr	r2, r7, r2, lsl #31
	str	r2, [r1, r4, lsl #2]
	cmp	r9, #1
	blt	.LBB16_20
@ %bb.28:                               @   in Loop: Header=BB16_21 Depth=1
	mov	r7, #0
	ldr	r2, [sp, #12]                   @ 4-byte Reload
.LBB16_29:                              @   Parent Loop BB16_21 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r2, #-4]!
	orr	r7, r7, r4, lsr #1
	str	r7, [r2]
	lsl	r7, r4, #31
	cmp	r2, r3
	bhi	.LBB16_29
	b	.LBB16_20
.LBB16_30:
	mov	r0, #1
.LBB16_31:
	cmp	r9, #1
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	blt	.LBB16_34
@ %bb.32:
	add	r1, sp, #24
	ldr	r0, [r1, r0, lsl #2]
.LBB16_33:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0], #4
	str	r1, [r2], #4
	subs	r3, r3, #1
	bne	.LBB16_33
.LBB16_34:
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end16:
	.size	uECC_vli_mmod, .Lfunc_end16-uECC_vli_mmod
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_modMult                @ -- Begin function uECC_vli_modMult
	.p2align	2
	.type	uECC_vli_modMult,%function
	.code	32                              @ @uECC_vli_modMult
uECC_vli_modMult:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.pad	#64
	sub	sp, sp, #64
	mov	r4, r3
	mov	r5, r0
	mov	r6, sp
	ldr	r7, [sp, #88]
	mov	r0, r6
	mov	r3, r7
	bl	uECC_vli_mult
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	mov	r3, r7
	bl	uECC_vli_mmod
	add	sp, sp, #64
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,%function
	.code	32                              @ @uECC_vli_mult
uECC_vli_mult:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #16]                   @ 4-byte Spill
	cmp	r3, #1
	str	r3, [sp, #8]                    @ 4-byte Spill
	uxtb	r0, r3
	str	r0, [sp, #20]                   @ 4-byte Spill
	str	r2, [sp]                        @ 4-byte Spill
	blt	.LBB18_5
@ %bb.1:
	mov	r9, #1
	mov	r8, #0
	mov	r10, r2
	mov	r4, #0
	mov	r7, #0
.LBB18_2:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB18_3 Depth 2
	mov	r6, #0
	mov	r11, #0
	mov	lr, r4
	mov	r2, r7
.LBB18_3:                               @   Parent Loop BB18_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r5, [r1, r6, lsl #2]
	ldr	r12, [r10, -r6, lsl #2]
	umull	r0, r3, r12, r5
	umlal	r2, lr, r12, r5
	adds	r0, r7, r0
	adcs	r0, r4, r3
	adc	r11, r11, #0
	add	r6, r6, #1
	cmp	r9, r6
	mov	r4, lr
	mov	r7, r2
	bne	.LBB18_3
@ %bb.4:                                @   in Loop: Header=BB18_2 Depth=1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r2, [r0, r8, lsl #2]
	add	r10, r10, #4
	add	r9, r9, #1
	add	r8, r8, #1
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r8, r0
	mov	r4, r11
	mov	r7, lr
	bne	.LBB18_2
	b	.LBB18_6
.LBB18_5:
	mov	lr, #0
	mov	r11, #0
.LBB18_6:
	mvn	r2, #0
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	add	r2, r2, r3, lsl #1
	mov	r0, r2
	str	r2, [sp, #4]                    @ 4-byte Spill
	cmp	r2, r3
	ble	.LBB18_13
@ %bb.7:
	mov	r12, #1
	mov	r10, r3
	mov	r6, r3
	b	.LBB18_10
.LBB18_8:                               @   in Loop: Header=BB18_10 Depth=1
	mov	r6, lr
	mov	lr, r11
.LBB18_9:                               @   in Loop: Header=BB18_10 Depth=1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r6, [r0, r10, lsl #2]
	add	r12, r12, #1
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	sxtb	r10, r6
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r10
	mov	r11, r4
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ble	.LBB18_13
.LBB18_10:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB18_12 Depth 2
	add	r0, r6, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	sub	r0, r0, r3
	sxtb	r0, r0
	mov	r4, #0
	cmp	r0, r3
	bge	.LBB18_8
@ %bb.11:                               @   in Loop: Header=BB18_10 Depth=1
	sxtb	r0, r6
	ldr	r2, [sp]                        @ 4-byte Reload
	add	r7, r2, r0, lsl #2
	sxtb	r8, r12
	mov	r2, lr
	mov	r6, lr
	mov	lr, r11
.LBB18_12:                              @   Parent Loop BB18_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r1, r8, lsl #2]
	ldr	r3, [r7, -r8, lsl #2]
	umull	r5, r9, r3, r0
	umlal	r6, lr, r3, r0
	adds	r0, r2, r5
	adcs	r0, r11, r9
	adc	r4, r4, #0
	add	r8, r8, #1
	uxtb	r0, r8
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	cmp	r0, r2
	mov	r11, lr
	mov	r2, r6
	bne	.LBB18_12
	b	.LBB18_9
.LBB18_13:
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	lr, [r0, r1, lsl #2]
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end18:
	.size	uECC_vli_mult, .Lfunc_end18-uECC_vli_mult
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_modMult_fast           @ -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,%function
	.code	32                              @ @uECC_vli_modMult_fast
uECC_vli_modMult_fast:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	.pad	#64
	sub	sp, sp, #64
	mov	r4, r3
	mov	r5, r0
	ldrsb	r3, [r3]
	mov	r6, sp
	mov	r0, r6
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	add	sp, sp, #64
	pop	{r4, r5, r6, pc}
.Lfunc_end19:
	.size	uECC_vli_modMult_fast, .Lfunc_end19-uECC_vli_modMult_fast
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_modInv                 @ -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,%function
	.code	32                              @ @uECC_vli_modInv
uECC_vli_modInv:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#164
	sub	sp, sp, #164
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r3, #1
	blt	.LBB20_108
@ %bb.1:
	mov	r11, r2
	uxtb	r10, r3
	mov	r0, #0
	mov	r2, #0
.LBB20_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1, r0, lsl #2]
	orr	r2, r7, r2
	add	r0, r0, #1
	cmp	r10, r0
	bne	.LBB20_2
@ %bb.3:
	cmp	r2, #0
	beq	.LBB20_6
@ %bb.4:
	cmp	r3, #1
	blt	.LBB20_8
@ %bb.5:
	lsl	r5, r10, #2
	add	r0, sp, #128
	mov	r2, r5
	mov	r4, r3
	bl	memcpy
	add	r0, sp, #96
	mov	r1, r11
	mov	r2, r5
	bl	memcpy
	add	r0, sp, #64
	mov	r1, #0
	mov	r2, r5
	bl	memset
	mov	r0, #1
	str	r0, [sp, #64]
	add	r0, sp, #32
	mov	r1, #0
	mov	r2, r5
	bl	memset
	mov	r3, r4
	b	.LBB20_9
.LBB20_6:
	cmp	r3, #1
	blt	.LBB20_108
@ %bb.7:
	lsl	r2, r10, #2
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r1, #0
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	memset
.LBB20_8:
	mov	r0, #1
	str	r0, [sp, #64]
.LBB20_9:
	add	r12, sp, #128
	add	r0, r12, r10, lsl #2
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	lr, sp, #96
	add	r0, lr, r10, lsl #2
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r9, sp, #64
	add	r0, r9, r10, lsl #2
	str	r0, [sp, #28]                   @ 4-byte Spill
	sub	r0, r0, #4
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r8, sp, #32
	add	r0, r8, r10, lsl #2
	str	r0, [sp, #16]                   @ 4-byte Spill
	sub	r0, r0, #4
	str	r0, [sp, #8]                    @ 4-byte Spill
	mov	r6, r10
	str	r11, [sp, #4]                   @ 4-byte Spill
	b	.LBB20_11
.LBB20_10:                              @   in Loop: Header=BB20_11 Depth=1
	ldr	r1, [r0]
	orr	r1, r1, #-2147483648
	str	r1, [r0]
	mov	r6, r10
.LBB20_11:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB20_65 Depth 2
                                        @     Child Loop BB20_68 Depth 2
                                        @     Child Loop BB20_70 Depth 2
                                        @     Child Loop BB20_75 Depth 2
                                        @     Child Loop BB20_78 Depth 2
                                        @     Child Loop BB20_94 Depth 2
                                        @     Child Loop BB20_104 Depth 2
                                        @     Child Loop BB20_82 Depth 2
                                        @     Child Loop BB20_40 Depth 2
                                        @     Child Loop BB20_43 Depth 2
                                        @     Child Loop BB20_45 Depth 2
                                        @     Child Loop BB20_50 Depth 2
                                        @     Child Loop BB20_53 Depth 2
                                        @     Child Loop BB20_90 Depth 2
                                        @     Child Loop BB20_101 Depth 2
                                        @     Child Loop BB20_57 Depth 2
                                        @     Child Loop BB20_27 Depth 2
                                        @     Child Loop BB20_61 Depth 2
                                        @     Child Loop BB20_98 Depth 2
                                        @     Child Loop BB20_31 Depth 2
                                        @     Child Loop BB20_18 Depth 2
                                        @     Child Loop BB20_35 Depth 2
                                        @     Child Loop BB20_86 Depth 2
                                        @     Child Loop BB20_22 Depth 2
	sub	r6, r6, #1
	sxtb	r4, r6
	cmp	r4, #0
	mov	r0, #0
	bmi	.LBB20_14
@ %bb.12:                               @   in Loop: Header=BB20_11 Depth=1
	uxtb	r0, r4
	ldr	r5, [lr, r0, lsl #2]
	ldr	r7, [r12, r0, lsl #2]
	mov	r0, #1
	cmp	r7, r5
	bhi	.LBB20_14
@ %bb.13:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #0
	bhs	.LBB20_11
.LBB20_14:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r4, #0
	bmi	.LBB20_106
@ %bb.15:                               @   in Loop: Header=BB20_11 Depth=1
	ldrb	r4, [sp, #128]
	tst	r4, #1
	bne	.LBB20_24
@ %bb.16:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_19
@ %bb.17:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
.LBB20_18:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r5, [r0, #-4]!
	orr	r4, r4, r5, lsr #1
	str	r4, [r0]
	lsl	r4, r5, #31
	cmp	r0, r12
	bhi	.LBB20_18
.LBB20_19:                              @   in Loop: Header=BB20_11 Depth=1
	ldrb	r0, [sp, #64]
	tst	r0, #1
	bne	.LBB20_33
@ %bb.20:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	mov	r6, r10
	blt	.LBB20_11
@ %bb.21:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
.LBB20_22:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, r9
	bhi	.LBB20_22
@ %bb.23:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r6, r10
	b	.LBB20_11
.LBB20_24:                              @   in Loop: Header=BB20_11 Depth=1
	ldrb	r1, [sp, #96]
	tst	r1, #1
	bne	.LBB20_37
@ %bb.25:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_28
@ %bb.26:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
.LBB20_27:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, lr
	bhi	.LBB20_27
.LBB20_28:                              @   in Loop: Header=BB20_11 Depth=1
	ldrb	r0, [sp, #32]
	tst	r0, #1
	bne	.LBB20_59
@ %bb.29:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	mov	r6, r10
	blt	.LBB20_11
@ %bb.30:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
.LBB20_31:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, r8
	bhi	.LBB20_31
@ %bb.32:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r6, r10
	b	.LBB20_11
.LBB20_33:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_84
@ %bb.34:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r5, #0
	add	r0, sp, #64
	mov	r6, r11
	mov	r7, r10
.LBB20_35:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r0]
	ldr	r2, [r6], #4
	add	r1, r4, r5
	add	r1, r1, r2
	cmp	r1, r4
	mov	r4, #0
	movwlo	r4, #1
	orreq	r4, r4, r5
	str	r1, [r0], #4
	subs	r7, r7, #1
	mov	r5, r4
	bne	.LBB20_35
@ %bb.36:                               @   in Loop: Header=BB20_11 Depth=1
	clz	r0, r4
	lsr	r0, r0, #5
	cmp	r3, #1
	bge	.LBB20_85
	b	.LBB20_87
.LBB20_37:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r0, #0
	beq	.LBB20_63
@ %bb.38:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_44
@ %bb.39:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #0
	mov	r4, #0
.LBB20_40:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [lr, r0, lsl #2]
	ldr	r2, [r12, r0, lsl #2]
	add	r1, r1, r4
	subs	r2, r2, r1
	str	r2, [r12, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r1, #0
	orreq	r2, r2, r4
	add	r0, r0, #1
	cmp	r10, r0
	mov	r4, r2
	bne	.LBB20_40
@ %bb.41:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_44
@ %bb.42:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
.LBB20_43:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, r12
	bhi	.LBB20_43
.LBB20_44:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r0, r10
.LBB20_45:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r0, r0, #1
	sxtb	r4, r0
	cmp	r4, #0
	bmi	.LBB20_51
@ %bb.46:                               @   in Loop: Header=BB20_45 Depth=2
	uxtb	r1, r4
	ldr	r2, [r8, r1, lsl #2]
	ldr	r1, [r9, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB20_51
@ %bb.47:                               @   in Loop: Header=BB20_45 Depth=2
	bhs	.LBB20_45
@ %bb.48:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_54
@ %bb.49:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	add	r0, sp, #64
	ldr	r6, [sp, #4]                    @ 4-byte Reload
	mov	r7, r10
.LBB20_50:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0]
	ldr	r2, [r6], #4
	add	r5, r1, r4
	add	r2, r5, r2
	cmp	r2, r1
	mov	r1, #0
	movwlo	r1, #1
	orreq	r1, r1, r4
	str	r2, [r0], #4
	subs	r7, r7, #1
	mov	r4, r1
	bne	.LBB20_50
.LBB20_51:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_54
@ %bb.52:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r7, #0
	add	r6, sp, #32
	add	r0, sp, #64
	mov	r11, r10
.LBB20_53:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6], #4
	ldr	r2, [r0]
	add	r1, r1, r7
	cmp	r2, r1
	mov	r4, #0
	movwlo	r4, #1
	cmp	r1, #0
	orreq	r4, r4, r7
	sub	r1, r2, r1
	str	r1, [r0], #4
	subs	r11, r11, #1
	mov	r7, r4
	bne	.LBB20_53
.LBB20_54:                              @   in Loop: Header=BB20_11 Depth=1
	ldrb	r0, [sp, #64]
	tst	r0, #1
	bne	.LBB20_88
@ %bb.55:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	mov	r6, r10
	ldr	r11, [sp, #4]                   @ 4-byte Reload
	blt	.LBB20_11
@ %bb.56:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
.LBB20_57:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, r9
	bhi	.LBB20_57
@ %bb.58:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r6, r10
	b	.LBB20_11
.LBB20_59:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_96
@ %bb.60:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	add	r0, sp, #32
	mov	r6, r11
	mov	r7, r10
.LBB20_61:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0]
	ldr	r2, [r6], #4
	add	r5, r1, r4
	add	r2, r5, r2
	cmp	r2, r1
	mov	r5, #0
	movwlo	r5, #1
	orreq	r5, r5, r4
	str	r2, [r0], #4
	subs	r7, r7, #1
	mov	r4, r5
	bne	.LBB20_61
@ %bb.62:                               @   in Loop: Header=BB20_11 Depth=1
	clz	r0, r5
	lsr	r0, r0, #5
	cmp	r3, #1
	bge	.LBB20_97
	b	.LBB20_105
.LBB20_63:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_69
@ %bb.64:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #0
	mov	r4, #0
.LBB20_65:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r12, r0, lsl #2]
	ldr	r2, [lr, r0, lsl #2]
	add	r1, r1, r4
	subs	r2, r2, r1
	str	r2, [lr, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r1, #0
	orreq	r2, r2, r4
	add	r0, r0, #1
	cmp	r10, r0
	mov	r4, r2
	bne	.LBB20_65
@ %bb.66:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_69
@ %bb.67:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
.LBB20_68:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, lr
	bhi	.LBB20_68
.LBB20_69:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r0, r10
.LBB20_70:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r0, r0, #1
	sxtb	r4, r0
	cmp	r4, #0
	bmi	.LBB20_76
@ %bb.71:                               @   in Loop: Header=BB20_70 Depth=2
	uxtb	r1, r4
	ldr	r2, [r9, r1, lsl #2]
	ldr	r1, [r8, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB20_76
@ %bb.72:                               @   in Loop: Header=BB20_70 Depth=2
	bhs	.LBB20_70
@ %bb.73:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_79
@ %bb.74:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	add	r0, sp, #32
	mov	r6, r11
	mov	r7, r10
.LBB20_75:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0]
	ldr	r2, [r6], #4
	add	r5, r1, r4
	add	r2, r5, r2
	cmp	r2, r1
	mov	r1, #0
	movwlo	r1, #1
	orreq	r1, r1, r4
	str	r2, [r0], #4
	subs	r7, r7, #1
	mov	r4, r1
	bne	.LBB20_75
.LBB20_76:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_79
@ %bb.77:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	add	r0, sp, #32
	mov	r6, r9
	mov	r7, r10
.LBB20_78:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6], #4
	ldr	r2, [r0]
	add	r1, r1, r4
	cmp	r2, r1
	mov	r5, #0
	movwlo	r5, #1
	cmp	r1, #0
	orreq	r5, r5, r4
	sub	r1, r2, r1
	str	r1, [r0], #4
	subs	r7, r7, #1
	mov	r4, r5
	bne	.LBB20_78
.LBB20_79:                              @   in Loop: Header=BB20_11 Depth=1
	ldrb	r0, [sp, #32]
	tst	r0, #1
	bne	.LBB20_92
@ %bb.80:                               @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	mov	r6, r10
	blt	.LBB20_11
@ %bb.81:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
.LBB20_82:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0, #-4]!
	orr	r2, r4, r1, lsr #1
	str	r2, [r0]
	lsl	r4, r1, #31
	cmp	r0, r8
	bhi	.LBB20_82
@ %bb.83:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r6, r10
	b	.LBB20_11
.LBB20_84:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #1
	cmp	r3, #1
	blt	.LBB20_87
.LBB20_85:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r5, #0
	ldr	r4, [sp, #28]                   @ 4-byte Reload
.LBB20_86:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r4, #-4]!
	orr	r2, r5, r1, lsr #1
	str	r2, [r4]
	lsl	r5, r1, #31
	cmp	r4, r9
	bhi	.LBB20_86
.LBB20_87:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r0, #0
	mov	r6, r10
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	bne	.LBB20_11
	b	.LBB20_10
.LBB20_88:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_99
@ %bb.89:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	add	r0, sp, #64
	ldr	r11, [sp, #4]                   @ 4-byte Reload
	mov	r6, r11
	mov	r7, r10
.LBB20_90:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0]
	ldr	r2, [r6], #4
	add	r5, r1, r4
	add	r2, r5, r2
	cmp	r2, r1
	mov	r5, #0
	movwlo	r5, #1
	orreq	r5, r5, r4
	str	r2, [r0], #4
	subs	r7, r7, #1
	mov	r4, r5
	bne	.LBB20_90
@ %bb.91:                               @   in Loop: Header=BB20_11 Depth=1
	clz	r0, r5
	lsr	r0, r0, #5
	cmp	r3, #1
	bge	.LBB20_100
	b	.LBB20_87
.LBB20_92:                              @   in Loop: Header=BB20_11 Depth=1
	cmp	r3, #1
	blt	.LBB20_102
@ %bb.93:                               @   in Loop: Header=BB20_11 Depth=1
	mov	r4, #0
	mov	r0, r8
	mov	r6, r11
	mov	r7, r10
.LBB20_94:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r0]
	ldr	r2, [r6], #4
	add	r5, r1, r4
	add	r2, r5, r2
	cmp	r2, r1
	mov	r5, #0
	movwlo	r5, #1
	orreq	r5, r5, r4
	str	r2, [r0], #4
	subs	r7, r7, #1
	mov	r4, r5
	bne	.LBB20_94
@ %bb.95:                               @   in Loop: Header=BB20_11 Depth=1
	clz	r0, r5
	lsr	r0, r0, #5
	cmp	r3, #1
	bge	.LBB20_103
	b	.LBB20_105
.LBB20_96:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #1
	cmp	r3, #1
	blt	.LBB20_105
.LBB20_97:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r5, #0
	ldr	r4, [sp, #16]                   @ 4-byte Reload
.LBB20_98:                              @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r4, #-4]!
	orr	r2, r5, r1, lsr #1
	str	r2, [r4]
	lsl	r5, r1, #31
	cmp	r4, r8
	bhi	.LBB20_98
	b	.LBB20_105
.LBB20_99:                              @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #1
	ldr	r11, [sp, #4]                   @ 4-byte Reload
	cmp	r3, #1
	blt	.LBB20_87
.LBB20_100:                             @   in Loop: Header=BB20_11 Depth=1
	mov	r5, #0
	ldr	r4, [sp, #28]                   @ 4-byte Reload
.LBB20_101:                             @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r4, #-4]!
	orr	r2, r5, r1, lsr #1
	str	r2, [r4]
	lsl	r5, r1, #31
	cmp	r4, r9
	bhi	.LBB20_101
	b	.LBB20_87
.LBB20_102:                             @   in Loop: Header=BB20_11 Depth=1
	mov	r0, #1
	cmp	r3, #1
	blt	.LBB20_105
.LBB20_103:                             @   in Loop: Header=BB20_11 Depth=1
	mov	r5, #0
	ldr	r4, [sp, #16]                   @ 4-byte Reload
.LBB20_104:                             @   Parent Loop BB20_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r4, #-4]!
	orr	r2, r5, r1, lsr #1
	str	r2, [r4]
	lsl	r5, r1, #31
	cmp	r4, r8
	bhi	.LBB20_104
.LBB20_105:                             @   in Loop: Header=BB20_11 Depth=1
	cmp	r0, #0
	mov	r6, r10
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	bne	.LBB20_11
	b	.LBB20_10
.LBB20_106:
	cmp	r3, #1
	blt	.LBB20_108
@ %bb.107:
	lsl	r2, r10, #2
	add	r1, sp, #64
	ldr	r0, [sp]                        @ 4-byte Reload
	bl	memcpy
.LBB20_108:
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	double_jacobian_default         @ -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,%function
	.code	32                              @ @double_jacobian_default
double_jacobian_default:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#156
	sub	sp, sp, #156
	mov	r6, r3
	mov	r5, r2
	mov	r4, r1
	mov	r8, r0
	ldrb	r7, [r3]
	sxtb	r0, r7
	str	r0, [sp, #20]                   @ 4-byte Spill
	cmp	r0, #1
	blt	.LBB21_5
@ %bb.1:
	mov	r0, #0
	mov	r1, r5
	mov	r2, r7
.LBB21_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	orr	r0, r3, r0
	subs	r2, r2, #1
	bne	.LBB21_2
@ %bb.3:
	clz	r0, r0
	lsr	r0, r0, #5
	cmp	r0, #0
	beq	.LBB21_6
.LBB21_4:
	add	sp, sp, #156
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB21_5:
	mov	r0, #1
	cmp	r0, #0
	bne	.LBB21_4
.LBB21_6:
	add	r9, sp, #92
	mov	r0, r9
	mov	r1, r4
	mov	r2, r4
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	str	r7, [sp, #12]                   @ 4-byte Spill
	str	r5, [sp, #16]                   @ 4-byte Spill
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	add	r10, sp, #56
	mov	r0, r10
	mov	r1, r9
	blx	r2
	ldrsb	r3, [r6]
	add	r5, sp, #92
	mov	r0, r5
	mov	r1, r8
	mov	r2, r10
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	add	r11, sp, #24
	mov	r0, r11
	mov	r1, r5
	blx	r2
	ldrsb	r3, [r6]
	add	r5, sp, #92
	mov	r0, r5
	mov	r1, r10
	mov	r2, r10
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r10
	mov	r1, r5
	blx	r2
	ldrsb	r3, [r6]
	add	r5, sp, #92
	mov	r0, r5
	mov	r1, r4
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	str	r4, [sp, #4]                    @ 4-byte Spill
	mov	r0, r4
	mov	r1, r5
	blx	r2
	ldrsb	r3, [r6]
	add	r5, sp, #92
	mov	r0, r5
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, r5
	blx	r2
	ldr	lr, [sp, #16]                   @ 4-byte Reload
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	str	r6, [sp, #8]                    @ 4-byte Spill
	add	r9, r6, #4
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_10
@ %bb.7:
	mov	r5, #0
	mov	r0, r8
	mov	r1, lr
	mov	r2, r12
.LBB21_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0]
	ldr	r4, [r1], #4
	add	r7, r3, r5
	add	r7, r7, r4
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_8
@ %bb.9:
	cmp	r3, #0
	bne	.LBB21_17
.LBB21_10:
	mov	r1, r12
	mov	r0, #0
.LBB21_11:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB21_15
@ %bb.12:                               @   in Loop: Header=BB21_11 Depth=1
	uxtb	r2, r2
	ldr	r3, [r8, r2, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB21_14
@ %bb.13:                               @   in Loop: Header=BB21_11 Depth=1
	bhs	.LBB21_11
	b	.LBB21_15
.LBB21_14:
	mov	r0, #1
.LBB21_15:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_19
@ %bb.16:
	cmp	r0, #0
	bne	.LBB21_19
.LBB21_17:
	mov	r4, #0
	mov	r0, r8
	mov	r1, r9
	mov	r2, r12
.LBB21_18:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r5, [r0]
	add	r7, r7, r4
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r4
	sub	r7, r5, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_18
.LBB21_19:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_23
@ %bb.20:
	mov	r2, #0
	mov	r0, lr
	mov	r1, r12
.LBB21_21:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0]
	add	r7, r2, r3, lsl #1
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r2
	str	r7, [r0], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB21_21
@ %bb.22:
	cmp	r3, #0
	bne	.LBB21_30
.LBB21_23:
	mov	r1, r12
	mov	r0, #0
.LBB21_24:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB21_28
@ %bb.25:                               @   in Loop: Header=BB21_24 Depth=1
	uxtb	r2, r2
	ldr	r3, [lr, r2, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB21_27
@ %bb.26:                               @   in Loop: Header=BB21_24 Depth=1
	bhs	.LBB21_24
	b	.LBB21_28
.LBB21_27:
	mov	r0, #1
.LBB21_28:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_32
@ %bb.29:
	cmp	r0, #0
	bne	.LBB21_32
.LBB21_30:
	mov	r4, #0
	mov	r0, lr
	mov	r1, r9
	mov	r2, r12
.LBB21_31:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r5, [r0]
	add	r7, r7, r4
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r4
	sub	r7, r5, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_31
.LBB21_32:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_36
@ %bb.33:
	mov	r5, #0
	mov	r0, r8
	mov	r1, lr
	mov	r2, r12
.LBB21_34:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1]
	ldr	r7, [r0], #4
	add	r4, r3, r5
	cmp	r7, r4
	mov	r3, #0
	movwlo	r3, #1
	cmp	r4, #0
	orreq	r3, r3, r5
	sub	r7, r7, r4
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_34
@ %bb.35:
	clz	r0, r3
	lsr	r0, r0, #5
	b	.LBB21_37
.LBB21_36:
	mov	r0, #1
.LBB21_37:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_41
@ %bb.38:
	cmp	r0, #0
	bne	.LBB21_41
@ %bb.39:
	mov	r6, #0
	mov	r0, lr
	mov	r1, r9
	mov	r2, r12
.LBB21_40:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r5, [r1], #4
	add	r4, r7, r6
	add	r5, r4, r5
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r6
	str	r5, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB21_40
.LBB21_41:
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	ldrsb	r3, [r4]
	add	r5, sp, #92
	mov	r0, r5
	mov	r1, r8
	mov	r2, lr
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r8
	mov	r1, r5
	blx	r2
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_45
@ %bb.42:
	mov	r5, #0
	mov	r0, r8
	mov	r1, r4
	mov	r2, r12
.LBB21_43:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	add	r7, r5, r3, lsl #1
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_43
@ %bb.44:
	cmp	r3, #0
	bne	.LBB21_52
.LBB21_45:
	mov	r1, r12
	mov	r0, #0
.LBB21_46:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB21_50
@ %bb.47:                               @   in Loop: Header=BB21_46 Depth=1
	uxtb	r2, r2
	ldr	r3, [r4, r2, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB21_49
@ %bb.48:                               @   in Loop: Header=BB21_46 Depth=1
	bhs	.LBB21_46
	b	.LBB21_50
.LBB21_49:
	mov	r0, #1
.LBB21_50:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_54
@ %bb.51:
	cmp	r0, #0
	bne	.LBB21_54
.LBB21_52:
	mov	r5, #0
	mov	r0, r4
	mov	r1, r9
	mov	r2, r12
.LBB21_53:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_53
.LBB21_54:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_58
@ %bb.55:
	mov	r5, #0
	mov	r0, r8
	mov	r1, r4
	mov	r2, r12
.LBB21_56:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0]
	ldr	r7, [r1], #4
	add	r6, r3, r5
	add	r7, r6, r7
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_56
@ %bb.57:
	cmp	r3, #0
	bne	.LBB21_65
.LBB21_58:
	mov	r1, r12
	mov	r0, #0
.LBB21_59:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB21_63
@ %bb.60:                               @   in Loop: Header=BB21_59 Depth=1
	uxtb	r2, r2
	ldr	r3, [r8, r2, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB21_62
@ %bb.61:                               @   in Loop: Header=BB21_59 Depth=1
	bhs	.LBB21_59
	b	.LBB21_63
.LBB21_62:
	mov	r0, #1
.LBB21_63:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_67
@ %bb.64:
	cmp	r0, #0
	bne	.LBB21_67
.LBB21_65:
	mov	r5, #0
	mov	r0, r8
	mov	r1, r9
	mov	r2, r12
.LBB21_66:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_66
.LBB21_67:
	ldrb	r0, [r8]
	tst	r0, #1
	bne	.LBB21_71
@ %bb.68:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_79
@ %bb.69:
	add	r0, r8, r12, lsl #2
	mov	r1, #0
.LBB21_70:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, #-4]!
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	cmp	r0, r8
	bhi	.LBB21_70
	b	.LBB21_79
.LBB21_71:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_74
@ %bb.72:
	mov	r5, #0
	mov	r1, r8
	mov	r2, r9
	mov	r3, r12
.LBB21_73:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r1]
	ldr	r7, [r2], #4
	add	r6, r0, r5
	add	r7, r6, r7
	cmp	r7, r0
	mov	r0, #0
	movwlo	r0, #1
	orreq	r0, r0, r5
	str	r7, [r1], #4
	subs	r3, r3, #1
	mov	r5, r0
	bne	.LBB21_73
	b	.LBB21_75
.LBB21_74:
	mov	r0, #0
.LBB21_75:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_78
@ %bb.76:
	add	r1, r8, r12, lsl #2
	mov	r2, #0
.LBB21_77:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, #-4]!
	orr	r2, r2, r3, lsr #1
	str	r2, [r1]
	lsl	r2, r3, #31
	cmp	r1, r8
	bhi	.LBB21_77
.LBB21_78:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	add	r1, r8, r1, lsl #2
	ldr	r2, [r1, #-4]
	orr	r0, r2, r0, lsl #31
	str	r0, [r1, #-4]
.LBB21_79:
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	ldrsb	r3, [r4]
	add	r5, sp, #92
	mov	r0, r5
	mov	r1, r8
	mov	r2, r8
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	mov	r0, r4
	mov	r1, r5
	blx	r2
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_83
@ %bb.80:
	mov	r2, #0
	mov	r0, r4
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	r1, r12
	mov	lr, r4
.LBB21_81:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r11], #4
	ldr	r7, [r0]
	add	r6, r3, r2
	cmp	r7, r6
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r0], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB21_81
@ %bb.82:
	clz	r0, r3
	lsr	r0, r0, #5
	b	.LBB21_84
.LBB21_83:
	mov	r0, #1
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	lr, r4
.LBB21_84:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_88
@ %bb.85:
	cmp	r0, #0
	bne	.LBB21_88
@ %bb.86:
	mov	r4, #0
	mov	r0, lr
	mov	r1, r9
	mov	r2, r12
.LBB21_87:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_87
.LBB21_88:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_92
@ %bb.89:
	mov	r6, #0
	add	r0, sp, #24
	mov	r1, lr
	mov	r2, r12
.LBB21_90:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB21_90
@ %bb.91:
	clz	r0, r3
	lsr	r0, r0, #5
	b	.LBB21_93
.LBB21_92:
	mov	r0, #1
.LBB21_93:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_97
@ %bb.94:
	cmp	r0, #0
	bne	.LBB21_97
@ %bb.95:
	mov	r4, #0
	mov	r0, lr
	mov	r1, r9
	mov	r2, r12
.LBB21_96:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_96
.LBB21_97:
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_101
@ %bb.98:
	mov	r6, #0
	add	r0, sp, #24
	mov	r1, lr
	mov	r2, r12
.LBB21_99:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB21_99
@ %bb.100:
	clz	r0, r3
	lsr	r0, r0, #5
	b	.LBB21_102
.LBB21_101:
	mov	r0, #1
.LBB21_102:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_106
@ %bb.103:
	cmp	r0, #0
	bne	.LBB21_106
@ %bb.104:
	mov	r4, #0
	add	r0, sp, #24
	mov	r1, r9
	mov	r2, r12
.LBB21_105:                             @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_105
.LBB21_106:
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	ldrsb	r3, [r4]
	add	r5, sp, #92
	add	r2, sp, #24
	mov	r0, r5
	mov	r1, r8
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r8
	mov	r1, r5
	blx	r2
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB21_110
@ %bb.107:
	mov	r2, #0
	mov	r5, r8
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	r1, r12
	ldr	r0, [sp, #4]                    @ 4-byte Reload
.LBB21_108:                             @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r10]
	ldr	r7, [r5], #4
	add	r6, r3, r2
	cmp	r7, r6
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r10], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB21_108
@ %bb.109:
	clz	r1, r3
	lsr	r1, r1, #5
	b	.LBB21_111
.LBB21_110:
	mov	r1, #1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r12, [sp, #12]                  @ 4-byte Reload
.LBB21_111:
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	cmp	r2, #1
	blt	.LBB21_115
@ %bb.112:
	cmp	r1, #0
	bne	.LBB21_115
@ %bb.113:
	mov	r2, #0
	add	r5, sp, #56
	mov	r1, r12
.LBB21_114:                             @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r5]
	ldr	r7, [r9], #4
	add	r6, r3, r2
	add	r7, r6, r7
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r2
	str	r7, [r5], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB21_114
.LBB21_115:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_4
@ %bb.116:
	mov	r3, r4
	mov	r1, r12
.LBB21_117:                             @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r3], #4
	str	r2, [r8], #4
	subs	r1, r1, #1
	bne	.LBB21_117
@ %bb.118:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_4
@ %bb.119:
	mov	r2, #0
.LBB21_120:                             @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0, r2, lsl #2]
	str	r1, [r4, r2, lsl #2]
	add	r2, r2, #1
	cmp	r12, r2
	bne	.LBB21_120
@ %bb.121:
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB21_4
@ %bb.122:
	lsl	r2, r12, #2
	add	r1, sp, #56
	bl	memcpy
	add	sp, sp, #156
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end21:
	.size	double_jacobian_default, .Lfunc_end21-double_jacobian_default
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	x_side_default                  @ -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,%function
	.code	32                              @ @x_side_default
x_side_default:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#76
	sub	sp, sp, #76
	mov	r11, r2
	mov	r9, r0
	ldrb	r8, [r2]
	sxtb	r4, r8
	add	r5, sp, #12
	mov	r0, r5
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r2, r1
	mov	r3, r4
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r9
	mov	r1, r5
	blx	r2
	cmp	r4, #1
	blt	.LBB22_4
@ %bb.1:
	ldr	r0, .LCPI22_0
.LPC22_0:
	add	r0, pc, r0
	mov	r5, #0
	mov	r1, r9
	mov	r2, r8
.LBB22_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r6, [r1]
	add	r7, r3, r5
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB22_2
@ %bb.3:
	clz	r0, r3
	lsr	r0, r0, #5
	b	.LBB22_5
.LBB22_4:
	mov	r0, #1
.LBB22_5:
	add	r10, r11, #4
	str	r4, [sp, #8]                    @ 4-byte Spill
	cmp	r4, #1
	blt	.LBB22_9
@ %bb.6:
	cmp	r0, #0
	bne	.LBB22_9
@ %bb.7:
	mov	r5, #0
	mov	r0, r9
	mov	r1, r10
	mov	r2, r8
.LBB22_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r4, r7, r5
	add	r6, r4, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB22_8
.LBB22_9:
	ldrsb	r3, [r11]
	add	r4, sp, #12
	mov	r0, r4
	mov	r1, r9
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r9
	mov	r1, r4
	blx	r2
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	cmp	r4, #1
	blt	.LBB22_13
@ %bb.10:
	add	r0, r11, #132
	mov	r6, #0
	mov	r1, r9
	mov	r2, r8
.LBB22_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1]
	ldr	r7, [r0], #4
	add	r5, r3, r6
	add	r7, r5, r7
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r6
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB22_11
@ %bb.12:
	cmp	r3, #0
	bne	.LBB22_20
.LBB22_13:
	mov	r1, r8
	mov	r0, #0
.LBB22_14:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB22_17
@ %bb.15:                               @   in Loop: Header=BB22_14 Depth=1
	uxtb	r2, r2
	ldr	r3, [r9, r2, lsl #2]
	ldr	r2, [r10, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB22_18
@ %bb.16:                               @   in Loop: Header=BB22_14 Depth=1
	bhs	.LBB22_14
.LBB22_17:
	cmp	r4, #1
	bge	.LBB22_19
	b	.LBB22_22
.LBB22_18:
	mov	r0, #1
	cmp	r4, #1
	blt	.LBB22_22
.LBB22_19:
	cmp	r0, #0
	bne	.LBB22_22
.LBB22_20:
	mov	r0, #0
.LBB22_21:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r10], #4
	ldr	r2, [r9]
	add	r1, r1, r0
	cmp	r2, r1
	mov	r3, #0
	movwlo	r3, #1
	cmp	r1, #0
	orreq	r3, r3, r0
	sub	r0, r2, r1
	str	r0, [r9], #4
	subs	r8, r8, #1
	mov	r0, r3
	bne	.LBB22_21
.LBB22_22:
	add	sp, sp, #76
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.23:
.LCPI22_0:
	.long	.L__const.x_side_default._3-(.LPC22_0+8)
.Lfunc_end22:
	.size	x_side_default, .Lfunc_end22-x_side_default
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_secp256r1                  @ -- Begin function uECC_secp256r1
	.p2align	2
	.type	uECC_secp256r1,%function
	.code	32                              @ @uECC_secp256r1
uECC_secp256r1:
	.fnstart
@ %bb.0:
	ldr	r0, .LCPI23_0
.LPC23_0:
	add	r0, pc, r0
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI23_0:
	.long	curve_secp256r1-(.LPC23_0+8)
.Lfunc_end23:
	.size	uECC_secp256r1, .Lfunc_end23-uECC_secp256r1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	vli_mmod_fast_secp256r1         @ -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,%function
	.code	32                              @ @vli_mmod_fast_secp256r1
vli_mmod_fast_secp256r1:
	.fnstart
@ %bb.0:
	mov	r2, #0
.LBB24_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r2, lsl #2]
	str	r3, [r0, r2, lsl #2]
	add	r2, r2, #1
	cmp	r2, #8
	bne	.LBB24_1
@ %bb.2:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#52
	sub	sp, sp, #52
	ldr	r3, [r1, #44]
	ldr	r7, [r1, #48]
	ldr	r6, [r1, #52]
	ldr	r5, [r1, #56]
	ldr	r4, [r1, #60]
	mov	r2, #0
	str	r2, [sp, #24]
	str	r2, [sp, #20]
	add	r12, sp, #28
	stm	r12, {r2, r3, r7}
	str	r6, [sp, #40]
	str	r5, [sp, #44]
	str	r4, [sp, #48]
	add	lr, sp, #20
	mov	r3, #0
.LBB24_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [lr, r2, lsl #2]
	add	r6, r3, r7, lsl #1
	str	r6, [lr, r2, lsl #2]
	cmp	r6, r7
	mov	r12, #0
	movwlo	r12, #1
	orreq	r12, r12, r3
	add	r2, r2, #1
	cmp	r2, #8
	mov	r3, r12
	bne	.LBB24_3
@ %bb.4:
	mov	r2, #0
	mov	r7, #0
.LBB24_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r7
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r7
	add	r2, r2, #1
	cmp	r2, #8
	mov	r7, r3
	bne	.LBB24_5
@ %bb.6:
	ldr	r7, [r1, #48]
	add	r6, r1, #52
	ldm	r6, {r4, r5, r6}
	mov	r2, #0
	str	r2, [sp, #48]
	str	r7, [sp, #32]
	add	r7, sp, #36
	stm	r7, {r4, r5, r6}
	mov	r6, #0
.LBB24_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [lr, r2, lsl #2]
	add	r5, r6, r4, lsl #1
	str	r5, [lr, r2, lsl #2]
	cmp	r5, r4
	mov	r9, #0
	movwlo	r9, #1
	orreq	r9, r9, r6
	add	r2, r2, #1
	cmp	r2, #8
	mov	r6, r9
	bne	.LBB24_7
@ %bb.8:
	mov	r2, #0
	mov	r7, #0
.LBB24_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r7
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	mov	r10, #0
	movwlo	r10, #1
	orreq	r10, r10, r7
	add	r2, r2, #1
	cmp	r2, #8
	mov	r7, r10
	bne	.LBB24_9
@ %bb.10:
	str	r3, [sp, #12]                   @ 4-byte Spill
	add	r5, r1, #32
	ldm	r5, {r3, r4, r5}
	ldr	r6, [r1, #56]
	ldr	r11, [r1, #60]
	mov	r2, #0
	str	r2, [sp, #36]
	str	r2, [sp, #32]
	add	r7, sp, #20
	stm	r7, {r3, r4, r5}
	add	r3, sp, #40
	stm	r3, {r2, r6, r11}
	mov	r3, #0
.LBB24_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r3
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	mov	r11, #0
	movwlo	r11, #1
	orreq	r11, r11, r3
	add	r2, r2, #1
	cmp	r2, #8
	mov	r3, r11
	bne	.LBB24_11
@ %bb.12:
	ldr	r8, [r1, #32]
	add	r5, r1, #36
	ldm	r5, {r3, r4, r5}
	ldr	r6, [r1, #52]
	ldr	r2, [r1, #56]
	ldr	r7, [r1, #60]
	str	r3, [sp, #20]
	str	r4, [sp, #24]
	str	r5, [sp, #28]
	str	r6, [sp, #32]
	str	r2, [sp, #36]
	str	r6, [sp, #44]
	str	r7, [sp, #40]
	str	r8, [sp, #48]
	mov	r2, #0
	mov	r3, #0
.LBB24_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r3
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	mov	r8, #0
	movwlo	r8, #1
	orreq	r8, r8, r3
	add	r2, r2, #1
	cmp	r2, #8
	mov	r3, r8
	bne	.LBB24_13
@ %bb.14:
	str	r12, [sp, #16]                  @ 4-byte Spill
	ldr	r6, [r1, #32]
	add	r7, r1, #40
	ldm	r7, {r4, r5, r7}
	ldr	r3, [r1, #52]
	mov	r2, #0
	str	r2, [sp, #40]
	str	r2, [sp, #36]
	str	r2, [sp, #32]
	str	r5, [sp, #20]
	str	r7, [sp, #24]
	str	r3, [sp, #28]
	str	r6, [sp, #44]
	str	r4, [sp, #48]
	mov	r3, #0
.LBB24_15:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [lr, r2, lsl #2]
	ldr	r5, [r0, r2, lsl #2]
	add	r4, r4, r3
	subs	r5, r5, r4
	str	r5, [r0, r2, lsl #2]
	mov	r7, #0
	movwlo	r7, #1
	cmp	r4, #0
	orreq	r7, r7, r3
	add	r2, r2, #1
	cmp	r2, #8
	mov	r3, r7
	bne	.LBB24_15
@ %bb.16:
	ldr	r6, [r1, #36]
	ldr	r12, [r1, #44]
	ldr	r5, [r1, #48]
	ldr	r2, [r1, #52]
	ldr	r4, [r1, #56]
	ldr	r3, [r1, #60]
	str	r3, [sp, #8]                    @ 4-byte Spill
	mov	r3, #0
	str	r3, [sp, #40]
	str	r3, [sp, #36]
	str	r5, [sp, #20]
	str	r2, [sp, #24]
	str	r4, [sp, #28]
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	str	r2, [sp, #32]
	str	r6, [sp, #44]
	str	r12, [sp, #48]
	mov	r4, #0
.LBB24_17:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [lr, r3, lsl #2]
	ldr	r5, [r0, r3, lsl #2]
	add	r12, r2, r4
	subs	r2, r5, r12
	str	r2, [r0, r3, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r12, #0
	orreq	r2, r2, r4
	add	r3, r3, #1
	cmp	r3, #8
	mov	r4, r2
	bne	.LBB24_17
@ %bb.18:
	ldr	r6, [r1, #48]
	ldr	r5, [r1, #52]
	ldr	r3, [r1, #56]
	ldr	r12, [r1, #60]
	ldr	r4, [r1, #32]
	str	r4, [sp, #8]                    @ 4-byte Spill
	ldr	r4, [r1, #36]
	str	r4, [sp, #4]                    @ 4-byte Spill
	ldr	r4, [r1, #40]
	str	r4, [sp]                        @ 4-byte Spill
	mov	r4, #0
	str	r4, [sp, #44]
	str	r5, [sp, #20]
	str	r3, [sp, #24]
	str	r12, [sp, #28]
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	str	r3, [sp, #32]
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	str	r3, [sp, #36]
	ldr	r3, [sp]                        @ 4-byte Reload
	str	r3, [sp, #40]
	str	r6, [sp, #48]
	mov	r5, #0
	mov	r6, lr
.LBB24_19:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r6, r4, lsl #2]
	ldr	r12, [r0, r4, lsl #2]
	add	lr, r3, r5
	subs	r3, r12, lr
	str	r3, [r0, r4, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	lr, #0
	orreq	r3, r3, r5
	add	r4, r4, #1
	cmp	r4, #8
	mov	r5, r3
	bne	.LBB24_19
@ %bb.20:
	ldr	r5, [r1, #36]
	ldr	r4, [r1, #40]
	str	r4, [sp, #4]                    @ 4-byte Spill
	ldr	r4, [r1, #44]
	str	r4, [sp, #8]                    @ 4-byte Spill
	add	lr, r1, #52
	ldm	lr, {r4, r12, lr}
	mov	r1, #0
	str	r1, [sp, #28]
	str	r1, [sp, #44]
	str	r12, [sp, #20]
	str	lr, [sp, #24]
	str	r5, [sp, #32]
	ldr	r5, [sp, #4]                    @ 4-byte Reload
	str	r5, [sp, #36]
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	str	r5, [sp, #40]
	str	r4, [sp, #48]
	mov	r4, #0
	mov	lr, r6
.LBB24_21:                              @ =>This Inner Loop Header: Depth=1
	ldr	r5, [lr, r1, lsl #2]
	ldr	r12, [r0, r1, lsl #2]
	add	r6, r5, r4
	subs	r5, r12, r6
	str	r5, [r0, r1, lsl #2]
	mov	r5, #0
	movwlo	r5, #1
	cmp	r6, #0
	orreq	r5, r5, r4
	add	r1, r1, #1
	cmp	r1, #8
	mov	r4, r5
	bne	.LBB24_21
@ %bb.22:
	add	r1, r7, r2
	add	r1, r1, r3
	add	r1, r1, r5
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	add	r2, r3, r2
	add	r2, r2, r9
	add	r2, r2, r10
	add	r2, r2, r11
	add	r2, r2, r8
	subs	r1, r2, r1
	bmi	.LBB24_31
@ %bb.23:
	ldr	r2, .LCPI24_0
.LPC24_0:
	add	r2, pc, r2
	cmp	r1, #0
	beq	.LBB24_27
.LBB24_24:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB24_25 Depth 2
	mov	r3, #0
	mov	r6, #0
.LBB24_25:                              @   Parent Loop BB24_24 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r0, r3, lsl #2]
	add	r5, r2, r3, lsl #2
	ldr	r5, [r5, #4]
	add	r5, r5, r6
	subs	r7, r7, r5
	str	r7, [r0, r3, lsl #2]
	mov	r7, #0
	movwlo	r7, #1
	cmp	r5, #0
	orreq	r7, r7, r6
	add	r3, r3, #1
	cmp	r3, #8
	mov	r6, r7
	bne	.LBB24_25
@ %bb.26:                               @   in Loop: Header=BB24_24 Depth=1
	sub	r1, r1, r7
	cmp	r1, #0
	bne	.LBB24_24
.LBB24_27:
	mov	r3, #8
.LBB24_28:                              @ =>This Inner Loop Header: Depth=1
	sub	r3, r3, #1
	sxtb	r7, r3
	cmp	r7, #0
	bmi	.LBB24_24
@ %bb.29:                               @   in Loop: Header=BB24_28 Depth=1
	uxtb	r7, r7
	ldr	r6, [r0, r7, lsl #2]
	add	r7, r2, r7, lsl #2
	ldr	r7, [r7, #4]
	cmp	r7, r6
	bhi	.LBB24_35
@ %bb.30:                               @   in Loop: Header=BB24_28 Depth=1
	bhs	.LBB24_28
	b	.LBB24_24
.LBB24_31:
	ldr	r2, .LCPI24_1
.LPC24_1:
	add	r2, pc, r2
.LBB24_32:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB24_33 Depth 2
	mov	r3, #0
	mov	r6, #0
.LBB24_33:                              @   Parent Loop BB24_32 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r0, r3, lsl #2]
	add	r5, r2, r3, lsl #2
	ldr	r5, [r5, #4]
	add	r4, r7, r6
	add	r5, r4, r5
	str	r5, [r0, r3, lsl #2]
	cmp	r5, r7
	mov	r7, #0
	movwlo	r7, #1
	orreq	r7, r7, r6
	add	r3, r3, #1
	cmp	r3, #8
	mov	r6, r7
	bne	.LBB24_33
@ %bb.34:                               @   in Loop: Header=BB24_32 Depth=1
	adds	r1, r7, r1
	bmi	.LBB24_32
.LBB24_35:
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.36:
.LCPI24_0:
	.long	curve_secp256r1-(.LPC24_0+8)
.LCPI24_1:
	.long	curve_secp256r1-(.LPC24_1+8)
.Lfunc_end24:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end24-vli_mmod_fast_secp256r1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	EccPoint_isZero                 @ -- Begin function EccPoint_isZero
	.p2align	2
	.type	EccPoint_isZero,%function
	.code	32                              @ @EccPoint_isZero
EccPoint_isZero:
	.fnstart
@ %bb.0:
	ldrb	r1, [r1]
	lsl	r1, r1, #1
	sxtb	r1, r1
	cmp	r1, #1
	movlt	r0, #1
	bxlt	lr
.LBB25_1:
	uxtb	r2, r1
	mov	r1, #0
.LBB25_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	orr	r1, r3, r1
	subs	r2, r2, #1
	bne	.LBB25_2
@ %bb.3:
	clz	r0, r1
	lsr	r0, r0, #5
	bx	lr
.Lfunc_end25:
	.size	EccPoint_isZero, .Lfunc_end25-EccPoint_isZero
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	apply_z                         @ -- Begin function apply_z
	.p2align	2
	.type	apply_z,%function
	.code	32                              @ @apply_z
apply_z:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.pad	#96
	sub	sp, sp, #96
	mov	r5, r3
	mov	r7, r2
	mov	r8, r1
	mov	r4, r0
	ldrsb	r3, [r3]
	add	r9, sp, #32
	mov	r0, r9
	mov	r1, r2
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r6, sp
	mov	r0, r6
	mov	r1, r9
	blx	r2
	ldrsb	r3, [r5]
	add	r9, sp, #32
	mov	r0, r9
	mov	r1, r4
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r4
	mov	r1, r9
	blx	r2
	ldrsb	r3, [r5]
	add	r4, sp, #32
	mov	r0, r4
	mov	r1, r6
	mov	r2, r7
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldrsb	r3, [r5]
	add	r4, sp, #32
	mov	r0, r4
	mov	r1, r8
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r8
	mov	r1, r4
	blx	r2
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end26:
	.size	apply_z, .Lfunc_end26-apply_z
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	XYcZ_add                        @ -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,%function
	.code	32                              @ @XYcZ_add
XYcZ_add:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#116
	sub	sp, sp, #116
	mov	r11, r3
	mov	r9, r1
	mov	r10, r0
	ldr	r8, [sp, #152]
	ldrb	lr, [r8], #4
	sxtb	r0, lr
	str	r0, [sp, #12]                   @ 4-byte Spill
	cmp	r0, #1
	blt	.LBB27_4
@ %bb.1:
	mov	r7, #0
	add	r0, sp, #16
	mov	r1, r2
	mov	r5, r10
	mov	r3, lr
.LBB27_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5], #4
	ldr	r12, [r1], #4
	add	r4, r6, r7
	cmp	r12, r4
	mov	r6, #0
	movwlo	r6, #1
	cmp	r4, #0
	orreq	r6, r6, r7
	sub	r7, r12, r4
	str	r7, [r0], #4
	subs	r3, r3, #1
	mov	r7, r6
	bne	.LBB27_2
@ %bb.3:
	clz	r0, r6
	lsr	r0, r0, #5
	b	.LBB27_5
.LBB27_4:
	mov	r0, #1
.LBB27_5:
	str	r2, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB27_9
@ %bb.6:
	cmp	r0, #0
	bne	.LBB27_9
@ %bb.7:
	mov	r4, #0
	add	r0, sp, #16
	mov	r1, r8
	mov	r2, lr
.LBB27_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB27_8
.LBB27_9:
	str	lr, [sp, #8]                    @ 4-byte Spill
	add	r5, sp, #52
	add	r6, sp, #16
	mov	r0, r5
	mov	r1, r6
	mov	r2, r6
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	mov	r3, r7
	bl	uECC_vli_mult
	ldr	r4, [sp, #152]
	ldr	r2, [r4, #172]
	mov	r0, r6
	mov	r1, r5
	blx	r2
	ldrsb	r3, [r4]
	add	r5, sp, #52
	mov	r0, r5
	mov	r1, r10
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r10
	mov	r1, r5
	blx	r2
	ldrsb	r3, [r4]
	add	r0, sp, #52
	ldr	r5, [sp, #4]                    @ 4-byte Reload
	mov	r1, r5
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r5
	add	r1, sp, #52
	blx	r2
	mov	r4, r7
	cmp	r7, #1
	blt	.LBB27_13
@ %bb.10:
	mov	r6, #0
	mov	r0, r11
	mov	r1, r9
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	mov	r2, r12
.LBB27_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB27_11
@ %bb.12:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	r4, #1
	bge	.LBB27_14
	b	.LBB27_17
.LBB27_13:
	mov	r0, #1
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	cmp	r4, #1
	blt	.LBB27_17
.LBB27_14:
	cmp	r0, #0
	bne	.LBB27_17
@ %bb.15:
	mov	r4, #0
	mov	r0, r11
	mov	r1, r8
	mov	r2, r12
.LBB27_16:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB27_16
.LBB27_17:
	ldr	r5, [sp, #152]
	ldrsb	r3, [r5]
	add	r4, sp, #52
	mov	r0, r4
	mov	r1, r11
	mov	r2, r11
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	add	r6, sp, #16
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB27_21
@ %bb.18:
	mov	r4, #0
	mov	r0, r10
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	mov	r1, r12
	ldr	r2, [sp, #4]                    @ 4-byte Reload
.LBB27_19:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r6]
	add	r5, r3, r4
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r4
	sub	r7, r7, r5
	str	r7, [r6], #4
	subs	r1, r1, #1
	mov	r4, r3
	bne	.LBB27_19
@ %bb.20:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB27_22
	b	.LBB27_25
.LBB27_21:
	mov	r0, #1
	ldmib	sp, {r2, r12}                   @ 8-byte Folded Reload
	cmp	lr, #1
	blt	.LBB27_25
.LBB27_22:
	cmp	r0, #0
	bne	.LBB27_25
@ %bb.23:
	mov	r4, #0
	add	r0, sp, #16
	mov	r1, r8
	mov	r6, r12
.LBB27_24:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r3, [r1], #4
	add	r5, r7, r4
	add	r5, r5, r3
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r5, [r0], #4
	subs	r6, r6, #1
	mov	r4, r3
	bne	.LBB27_24
.LBB27_25:
	cmp	lr, #1
	blt	.LBB27_29
@ %bb.26:
	mov	r6, #0
	add	r0, sp, #16
	mov	r1, r2
	mov	r4, r12
.LBB27_27:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r4, r4, #1
	mov	r6, r3
	bne	.LBB27_27
@ %bb.28:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB27_30
	b	.LBB27_33
.LBB27_29:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB27_33
.LBB27_30:
	cmp	r0, #0
	bne	.LBB27_33
@ %bb.31:
	mov	r4, #0
	add	r0, sp, #16
	mov	r1, r8
	mov	r6, r12
.LBB27_32:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r3, [r1], #4
	add	r5, r7, r4
	add	r5, r5, r3
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r5, [r0], #4
	subs	r6, r6, #1
	mov	r4, r3
	bne	.LBB27_32
.LBB27_33:
	cmp	lr, #1
	blt	.LBB27_37
@ %bb.34:
	mov	r6, #0
	mov	r0, r2
	mov	r1, r10
	mov	r4, r12
.LBB27_35:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r4, r4, #1
	mov	r6, r3
	bne	.LBB27_35
@ %bb.36:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB27_38
	b	.LBB27_41
.LBB27_37:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB27_41
.LBB27_38:
	cmp	r0, #0
	bne	.LBB27_41
@ %bb.39:
	mov	r4, #0
	mov	r0, r2
	mov	r1, r8
	mov	r6, r12
.LBB27_40:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r3, [r1], #4
	add	r5, r7, r4
	add	r5, r5, r3
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r5, [r0], #4
	subs	r6, r6, #1
	mov	r4, r3
	bne	.LBB27_40
.LBB27_41:
	ldr	r4, [sp, #152]
	ldrsb	r3, [r4]
	add	r6, sp, #52
	mov	r0, r6
	mov	r1, r9
	mov	r5, r2
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r9
	mov	r1, r6
	blx	r2
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB27_45
@ %bb.42:
	mov	r6, #0
	add	r0, sp, #16
	mov	r1, r5
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	mov	r4, r12
	mov	r2, r5
.LBB27_43:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r10], #4
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r1], #4
	subs	r4, r4, #1
	mov	r6, r3
	bne	.LBB27_43
@ %bb.44:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB27_46
	b	.LBB27_49
.LBB27_45:
	mov	r0, #1
	mov	r2, r5
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB27_49
.LBB27_46:
	cmp	r0, #0
	bne	.LBB27_49
@ %bb.47:
	mov	r4, #0
	mov	r0, r2
	mov	r1, r8
	mov	r6, r12
.LBB27_48:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r3, [r1], #4
	add	r5, r7, r4
	add	r5, r5, r3
	cmp	r5, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r5, [r0], #4
	subs	r6, r6, #1
	mov	r4, r3
	bne	.LBB27_48
.LBB27_49:
	ldr	r5, [sp, #152]
	ldrsb	r3, [r5]
	add	r4, sp, #52
	mov	r0, r4
	mov	r1, r11
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r11
	mov	r1, r4
	blx	r2
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	cmp	r4, #1
	blt	.LBB27_53
@ %bb.50:
	mov	r2, #0
	mov	r0, r11
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	mov	r1, r5
.LBB27_51:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r9], #4
	ldr	r7, [r0]
	add	r6, r3, r2
	cmp	r7, r6
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r0], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB27_51
@ %bb.52:
	clz	r0, r3
	lsr	r1, r0, #5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r4, #1
	bge	.LBB27_54
	b	.LBB27_57
.LBB27_53:
	mov	r1, #1
	ldmib	sp, {r0, r5}                    @ 8-byte Folded Reload
	cmp	r4, #1
	blt	.LBB27_57
.LBB27_54:
	cmp	r1, #0
	bne	.LBB27_57
@ %bb.55:
	mov	r1, #0
	mov	r6, r5
.LBB27_56:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r11]
	ldr	r3, [r8], #4
	add	r7, r2, r1
	add	r3, r7, r3
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r1
	str	r3, [r11], #4
	subs	r6, r6, #1
	mov	r1, r2
	bne	.LBB27_56
.LBB27_57:
	cmp	r4, #1
	blt	.LBB27_59
@ %bb.58:
	lsl	r2, r5, #2
	add	r1, sp, #16
	bl	memcpy
.LBB27_59:
	add	sp, sp, #116
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end27:
	.size	XYcZ_add, .Lfunc_end27-XYcZ_add
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	EccPoint_mult                   @ -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,%function
	.code	32                              @ @EccPoint_mult
EccPoint_mult:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#300
	sub	sp, sp, #300
	mov	r11, r3
	mov	r9, r2
	mov	r5, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r10, [sp, #340]
	ldrb	r6, [r10]
	add	r0, sp, #104
	add	r7, r0, #32
	sxtb	r4, r6
	cmp	r4, #1
	blt	.LBB28_2
@ %bb.1:
	lsl	r2, r6, #2
	mov	r0, r7
	mov	r1, r5
	bl	memcpy
.LBB28_2:
	str	r5, [sp, #24]                   @ 4-byte Spill
	add	r5, r5, r4, lsl #2
	add	r0, sp, #40
	add	r8, r0, #32
	cmp	r4, #1
	blt	.LBB28_4
@ %bb.3:
	lsl	r2, r6, #2
	mov	r0, r8
	mov	r1, r5
	bl	memcpy
.LBB28_4:
	str	r5, [sp, #28]                   @ 4-byte Spill
	cmp	r11, #0
	beq	.LBB28_15
@ %bb.5:
	cmp	r4, #1
	blt	.LBB28_8
@ %bb.6:
	lsl	r2, r6, #2
	add	r0, sp, #168
	mov	r1, r11
	bl	memcpy
	cmp	r4, #1
	blt	.LBB28_8
.LBB28_7:
	lsl	r5, r6, #2
	add	r0, sp, #104
	mov	r1, r7
	mov	r2, r5
	bl	memmove
	add	r0, sp, #40
	mov	r1, r8
	mov	r2, r5
	bl	memmove
.LBB28_8:
	str	r6, [sp, #32]                   @ 4-byte Spill
	add	r6, sp, #236
	add	r5, sp, #168
	mov	r0, r6
	mov	r1, r5
	mov	r2, r5
	str	r4, [sp, #36]                   @ 4-byte Spill
	mov	r3, r4
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	add	r4, sp, #204
	mov	r0, r4
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r10]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r7
	mov	r2, r4
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	mov	r0, r7
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r10]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	mov	r0, r4
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r10]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r8
	mov	r2, r4
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	mov	r0, r8
	mov	r1, r6
	blx	r2
	ldr	r6, [r10, #164]
	str	r7, [sp, #8]                    @ 4-byte Spill
	mov	r0, r7
	mov	r1, r8
	mov	r2, r5
	mov	r3, r10
	blx	r6
	ldrsb	r3, [r10]
	add	r4, sp, #236
	mov	r0, r4
	mov	r1, r5
	mov	r2, r5
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	add	r6, sp, #204
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldrsb	r3, [r10]
	add	r8, sp, #236
	add	r4, sp, #104
	mov	r0, r8
	mov	r1, r4
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	mov	r0, r4
	mov	r1, r8
	blx	r2
	ldrsb	r3, [r10]
	add	r4, sp, #236
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldrsb	r3, [r10]
	add	r8, sp, #236
	add	r4, sp, #40
	mov	r0, r8
	mov	r1, r4
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r10, #172]
	mov	r0, r4
	mov	r1, r8
	blx	r2
	ldr	r0, [sp, #336]
	sub	r0, r0, #2
	sxth	r0, r0
	cmp	r0, #1
	mov	r8, r10
	mov	r7, r9
	blt	.LBB28_11
@ %bb.9:
	uxth	r11, r0
.LBB28_10:                              @ =>This Inner Loop Header: Depth=1
	lsr	r0, r11, #5
	ldr	r0, [r7, r0, lsl #2]
	str	r8, [sp]
	and	r1, r11, #31
	mov	r2, #1
	ands	r0, r0, r2, lsl r1
	clz	r1, r0
	movwne	r0, #1
	add	r2, sp, #104
	add	r6, r2, r0, lsl #5
	add	r3, sp, #40
	add	r4, r3, r0, lsl #5
	lsr	r0, r1, #5
	add	r9, r2, r0, lsl #5
	add	r10, r3, r0, lsl #5
	mov	r0, r6
	mov	r1, r4
	mov	r2, r9
	mov	r3, r10
	bl	XYcZ_addC
	str	r8, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r6
	mov	r3, r4
	bl	XYcZ_add
	subs	r11, r11, #1
	bgt	.LBB28_10
.LBB28_11:
	ldr	r0, [r7]
	mov	r9, r8
	str	r8, [sp]
	and	r0, r0, #1
	add	r1, sp, #104
	add	r10, r1, r0, lsl #5
	add	r3, sp, #40
	add	r11, r3, r0, lsl #5
	eor	r0, r0, #1
	add	r2, r1, r0, lsl #5
	add	r3, r3, r0, lsl #5
	mov	r0, r10
	mov	r1, r11
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r3, [sp, #16]                   @ 4-byte Spill
	bl	XYcZ_addC
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB28_18
@ %bb.12:
	mov	r1, #0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r7, [sp, #8]                    @ 4-byte Reload
.LBB28_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r7, #-32]
	ldr	r3, [r7], #4
	add	r6, r2, r1
	cmp	r3, r6
	mov	r2, #0
	movwlo	r2, #1
	cmp	r6, #0
	orreq	r2, r2, r1
	sub	r1, r3, r6
	str	r1, [r5], #4
	subs	r0, r0, #1
	mov	r1, r2
	bne	.LBB28_13
@ %bb.14:
	clz	r0, r2
	lsr	r0, r0, #5
	b	.LBB28_19
.LBB28_15:
	cmp	r4, #1
	blt	.LBB28_17
@ %bb.16:
	lsl	r2, r6, #2
	add	r0, sp, #168
	mov	r1, #0
	bl	memset
.LBB28_17:
	mov	r0, #1
	str	r0, [sp, #168]
	cmp	r4, #1
	bge	.LBB28_7
	b	.LBB28_8
.LBB28_18:
	mov	r0, #1
.LBB28_19:
	add	r8, r9, #4
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	cmp	r1, #1
	blt	.LBB28_23
@ %bb.20:
	cmp	r0, #0
	bne	.LBB28_23
@ %bb.21:
	mov	r7, #0
	add	r0, sp, #168
	mov	r1, r8
	ldr	r2, [sp, #32]                   @ 4-byte Reload
.LBB28_22:                              @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r0]
	ldr	r5, [r1], #4
	add	r4, r6, r7
	add	r5, r4, r5
	cmp	r5, r6
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r7
	str	r5, [r0], #4
	subs	r2, r2, #1
	mov	r7, r3
	bne	.LBB28_22
.LBB28_23:
	ldrsb	r3, [r9]
	add	r6, sp, #236
	add	r5, sp, #168
	mov	r0, r6
	mov	r1, r5
	mov	r2, r11
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r9]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r5
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	mov	r0, r5
	mov	r1, r5
	mov	r2, r8
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	mov	r3, r4
	bl	uECC_vli_modInv
	ldrsb	r3, [r9]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r5
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r9]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r5
	mov	r2, r10
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	str	r9, [sp]
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	mov	r2, r10
	mov	r8, r4
	mov	r3, r11
	bl	XYcZ_add
	ldrsb	r3, [r9]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r5
	mov	r2, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	add	r4, sp, #204
	mov	r0, r4
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r9]
	add	r6, sp, #236
	add	r7, sp, #104
	mov	r0, r6
	mov	r1, r7
	mov	r2, r4
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r7
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r9]
	add	r6, sp, #236
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r4
	mov	r1, r6
	blx	r2
	ldrsb	r3, [r9]
	add	r5, sp, #236
	add	r6, sp, #40
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r6
	mov	r1, r5
	blx	r2
	cmp	r8, #1
	blt	.LBB28_25
@ %bb.24:
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	lsl	r4, r0, #2
	add	r1, sp, #104
	ldr	r5, [sp, #12]                   @ 4-byte Reload
	mov	r0, r5
	mov	r2, r4
	bl	memcpy
	add	r0, r5, r8, lsl #2
	add	r1, sp, #40
	mov	r2, r4
	bl	memcpy
.LBB28_25:
	add	sp, sp, #300
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end28:
	.size	EccPoint_mult, .Lfunc_end28-EccPoint_mult
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function XYcZ_addC
	.type	XYcZ_addC,%function
	.code	32                              @ @XYcZ_addC
XYcZ_addC:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#180
	sub	sp, sp, #180
	mov	r9, r3
	mov	r10, r2
	mov	r11, r1
	ldr	r8, [sp, #216]
	ldrb	r12, [r8], #4
	sxtb	r3, r12
	cmp	r3, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	blt	.LBB29_4
@ %bb.1:
	mov	r7, #0
	add	r5, sp, #84
	mov	r1, r10
	mov	r2, r0
	mov	r0, r12
.LBB29_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2], #4
	ldr	lr, [r1], #4
	add	r4, r6, r7
	cmp	lr, r4
	mov	r6, #0
	movwlo	r6, #1
	cmp	r4, #0
	orreq	r6, r6, r7
	sub	r7, lr, r4
	str	r7, [r5], #4
	subs	r0, r0, #1
	mov	r7, r6
	bne	.LBB29_2
@ %bb.3:
	clz	r0, r6
	lsr	r0, r0, #5
	cmp	r3, #1
	bge	.LBB29_5
	b	.LBB29_8
.LBB29_4:
	mov	r0, #1
	cmp	r3, #1
	blt	.LBB29_8
.LBB29_5:
	cmp	r0, #0
	bne	.LBB29_8
@ %bb.6:
	mov	r6, #0
	add	r0, sp, #84
	mov	r1, r8
	mov	r2, r12
.LBB29_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r4, [r1], #4
	add	r5, r7, r6
	add	r5, r5, r4
	cmp	r5, r7
	mov	r4, #0
	movwlo	r4, #1
	orreq	r4, r4, r6
	str	r5, [r0], #4
	subs	r2, r2, #1
	mov	r6, r4
	bne	.LBB29_7
.LBB29_8:
	add	r4, sp, #116
	add	r6, sp, #84
	mov	r0, r4
	mov	r1, r6
	mov	r2, r6
	str	r12, [sp, #12]                  @ 4-byte Spill
	str	r3, [sp, #8]                    @ 4-byte Spill
	bl	uECC_vli_mult
	ldr	r7, [sp, #216]
	ldr	r2, [r7, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldrsb	r3, [r7]
	add	r4, sp, #116
	mov	r0, r4
	ldr	r5, [sp, #4]                    @ 4-byte Reload
	mov	r1, r5
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r5
	mov	r1, r4
	blx	r2
	ldrsb	r3, [r7]
	add	r4, sp, #116
	mov	r0, r4
	mov	r1, r10
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r10
	mov	r1, r4
	blx	r2
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB29_12
@ %bb.9:
	mov	r5, #0
	mov	r0, r9
	mov	r1, r11
	mov	r2, r12
.LBB29_10:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1], #4
	add	r4, r3, r5
	add	r7, r4, r7
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	str	r7, [r6], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB29_10
@ %bb.11:
	cmp	r3, #0
	bne	.LBB29_19
.LBB29_12:
	add	r1, sp, #84
	mov	r2, r12
	mov	r0, #0
.LBB29_13:                              @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB29_16
@ %bb.14:                               @   in Loop: Header=BB29_13 Depth=1
	uxtb	r3, r3
	ldr	r7, [r1, r3, lsl #2]
	ldr	r3, [r8, r3, lsl #2]
	cmp	r3, r7
	bhi	.LBB29_17
@ %bb.15:                               @   in Loop: Header=BB29_13 Depth=1
	bhs	.LBB29_13
.LBB29_16:
	cmp	lr, #1
	bge	.LBB29_18
	b	.LBB29_21
.LBB29_17:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB29_21
.LBB29_18:
	cmp	r0, #0
	bne	.LBB29_21
.LBB29_19:
	mov	r5, #0
	add	r0, sp, #84
	mov	r1, r8
	mov	r2, r12
.LBB29_20:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB29_20
.LBB29_21:
	cmp	lr, #1
	blt	.LBB29_25
@ %bb.22:
	mov	r6, #0
	mov	r0, r9
	mov	r1, r11
	mov	r2, r12
.LBB29_23:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_23
@ %bb.24:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB29_26
	b	.LBB29_29
.LBB29_25:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB29_29
.LBB29_26:
	cmp	r0, #0
	bne	.LBB29_29
@ %bb.27:
	mov	r4, #0
	mov	r0, r9
	mov	r1, r8
	mov	r2, r12
.LBB29_28:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_28
.LBB29_29:
	cmp	lr, #1
	blt	.LBB29_33
@ %bb.30:
	mov	r5, #0
	add	r0, sp, #52
	mov	r1, r10
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	mov	r3, r12
.LBB29_31:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r2], #4
	ldr	r4, [r1], #4
	add	r7, r7, r5
	cmp	r4, r7
	mov	r6, #0
	movwlo	r6, #1
	cmp	r7, #0
	orreq	r6, r6, r5
	sub	r7, r4, r7
	str	r7, [r0], #4
	subs	r3, r3, #1
	mov	r5, r6
	bne	.LBB29_31
@ %bb.32:
	clz	r0, r6
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB29_34
	b	.LBB29_37
.LBB29_33:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB29_37
.LBB29_34:
	cmp	r0, #0
	bne	.LBB29_37
@ %bb.35:
	mov	r4, #0
	add	r0, sp, #52
	mov	r1, r8
	mov	r2, r12
.LBB29_36:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_36
.LBB29_37:
	ldr	r5, [sp, #216]
	ldrsb	r3, [r5]
	add	r4, sp, #116
	add	r6, sp, #52
	mov	r0, r4
	mov	r1, r11
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r11
	mov	r1, r4
	blx	r2
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB29_41
@ %bb.38:
	mov	r5, #0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	r1, r10
	mov	r2, r12
.LBB29_39:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1], #4
	add	r4, r3, r5
	add	r7, r4, r7
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	str	r7, [r6], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB29_39
@ %bb.40:
	cmp	r3, #0
	bne	.LBB29_48
.LBB29_41:
	add	r1, sp, #52
	mov	r2, r12
	mov	r0, #0
.LBB29_42:                              @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB29_45
@ %bb.43:                               @   in Loop: Header=BB29_42 Depth=1
	uxtb	r3, r3
	ldr	r7, [r1, r3, lsl #2]
	ldr	r3, [r8, r3, lsl #2]
	cmp	r3, r7
	bhi	.LBB29_46
@ %bb.44:                               @   in Loop: Header=BB29_42 Depth=1
	bhs	.LBB29_42
.LBB29_45:
	cmp	lr, #1
	bge	.LBB29_47
	b	.LBB29_50
.LBB29_46:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB29_50
.LBB29_47:
	cmp	r0, #0
	bne	.LBB29_50
.LBB29_48:
	mov	r5, #0
	add	r0, sp, #52
	mov	r1, r8
	mov	r2, r12
.LBB29_49:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB29_49
.LBB29_50:
	ldr	r4, [sp, #216]
	ldrsb	r3, [r4]
	add	r6, sp, #116
	mov	r0, r6
	mov	r1, r9
	mov	r2, r9
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r10
	mov	r1, r6
	blx	r2
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB29_54
@ %bb.51:
	mov	r6, #0
	add	r0, sp, #52
	mov	r1, r10
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	r2, r12
.LBB29_52:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_52
@ %bb.53:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB29_55
	b	.LBB29_58
.LBB29_54:
	mov	r0, #1
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB29_58
.LBB29_55:
	cmp	r0, #0
	bne	.LBB29_58
@ %bb.56:
	mov	r4, #0
	mov	r0, r10
	mov	r1, r8
	mov	r2, r12
.LBB29_57:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_57
.LBB29_58:
	cmp	lr, #1
	blt	.LBB29_62
@ %bb.59:
	mov	r6, #0
	add	r0, sp, #16
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	r2, r12
.LBB29_60:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r10], #4
	ldr	r7, [r1], #4
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_60
@ %bb.61:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB29_63
	b	.LBB29_66
.LBB29_62:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB29_66
.LBB29_63:
	cmp	r0, #0
	bne	.LBB29_66
@ %bb.64:
	mov	r4, #0
	add	r0, sp, #16
	mov	r1, r8
	mov	r2, r12
.LBB29_65:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_65
.LBB29_66:
	ldr	r5, [sp, #216]
	ldrsb	r3, [r5]
	add	r4, sp, #116
	add	r2, sp, #16
	mov	r0, r4
	mov	r1, r9
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r9
	mov	r1, r4
	blx	r2
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	cmp	r4, #1
	blt	.LBB29_70
@ %bb.67:
	mov	r6, #0
	mov	r0, r9
	mov	r1, r11
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	r2, r12
.LBB29_68:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	cmp	r7, r5
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	sub	r7, r7, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_68
@ %bb.69:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	r4, #1
	bge	.LBB29_71
	b	.LBB29_74
.LBB29_70:
	mov	r0, #1
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	cmp	r4, #1
	blt	.LBB29_74
.LBB29_71:
	cmp	r0, #0
	bne	.LBB29_74
@ %bb.72:
	mov	r2, #0
	mov	r0, r8
	mov	r1, r12
.LBB29_73:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r9]
	ldr	r7, [r0], #4
	add	r6, r3, r2
	add	r7, r6, r7
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r2
	str	r7, [r9], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB29_73
.LBB29_74:
	ldr	r4, [sp, #216]
	ldrsb	r3, [r4]
	add	r6, sp, #116
	add	r1, sp, #84
	mov	r0, r6
	mov	r2, r1
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	add	r4, sp, #16
	mov	r0, r4
	mov	r1, r6
	blx	r2
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB29_78
@ %bb.75:
	mov	r2, #0
	add	r0, sp, #52
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	r1, r12
.LBB29_76:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r4]
	add	r6, r3, r2
	cmp	r7, r6
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r4], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB29_76
@ %bb.77:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB29_79
	b	.LBB29_82
.LBB29_78:
	mov	r0, #1
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	cmp	lr, #1
	blt	.LBB29_82
.LBB29_79:
	cmp	r0, #0
	bne	.LBB29_82
@ %bb.80:
	mov	r4, #0
	add	r0, sp, #16
	mov	r1, r8
	mov	r2, r12
.LBB29_81:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_81
.LBB29_82:
	cmp	lr, #1
	blt	.LBB29_86
@ %bb.83:
	mov	r6, #0
	add	r0, sp, #52
	add	r1, sp, #16
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	mov	r3, r12
.LBB29_84:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r2], #4
	ldr	r5, [r1], #4
	add	r4, r7, r6
	cmp	r5, r4
	mov	r7, #0
	movwlo	r7, #1
	cmp	r4, #0
	orreq	r7, r7, r6
	sub	r6, r5, r4
	str	r6, [r0], #4
	subs	r3, r3, #1
	mov	r6, r7
	bne	.LBB29_84
@ %bb.85:
	clz	r0, r7
	lsr	r0, r0, #5
	cmp	lr, #1
	bge	.LBB29_87
	b	.LBB29_90
.LBB29_86:
	mov	r0, #1
	cmp	lr, #1
	blt	.LBB29_90
.LBB29_87:
	cmp	r0, #0
	bne	.LBB29_90
@ %bb.88:
	mov	r4, #0
	add	r0, sp, #52
	mov	r1, r8
	mov	r2, r12
.LBB29_89:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	cmp	r6, r7
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	str	r6, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_89
.LBB29_90:
	ldr	r5, [sp, #216]
	ldrsb	r3, [r5]
	add	r6, sp, #116
	add	r4, sp, #52
	add	r2, sp, #84
	mov	r0, r6
	mov	r1, r4
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r4
	mov	r1, r6
	blx	r2
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	cmp	r5, #1
	blt	.LBB29_94
@ %bb.91:
	mov	r2, #0
	mov	r0, r11
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	mov	r1, r12
.LBB29_92:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0]
	ldr	r7, [r4], #4
	add	r6, r3, r2
	cmp	r7, r6
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r0], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB29_92
@ %bb.93:
	clz	r0, r3
	lsr	r0, r0, #5
	cmp	r5, #1
	bge	.LBB29_95
	b	.LBB29_98
.LBB29_94:
	mov	r0, #1
	ldr	r12, [sp, #12]                  @ 4-byte Reload
	cmp	r5, #1
	blt	.LBB29_98
.LBB29_95:
	cmp	r0, #0
	bne	.LBB29_98
@ %bb.96:
	mov	r1, #0
	mov	r0, r12
.LBB29_97:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r11]
	ldr	r3, [r8], #4
	add	r7, r2, r1
	add	r3, r7, r3
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r1
	str	r3, [r11], #4
	subs	r0, r0, #1
	mov	r1, r2
	bne	.LBB29_97
.LBB29_98:
	cmp	r5, #1
	blt	.LBB29_100
@ %bb.99:
	lsl	r2, r12, #2
	add	r1, sp, #16
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	memcpy
.LBB29_100:
	add	sp, sp, #180
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end29:
	.size	XYcZ_addC, .Lfunc_end29-XYcZ_addC
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	regularize_k                    @ -- Begin function regularize_k
	.p2align	2
	.type	regularize_k,%function
	.code	32                              @ @regularize_k
regularize_k:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldrsh	r8, [r3, #2]
	add	r12, r3, #36
	add	r3, r8, #31
	add	r3, r3, r3, lsr #27
	asr	lr, r3, #5
	sbfx	r3, r3, #5, #8
	cmp	r3, #1
	uxtb	r9, lr
	blt	.LBB30_4
@ %bb.1:
	mov	r11, #0
	mov	r5, r12
	mov	r6, r1
	mov	r7, r9
.LBB30_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0], #4
	ldr	r10, [r5], #4
	add	r3, r4, r11
	add	r3, r3, r10
	cmp	r3, r4
	mov	r4, #0
	movwlo	r4, #1
	orreq	r4, r4, r11
	str	r3, [r6], #4
	subs	r7, r7, #1
	mov	r11, r4
	bne	.LBB30_2
@ %bb.3:
	mov	r0, #1
	cmp	r4, #0
	bne	.LBB30_6
.LBB30_4:
	lsl	r3, lr, #24
	mov	r0, #0
	cmp	r8, r3, asr #19
	bge	.LBB30_6
@ %bb.5:
	asr	r0, r8, #5
	ldr	r0, [r1, r0, lsl #2]
	and	r3, r8, #31
	mov	r4, #1
	and	r0, r4, r0, lsr r3
.LBB30_6:
	sxtb	r3, lr
	cmp	r3, #1
	blt	.LBB30_9
@ %bb.7:
	mov	r7, #0
.LBB30_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r6, [r12], #4
	add	r5, r3, r7
	add	r6, r5, r6
	cmp	r6, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r7
	str	r6, [r2], #4
	subs	r9, r9, #1
	mov	r7, r3
	bne	.LBB30_8
.LBB30_9:
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end30:
	.size	regularize_k, .Lfunc_end30-regularize_k
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	EccPoint_compute_public_key     @ -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,%function
	.code	32                              @ @EccPoint_compute_public_key
EccPoint_compute_public_key:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#100
	sub	sp, sp, #100
	mov	r9, r2
	mov	r10, r0
	add	r11, sp, #36
	ldrh	r5, [r2, #2]
	str	r11, [sp, #32]
	add	r8, sp, #68
	str	r8, [sp, #28]
	add	r7, r2, #36
	sxth	r2, r5
	add	r0, r2, #31
	add	r0, r0, r0, lsr #27
	asr	r3, r0, #5
	sbfx	r0, r0, #5, #8
	cmp	r0, #1
	uxtb	r4, r3
	blt	.LBB31_4
@ %bb.1:
	add	r0, sp, #12
	stm	r0, {r2, r3, r5, r9}            @ 16-byte Folded Spill
	mov	r12, #0
	add	r6, sp, #68
	mov	r5, r7
	mov	r0, r4
.LBB31_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1], #4
	ldr	lr, [r5], #4
	add	r9, r2, r12
	add	r3, r9, lr
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r12
	str	r3, [r6], #4
	subs	r0, r0, #1
	mov	r12, r2
	bne	.LBB31_2
@ %bb.3:
	mov	r1, #0
	cmp	r2, #0
	add	r9, sp, #12
	ldm	r9, {r2, r3, r5, r9}            @ 16-byte Folded Reload
	bne	.LBB31_6
.LBB31_4:
	lsl	r0, r3, #24
	mov	r1, #1
	cmp	r2, r0, asr #19
	bge	.LBB31_6
@ %bb.5:
	asr	r0, r2, #5
	add	r1, sp, #68
	ldr	r0, [r1, r0, lsl #2]
	and	r1, r2, #31
	mov	r2, #1
	bic	r1, r2, r0, lsr r1
.LBB31_6:
	sxtb	r0, r3
	cmp	r0, #1
	blt	.LBB31_9
@ %bb.7:
	mov	r0, #0
.LBB31_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r8], #4
	ldr	r3, [r7], #4
	add	r6, r2, r0
	add	r3, r6, r3
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r0
	str	r3, [r11], #4
	subs	r4, r4, #1
	mov	r0, r2
	bne	.LBB31_8
.LBB31_9:
	add	r0, sp, #28
	ldr	r2, [r0, r1, lsl #2]
	add	r0, r5, #1
	sxth	r0, r0
	stm	sp, {r0, r9}
	add	r1, r9, #68
	mov	r5, #0
	mov	r0, r10
	mov	r3, #0
	bl	EccPoint_mult
	ldrb	r0, [r9]
	lsl	r0, r0, #1
	sxtb	r0, r0
	cmp	r0, #1
	blt	.LBB31_13
@ %bb.10:
	uxtb	r0, r0
	mov	r5, #0
.LBB31_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r10], #4
	orr	r5, r1, r5
	subs	r0, r0, #1
	bne	.LBB31_11
@ %bb.12:
	cmp	r5, #0
	movwne	r5, #1
.LBB31_13:
	mov	r0, r5
	add	sp, sp, #100
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end31:
	.size	EccPoint_compute_public_key, .Lfunc_end31-EccPoint_compute_public_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_nativeToBytes          @ -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,%function
	.code	32                              @ @uECC_vli_nativeToBytes
uECC_vli_nativeToBytes:
	.fnstart
@ %bb.0:
	cmp	r1, #1
	bxlt	lr
.LBB32_1:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	mov	lr, #0
	mov	r12, #24
	mov	r3, #0
.LBB32_2:                               @ =>This Inner Loop Header: Depth=1
	mvn	r4, lr
	add	r4, r4, r1
	bic	r5, r4, #3
	ldr	r5, [r2, r5]
	and	r4, r12, r4, lsl #3
	lsr	r4, r5, r4
	strb	r4, [r0, lr]
	add	r3, r3, #1
	sxtb	lr, r3
	cmp	lr, r1
	blt	.LBB32_2
@ %bb.3:
	pop	{r4, r5, r11, lr}
	bx	lr
.Lfunc_end32:
	.size	uECC_vli_nativeToBytes, .Lfunc_end32-uECC_vli_nativeToBytes
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_vli_bytesToNative          @ -- Begin function uECC_vli_bytesToNative
	.p2align	2
	.type	uECC_vli_bytesToNative,%function
	.code	32                              @ @uECC_vli_bytesToNative
uECC_vli_bytesToNative:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	mov	r4, r2
	mov	r7, r1
	mov	r6, r0
	add	r0, r2, #3
	asr	r1, r0, #31
	add	r0, r0, r1, lsr #30
	sbfx	r1, r0, #2, #8
	cmp	r1, #1
	blt	.LBB33_2
@ %bb.1:
	asr	r0, r0, #2
	mov	r1, #1020
	and	r2, r1, r0, lsl #2
	mov	r0, r6
	mov	r1, #0
	bl	memset
.LBB33_2:
	cmp	r4, #1
	blt	.LBB33_5
@ %bb.3:
	mov	r2, #0
	mov	r12, #24
	mov	r1, #0
.LBB33_4:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r7, r2]
	mvn	r2, r2
	add	r2, r2, r4
	bic	r0, r2, #3
	ldr	r5, [r6, r0]
	and	r2, r12, r2, lsl #3
	orr	r2, r5, r3, lsl r2
	str	r2, [r6, r0]
	add	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, r4
	blt	.LBB33_4
.LBB33_5:
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end33:
	.size	uECC_vli_bytesToNative, .Lfunc_end33-uECC_vli_bytesToNative
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_generate_random_int        @ -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,%function
	.code	32                              @ @uECC_generate_random_int
uECC_generate_random_int:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#44
	sub	sp, sp, #44
	mov	r10, r2
	mov	r8, r1
	mov	r4, r0
	sub	r0, r2, #1
	sxtb	r0, r0
	cmn	r0, #1
	mvnge	r0, #0
	add	r0, r0, #1
	uxtb	r5, r2
	mov	r2, r5
.LBB34_1:                               @ =>This Inner Loop Header: Depth=1
	mov	r1, r2
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB34_3
@ %bb.2:                                @   in Loop: Header=BB34_1 Depth=1
	uxtb	r3, r3
	ldr	r3, [r8, r3, lsl #2]
	cmp	r3, #0
	beq	.LBB34_1
	b	.LBB34_4
.LBB34_3:
	mov	r1, r0
.LBB34_4:
	mov	r0, #0
	tst	r1, #255
	mov	r2, #0
	beq	.LBB34_8
@ %bb.5:
	sxtb	r1, r1
	sub	r1, r1, #1
	ldr	r3, [r8, r1, lsl #2]
	cmp	r3, #0
	beq	.LBB34_7
.LBB34_6:                               @ =>This Inner Loop Header: Depth=1
	add	r2, r2, #1
	lsrs	r3, r3, #1
	bne	.LBB34_6
.LBB34_7:
	add	r2, r2, r1, lsl #5
.LBB34_8:
	ldr	r1, .LCPI34_0
.LPC34_0:
	ldr	r1, [pc, r1]
	cmp	r1, #0
	beq	.LBB34_28
@ %bb.9:
	rsb	r0, r2, r10, lsl #5
	uxth	r0, r0
	mvn	r1, #0
	lsr	r6, r1, r0
	lsl	r7, r10, #2
	sub	r9, r4, #4
	mov	r11, #0
	str	r6, [sp, #8]                    @ 4-byte Spill
	str	r7, [sp, #4]                    @ 4-byte Spill
	b	.LBB34_12
.LBB34_10:                              @   in Loop: Header=BB34_12 Depth=1
	orr	r1, r2, r1
	tst	r1, #255
	beq	.LBB34_28
.LBB34_11:                              @   in Loop: Header=BB34_12 Depth=1
	add	r11, r11, #1
	cmp	r11, #64
	beq	.LBB34_27
.LBB34_12:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB34_15 Depth 2
                                        @     Child Loop BB34_20 Depth 2
                                        @     Child Loop BB34_25 Depth 2
	ldr	r2, .LCPI34_1
.LPC34_1:
	ldr	r2, [pc, r2]
	mov	r0, r4
	mov	r1, r7
	blx	r2
	cmp	r0, #0
	beq	.LBB34_27
@ %bb.13:                               @   in Loop: Header=BB34_12 Depth=1
	ldr	r0, [r9, r10, lsl #2]
	and	r0, r0, r6
	str	r0, [r9, r10, lsl #2]
	cmp	r10, #1
	blt	.LBB34_17
@ %bb.14:                               @   in Loop: Header=BB34_12 Depth=1
	mov	r0, #0
	mov	r1, r4
	mov	r2, r5
.LBB34_15:                              @   Parent Loop BB34_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r1], #4
	orr	r0, r3, r0
	subs	r2, r2, #1
	bne	.LBB34_15
@ %bb.16:                               @   in Loop: Header=BB34_12 Depth=1
	clz	r0, r0
	lsr	r0, r0, #5
	cmp	r0, #0
	bne	.LBB34_11
	b	.LBB34_18
.LBB34_17:                              @   in Loop: Header=BB34_12 Depth=1
	mov	r0, #1
	cmp	r0, #0
	bne	.LBB34_11
.LBB34_18:                              @   in Loop: Header=BB34_12 Depth=1
	cmp	r10, #1
	blt	.LBB34_22
@ %bb.19:                               @   in Loop: Header=BB34_12 Depth=1
	mov	r7, #0
	add	r0, sp, #12
	mov	r2, r8
	mov	r12, r4
	mov	r3, r4
	mov	lr, r5
.LBB34_20:                              @   Parent Loop BB34_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r3], #4
	ldr	r4, [r2], #4
	add	r6, r1, r7
	cmp	r4, r6
	mov	r1, #0
	movwlo	r1, #1
	cmp	r6, #0
	orreq	r1, r1, r7
	sub	r7, r4, r6
	str	r7, [r0], #4
	subs	r5, r5, #1
	mov	r7, r1
	bne	.LBB34_20
@ %bb.21:                               @   in Loop: Header=BB34_12 Depth=1
	cmp	r1, #0
	mvnne	r1, #1
	mov	r4, r12
	mov	r5, lr
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	b	.LBB34_23
.LBB34_22:                              @   in Loop: Header=BB34_12 Depth=1
	mov	r1, #0
.LBB34_23:                              @   in Loop: Header=BB34_12 Depth=1
	mov	r0, #1
	cmp	r10, #1
	mov	r2, #1
	blt	.LBB34_10
@ %bb.24:                               @   in Loop: Header=BB34_12 Depth=1
	add	r3, sp, #12
	mov	r2, #0
	mov	r7, r5
.LBB34_25:                              @   Parent Loop BB34_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r6, [r3], #4
	orr	r2, r6, r2
	subs	r7, r7, #1
	bne	.LBB34_25
@ %bb.26:                               @   in Loop: Header=BB34_12 Depth=1
	clz	r2, r2
	lsr	r2, r2, #5
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	b	.LBB34_10
.LBB34_27:
	mov	r0, #0
.LBB34_28:
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.29:
.LCPI34_0:
	.long	g_rng_function-(.LPC34_0+8)
.LCPI34_1:
	.long	g_rng_function-(.LPC34_1+8)
.Lfunc_end34:
	.size	uECC_generate_random_int, .Lfunc_end34-uECC_generate_random_int
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_valid_point                @ -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,%function
	.code	32                              @ @uECC_valid_point
uECC_valid_point:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.pad	#96
	sub	sp, sp, #96
	mov	r4, r0
	ldrb	r3, [r1]
	lsl	r0, r3, #1
	sxtb	r2, r0
	mvn	r0, #0
	cmp	r2, #1
	blt	.LBB35_8
@ %bb.1:
	sxtb	r9, r3
	uxtb	r2, r2
	mov	r7, #0
	mov	r6, #0
.LBB35_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4, r7, lsl #2]
	orr	r6, r5, r6
	add	r7, r7, #1
	cmp	r2, r7
	bne	.LBB35_2
@ %bb.3:
	cmp	r6, #0
	beq	.LBB35_8
@ %bb.4:
	add	r7, r1, #4
	mov	r2, r3
	mvn	r0, #1
.LBB35_5:                               @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r6, r2
	cmp	r6, #0
	bmi	.LBB35_8
@ %bb.6:                                @   in Loop: Header=BB35_5 Depth=1
	uxtb	r6, r6
	ldr	r5, [r4, r6, lsl #2]
	ldr	r6, [r7, r6, lsl #2]
	cmp	r6, r5
	bhi	.LBB35_9
@ %bb.7:                                @   in Loop: Header=BB35_5 Depth=1
	bhs	.LBB35_5
.LBB35_8:
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB35_9:
	add	r2, r4, r9, lsl #2
.LBB35_10:                              @ =>This Inner Loop Header: Depth=1
	sub	r3, r3, #1
	sxtb	r6, r3
	cmp	r6, #0
	bmi	.LBB35_8
@ %bb.11:                               @   in Loop: Header=BB35_10 Depth=1
	uxtb	r6, r6
	ldr	r5, [r2, r6, lsl #2]
	ldr	r6, [r7, r6, lsl #2]
	cmp	r6, r5
	bhi	.LBB35_13
@ %bb.12:                               @   in Loop: Header=BB35_10 Depth=1
	bhs	.LBB35_10
	b	.LBB35_8
.LBB35_13:
	add	r7, sp, #32
	mov	r0, r7
	mov	r8, r1
	mov	r1, r2
	mov	r3, r9
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r6, sp
	mov	r0, r6
	mov	r1, r7
	blx	r2
	ldr	r3, [r8, #168]
	add	r7, sp, #32
	mov	r0, r7
	mov	r1, r4
	mov	r2, r8
	blx	r3
	sub	r0, r9, #1
	sxtb	r0, r0
	cmp	r0, #0
	bmi	.LBB35_17
@ %bb.14:
	uxtb	r1, r0
	mov	r0, #0
.LBB35_15:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r6, r1, lsl #2]
	ldr	r3, [r7, r1, lsl #2]
	eor	r2, r3, r2
	orr	r0, r2, r0
	sub	r2, r1, #1
	cmp	r1, #0
	mov	r1, r2
	bgt	.LBB35_15
@ %bb.16:
	cmp	r0, #0
	mvnne	r0, #2
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB35_17:
	mov	r0, #0
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end35:
	.size	uECC_valid_point, .Lfunc_end35-uECC_valid_point
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_valid_public_key           @ -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,%function
	.code	32                              @ @uECC_valid_public_key
uECC_valid_public_key:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#76
	sub	sp, sp, #76
	mov	r12, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldrb	r9, [r1, #1]
	sxtb	r11, r9
	add	r0, r11, #3
	add	r0, r0, r0, lsr #30
	asr	r10, r0, #2
	cmp	r10, #1
	blt	.LBB36_2
@ %bb.1:
	mov	r0, #1020
	and	r2, r0, r10, lsl #2
	add	r0, sp, #8
	mov	r1, #0
	mov	r4, r12
	bl	memset
	mov	r12, r4
.LBB36_2:
	cmp	r11, #1
	add	r8, sp, #8
	blt	.LBB36_5
@ %bb.3:
	mvn	r0, #7
	add	r0, r0, r11, lsl #3
	sub	r1, r11, #1
	mov	r2, r9
	ldr	r3, [sp, #4]                    @ 4-byte Reload
.LBB36_4:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r6, [r3], #1
	bic	r4, r1, #3
	ldr	r5, [r8, r4]
	and	r7, r0, #24
	orr	r7, r5, r6, lsl r7
	str	r7, [r8, r4]
	subs	r2, r2, #1
	sub	r0, r0, #8
	sub	r1, r1, #1
	bne	.LBB36_4
.LBB36_5:
	ldrsb	r0, [r12]
	add	r6, r8, r0, lsl #2
	cmp	r10, #1
	blt	.LBB36_7
@ %bb.6:
	mov	r0, #1020
	and	r2, r0, r10, lsl #2
	mov	r0, r6
	mov	r1, #0
	mov	r4, r12
	bl	memset
	mov	r12, r4
.LBB36_7:
	subs	r0, r11, #1
	blt	.LBB36_10
@ %bb.8:
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	add	r1, r1, r11
	mvn	r2, #7
	add	r2, r2, r11, lsl #3
.LBB36_9:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r1], #1
	bic	r7, r0, #3
	ldr	r5, [r6, r7]
	and	r4, r2, #24
	orr	r3, r5, r3, lsl r4
	str	r3, [r6, r7]
	subs	r9, r9, #1
	sub	r2, r2, #8
	sub	r0, r0, #1
	bne	.LBB36_9
.LBB36_10:
	add	r1, r12, #68
	mov	r2, #16
	mvn	r0, #3
.LBB36_11:                              @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB36_14
@ %bb.12:                               @   in Loop: Header=BB36_11 Depth=1
	uxtb	r7, r3
	ldr	r6, [r1, r7, lsl #2]
	ldr	r7, [r8, r7, lsl #2]
	cmp	r7, r6
	beq	.LBB36_11
@ %bb.13:
	cmp	r3, #0
	addpl	r0, sp, #8
	movpl	r1, r12
	blpl	uECC_valid_point
.LBB36_14:
	add	sp, sp, #76
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end36:
	.size	uECC_valid_public_key, .Lfunc_end36-uECC_valid_public_key
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	uECC_compute_public_key         @ -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,%function
	.code	32                              @ @uECC_compute_public_key
uECC_compute_public_key:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.pad	#96
	sub	sp, sp, #96
	mov	r9, r2
	mov	r8, r1
	mov	r6, r0
	ldrsh	r10, [r2, #2]
	add	r0, r10, #7
	add	r4, r0, r0, lsr #29
	mov	r0, #3
	add	r0, r0, r4, asr #3
	add	r0, r0, r0, lsr #30
	sbfx	r1, r0, #2, #8
	cmp	r1, #1
	blt	.LBB37_2
@ %bb.1:
	asr	r0, r0, #2
	mov	r1, #1020
	and	r2, r1, r0, lsl #2
	add	r0, sp, #64
	mov	r1, #0
	bl	memset
.LBB37_2:
	cmp	r10, #1
	blt	.LBB37_5
@ %bb.3:
	asr	r0, r4, #3
	mov	r5, #0
	add	r1, sp, #64
	mov	r12, #24
	mov	r3, #0
.LBB37_4:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r4, [r6, r5]
	mvn	r5, r5
	add	r5, r0, r5
	bic	r7, r5, #3
	ldr	r2, [r1, r7]
	and	r5, r12, r5, lsl #3
	orr	r2, r2, r4, lsl r5
	str	r2, [r1, r7]
	add	r3, r3, #1
	sxtb	r5, r3
	cmp	r0, r5
	bgt	.LBB37_4
.LBB37_5:
	add	r0, r10, #31
	add	r0, r0, r0, lsr #27
	sbfx	r1, r0, #5, #8
	cmp	r1, #1
	blt	.LBB37_16
@ %bb.6:
	add	r1, sp, #64
	asr	r0, r0, #5
	uxtb	lr, r0
	mov	r2, #0
	mov	r3, #0
.LBB37_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1, r2, lsl #2]
	orr	r3, r7, r3
	add	r2, r2, #1
	cmp	lr, r2
	bne	.LBB37_7
@ %bb.8:
	cmp	r3, #0
	beq	.LBB37_16
@ %bb.9:
	sxtb	r12, r0
	cmp	r12, #1
	blt	.LBB37_17
@ %bb.10:
	add	r7, r9, #36
	mov	r5, #0
	mov	r6, sp
	mov	r0, lr
.LBB37_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1], #4
	ldr	r3, [r7], #4
	add	r4, r2, r5
	cmp	r3, r4
	mov	r2, #0
	movwlo	r2, #1
	cmp	r4, #0
	orreq	r2, r2, r5
	sub	r3, r3, r4
	str	r3, [r6], #4
	subs	r0, r0, #1
	mov	r5, r2
	bne	.LBB37_11
@ %bb.12:
	cmp	r2, #0
	mvnne	r2, #1
	cmp	r12, #1
	blt	.LBB37_18
.LBB37_13:
	mov	r1, sp
	mov	r0, #0
.LBB37_14:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	orr	r0, r3, r0
	subs	lr, lr, #1
	bne	.LBB37_14
@ %bb.15:
	clz	r0, r0
	lsr	r0, r0, #5
	b	.LBB37_19
.LBB37_16:
	mov	r0, #0
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LBB37_17:
	mov	r2, #0
	cmp	r12, #1
	bge	.LBB37_13
.LBB37_18:
	mov	r0, #1
.LBB37_19:
	orr	r1, r0, r2
	mov	r0, #0
	tst	r1, #255
	beq	.LBB37_21
.LBB37_20:
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LBB37_21:
	mov	r6, sp
	add	r1, sp, #64
	mov	r0, r6
	mov	r2, r9
	bl	EccPoint_compute_public_key
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB37_20
@ %bb.22:
	ldrsb	r2, [r9, #1]
	cmp	r2, #1
	blt	.LBB37_25
@ %bb.23:
	uxtb	r0, r2
	mvn	r1, #7
	add	r1, r1, r2, lsl #3
	sub	r2, r2, #1
	mov	r3, r8
.LBB37_24:                              @ =>This Inner Loop Header: Depth=1
	bic	r7, r2, #3
	ldr	r7, [r6, r7]
	and	r5, r1, #24
	lsr	r7, r7, r5
	strb	r7, [r3], #1
	subs	r0, r0, #1
	sub	r2, r2, #1
	sub	r1, r1, #8
	bne	.LBB37_24
.LBB37_25:
	ldrsb	r5, [r9, #1]
	mov	r0, #1
	cmp	r5, #1
	blt	.LBB37_20
@ %bb.26:
	ldrsb	r2, [r9]
	add	r1, r8, r5
	add	r2, r6, r2, lsl #2
	uxtb	r3, r5
	mvn	r7, #7
	add	r7, r7, r5, lsl #3
	sub	r6, r5, #1
.LBB37_27:                              @ =>This Inner Loop Header: Depth=1
	bic	r5, r6, #3
	ldr	r5, [r2, r5]
	and	r4, r7, #24
	lsr	r5, r5, r4
	strb	r5, [r1], #1
	subs	r3, r3, #1
	sub	r6, r6, #1
	sub	r7, r7, #8
	bne	.LBB37_27
	b	.LBB37_20
.Lfunc_end37:
	.size	uECC_compute_public_key, .Lfunc_end37-uECC_compute_public_key
	.cantunwind
	.fnend
                                        @ -- End function
	.type	g_rng_function,%object          @ @g_rng_function
	.data
	.p2align	2, 0x0
g_rng_function:
	.long	default_CSPRNG
	.size	g_rng_function, 4

	.type	.L__const.x_side_default._3,%object @ @__const.x_side_default._3
	.section	.rodata.cst32,"aM",%progbits,32
	.p2align	2, 0x0
.L__const.x_side_default._3:
	.long	3                               @ 0x3
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.size	.L__const.x_side_default._3, 32

	.type	curve_secp256r1,%object         @ @curve_secp256r1
	.section	.data.rel.ro,"aw",%progbits
	.p2align	2, 0x0
curve_secp256r1:
	.byte	8                               @ 0x8
	.byte	32                              @ 0x20
	.short	256                             @ 0x100
	.long	4294967295                      @ 0xffffffff
	.long	4294967295                      @ 0xffffffff
	.long	4294967295                      @ 0xffffffff
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	4294967295                      @ 0xffffffff
	.long	4234356049                      @ 0xfc632551
	.long	4089039554                      @ 0xf3b9cac2
	.long	2803342980                      @ 0xa7179e84
	.long	3169254061                      @ 0xbce6faad
	.long	4294967295                      @ 0xffffffff
	.long	4294967295                      @ 0xffffffff
	.long	0                               @ 0x0
	.long	4294967295                      @ 0xffffffff
	.long	3633889942                      @ 0xd898c296
	.long	4104206661                      @ 0xf4a13945
	.long	770388896                       @ 0x2deb33a0
	.long	1996717441                      @ 0x77037d81
	.long	1671708914                      @ 0x63a440f2
	.long	4173129445                      @ 0xf8bce6e5
	.long	3777774151                      @ 0xe12c4247
	.long	1796723186                      @ 0x6b17d1f2
	.long	935285237                       @ 0x37bf51f5
	.long	3417718888                      @ 0xcbb64068
	.long	1798397646                      @ 0x6b315ece
	.long	734933847                       @ 0x2bce3357
	.long	2081398294                      @ 0x7c0f9e16
	.long	2397563722                      @ 0x8ee7eb4a
	.long	4263149467                      @ 0xfe1a7f9b
	.long	1340293858                      @ 0x4fe342e2
	.long	668098635                       @ 0x27d2604b
	.long	1003371582                      @ 0x3bce3c3e
	.long	3428036854                      @ 0xcc53b0f6
	.long	1696401072                      @ 0x651d06b0
	.long	1989707452                      @ 0x769886bc
	.long	3018571093                      @ 0xb3ebbd55
	.long	2855965671                      @ 0xaa3a93e7
	.long	1522939352                      @ 0x5ac635d8
	.long	double_jacobian_default
	.long	x_side_default
	.long	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 176

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
