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
	subs	r2, r2, #1
	orr	r1, r3, r1
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
	and	r1, r1, #31
	ldr	r0, [r0, r2, lsl #2]
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
	uxtb	r1, r1
	sxtb	r2, r2
	cmn	r2, #1
	mvnge	r2, #0
	add	r12, r2, #1
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
	mov	r3, r1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB7_4
@ %bb.2:                                @   in Loop: Header=BB7_1 Depth=1
	uxtb	r2, r2
	ldr	r2, [r0, r2, lsl #2]
	cmp	r2, #0
	beq	.LBB7_1
@ %bb.3:
	mov	r12, r3
	b	.LBB7_5
.LBB7_4:
	tst	r12, #255
	moveq	r0, #0
	sxtheq	r0, r0
	bxeq	lr
.LBB7_5:
	sxtb	r1, r12
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
	subs	r2, r2, #1
	str	r3, [r0], #4
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
	uxtb	r0, r0
	rsb	r2, r0, #0
	mov	r0, #0
.LBB10_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	lr, [r12, -r2, lsl #2]
	ldr	r3, [r1, -r2, lsl #2]
	add	r2, r2, #1
	cmp	r2, #1
	eor	r3, r3, lr
	orr	r0, r3, r0
	bne	.LBB10_2
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
	mov	r3, #0
	cmp	r4, r5
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
	cmp	r2, #1
	movlt	r0, #0
	sxtblt	r0, r0
	bxlt	lr
.LBB13_1:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	.pad	#32
	sub	sp, sp, #32
	uxtb	r12, r2
	mov	r4, #0
	mov	lr, sp
	mov	r2, r12
.LBB13_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r5, [r0], #4
	add	r6, r3, r4
	mov	r3, #0
	cmp	r5, r6
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r4
	sub	r4, r5, r6
	str	r4, [lr], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB13_2
@ %bb.3:
	mov	r0, #0
	mov	r1, sp
.LBB13_4:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1], #4
	subs	r12, r12, #1
	orr	r0, r2, r0
	bne	.LBB13_4
@ %bb.5:
	clz	r0, r0
	cmp	r3, #0
	mvn	r1, #1
	lsr	r0, r0, #5
	orrne	r0, r0, r1
	eor	r0, r0, #1
	add	sp, sp, #32
	pop	{r4, r5, r6, lr}
	sxtb	r0, r0
	bx	lr
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
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, [sp, #32]
	cmp	lr, #1
	uxtb	r12, lr
	mov	r8, r12
	blt	.LBB14_6
@ %bb.1:
	mov	r4, #0
	mov	r5, r0
	mov	r6, r8
.LBB14_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r10, [r1], #4
	ldr	r9, [r2], #4
	add	r7, r10, r4
	add	r9, r7, r9
	mov	r7, #0
	cmp	r9, r10
	str	r9, [r5], #4
	movwlo	r7, #1
	orreq	r7, r7, r4
	subs	r6, r6, #1
	mov	r4, r7
	bne	.LBB14_2
@ %bb.3:
	cmp	r7, #0
	bne	.LBB14_7
	b	.LBB14_6
.LBB14_4:                               @   in Loop: Header=BB14_6 Depth=1
	uxtb	r1, r1
	ldr	r2, [r0, r1, lsl #2]
	ldr	r1, [r3, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB14_10
@ %bb.5:                                @   in Loop: Header=BB14_6 Depth=1
	blo	.LBB14_7
.LBB14_6:                               @ =>This Inner Loop Header: Depth=1
	sub	r8, r8, #1
	sxtb	r1, r8
	cmp	r1, #0
	bpl	.LBB14_4
.LBB14_7:
	cmp	lr, #1
	blt	.LBB14_10
@ %bb.8:
	mov	r6, #0
.LBB14_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r3], #4
	mov	r1, #0
	ldr	r7, [r0]
	add	r2, r2, r6
	cmp	r7, r2
	movwlo	r1, #1
	cmp	r2, #0
	orreq	r1, r1, r6
	sub	r2, r7, r2
	str	r2, [r0], #4
	subs	r12, r12, #1
	mov	r6, r1
	bne	.LBB14_9
.LBB14_10:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
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
	ldr	r6, [sp, #24]
	cmp	r6, #1
	blt	.LBB15_6
@ %bb.1:
	uxtb	r12, r6
	mov	r5, #0
	mov	lr, r0
	mov	r4, r12
.LBB15_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2], #4
	ldr	r8, [r1], #4
	add	r7, r6, r5
	mov	r6, #0
	cmp	r8, r7
	movwlo	r6, #1
	cmp	r7, #0
	orreq	r6, r6, r5
	sub	r5, r8, r7
	str	r5, [lr], #4
	subs	r4, r4, #1
	mov	r5, r6
	bne	.LBB15_2
@ %bb.3:
	cmp	r6, #0
	beq	.LBB15_6
@ %bb.4:
	mov	r1, #0
.LBB15_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0]
	ldr	r7, [r3], #4
	add	r6, r2, r1
	add	r7, r6, r7
	str	r7, [r0], #4
	cmp	r7, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r1
	subs	r12, r12, #1
	mov	r1, r2
	bne	.LBB15_5
.LBB15_6:
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
	str	r0, [sp]                        @ 4-byte Spill
	add	r0, sp, #32
	str	r0, [sp, #24]
	sub	r0, r3, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r6, r2
	sxtb	r0, r0
	cmn	r0, #1
	mvnge	r0, #0
	uxtb	r2, r3
	add	r0, r0, #1
	mov	r4, r3
	lsl	r5, r3, #1
	mov	r7, r3
	str	r1, [sp, #28]
	str	r2, [sp, #4]                    @ 4-byte Spill
.LBB16_1:                               @ =>This Inner Loop Header: Depth=1
	mov	r1, r2
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB16_4
@ %bb.2:                                @   in Loop: Header=BB16_1 Depth=1
	uxtb	r3, r3
	ldr	r3, [r6, r3, lsl #2]
	cmp	r3, #0
	beq	.LBB16_1
@ %bb.3:
	mov	r0, r1
	b	.LBB16_5
.LBB16_4:
	tst	r0, #255
	beq	.LBB16_34
.LBB16_5:
	sxtb	r0, r0
	mov	r1, #0
	sub	r0, r0, #1
	ldr	r2, [r6, r0, lsl #2]
	cmp	r2, #0
	beq	.LBB16_7
.LBB16_6:                               @ =>This Inner Loop Header: Depth=1
	add	r1, r1, #1
	lsrs	r2, r2, #1
	bne	.LBB16_6
.LBB16_7:
	add	r0, r1, r0, lsl #5
.LBB16_8:
	rsb	r0, r0, r4, lsl #6
	sxth	r11, r0
	ubfx	r1, r11, #26, #5
	add	r1, r0, r1
	sxth	r2, r1
	bic	r1, r1, #31
	sub	r0, r0, r1
	sbfx	r3, r2, #5, #8
	asr	r9, r2, #5
	cmp	r3, #1
	sxth	r8, r0
	blt	.LBB16_10
@ %bb.9:
	mov	r0, #1020
	and	r2, r0, r9, lsl #2
	add	r0, sp, #96
	mov	r1, #0
	bl	memset
.LBB16_10:
	uxth	r0, r9
	cmp	r8, #1
	blt	.LBB16_14
@ %bb.11:
	cmp	r4, #0
	beq	.LBB16_16
@ %bb.12:
	sxtb	r0, r0
	add	r1, sp, #96
	add	r0, r1, r0, lsl #2
	rsb	r1, r8, #32
	mov	r2, #0
.LBB16_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r6], #4
	subs	r7, r7, #1
	orr	r2, r2, r3, lsl r8
	str	r2, [r0], #4
	lsr	r2, r3, r1
	bne	.LBB16_13
	b	.LBB16_16
.LBB16_14:
	cmp	r4, #1
	blt	.LBB16_16
@ %bb.15:
	sxtb	r0, r0
	add	r1, sp, #96
	add	r0, r1, r0, lsl #2
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	lsl	r2, r1, #2
	mov	r1, r6
	bl	memcpy
.LBB16_16:
	cmp	r11, #0
	bmi	.LBB16_29
@ %bb.17:
	add	r1, sp, #96
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r3, r1, r4, lsl #2
	mov	r10, #1
	str	r4, [sp, #16]                   @ 4-byte Spill
	add	r2, r1, r0, lsl #2
	add	r0, r3, r0, lsl #2
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB16_21
.LBB16_18:                              @   in Loop: Header=BB16_21 Depth=1
	clz	r0, r10
	lsr	r10, r0, #5
.LBB16_19:                              @   in Loop: Header=BB16_21 Depth=1
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [r3]
	ldr	r2, [r1, r7, lsl #2]
	orr	r0, r2, r0, lsl #31
	str	r0, [r1, r7, lsl #2]
.LBB16_20:                              @   in Loop: Header=BB16_21 Depth=1
	sub	r0, r11, #1
	sxth	r2, r11
	cmp	r2, #0
	mov	r11, r0
	ble	.LBB16_30
.LBB16_21:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_23 Depth 2
                                        @     Child Loop BB16_26 Depth 2
                                        @     Child Loop BB16_28 Depth 2
	cmp	r4, #0
	ble	.LBB16_18
@ %bb.22:                               @   in Loop: Header=BB16_21 Depth=1
	add	r0, sp, #24
	eor	r7, r10, #1
	mov	lr, #0
	mov	r12, #0
	ldr	r2, [r0, r10, lsl #2]
	mov	r6, #0
	ldr	r7, [r0, r7, lsl #2]
.LBB16_23:                              @   Parent Loop BB16_21 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r8, [r1, lr, lsl #2]
	add	r12, r12, #1
	ldr	r9, [r2, lr, lsl #2]
	add	r0, r8, r6
	subs	r4, r9, r0
	str	r4, [r7, lr, lsl #2]
	mov	r4, #0
	movwlo	r4, #1
	cmp	r0, #0
	movne	r6, r4
	sxtb	lr, r12
	cmp	r5, lr
	bgt	.LBB16_23
@ %bb.24:                               @   in Loop: Header=BB16_21 Depth=1
	sub	r0, r10, r6
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	clz	r0, r0
	cmp	r4, #1
	lsr	r10, r0, #5
	blt	.LBB16_19
@ %bb.25:                               @   in Loop: Header=BB16_21 Depth=1
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	mov	r7, #0
.LBB16_26:                              @   Parent Loop BB16_21 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r2, #-4]!
	cmp	r2, r1
	orr	r7, r7, r0, lsr #1
	str	r7, [r2]
	lsl	r7, r0, #31
	bhi	.LBB16_26
@ %bb.27:                               @   in Loop: Header=BB16_21 Depth=1
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [r3]
	ldr	r2, [r1, r7, lsl #2]
	orr	r0, r2, r0, lsl #31
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	str	r0, [r1, r7, lsl #2]
	mov	r7, #0
.LBB16_28:                              @   Parent Loop BB16_21 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r2, #-4]!
	cmp	r2, r3
	orr	r7, r7, r0, lsr #1
	str	r7, [r2]
	lsl	r7, r0, #31
	bhi	.LBB16_28
	b	.LBB16_20
.LBB16_29:
	mov	r10, #1
.LBB16_30:
	cmp	r4, #1
	ldm	sp, {r2, r3}                    @ 8-byte Folded Reload
	blt	.LBB16_33
@ %bb.31:
	add	r0, sp, #24
	ldr	r0, [r0, r10, lsl #2]
.LBB16_32:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0], #4
	subs	r3, r3, #1
	str	r1, [r2], #4
	bne	.LBB16_32
.LBB16_33:
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB16_34:
	mov	r0, #0
	b	.LBB16_8
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
	ldr	r7, [sp, #88]
	mov	r6, sp
	mov	r4, r3
	mov	r5, r0
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
	uxtb	r0, r3
	str	r3, [sp, #8]                    @ 4-byte Spill
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
	add	r6, r6, #1
	umull	r0, r3, r12, r5
	umlal	r2, lr, r12, r5
	adds	r0, r7, r0
	adcs	r0, r4, r3
	adc	r11, r11, #0
	cmp	r9, r6
	mov	r4, lr
	mov	r7, r2
	bne	.LBB18_3
@ %bb.4:                                @   in Loop: Header=BB18_2 Depth=1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r10, r10, #4
	add	r9, r9, #1
	mov	r4, r11
	mov	r7, lr
	str	r2, [r0, r8, lsl #2]
	add	r8, r8, #1
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r8, r0
	bne	.LBB18_2
	b	.LBB18_6
.LBB18_5:
	mov	lr, #0
	mov	r11, #0
.LBB18_6:
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mvn	r2, #0
	add	r2, r2, r3, lsl #1
	str	r2, [sp, #4]                    @ 4-byte Spill
	cmp	r2, r3
	mov	r0, r2
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
	add	r12, r12, #1
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r11, r4
	str	r6, [r0, r10, lsl #2]
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	sxtb	r10, r6
	cmp	r0, r10
	ble	.LBB18_13
.LBB18_10:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB18_12 Depth 2
	add	r0, r6, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	sub	r0, r0, r3
	mov	r4, #0
	sxtb	r0, r0
	cmp	r0, r3
	bge	.LBB18_8
@ %bb.11:                               @   in Loop: Header=BB18_10 Depth=1
	ldr	r2, [sp]                        @ 4-byte Reload
	sxtb	r0, r6
	sxtb	r8, r12
	mov	r6, lr
	add	r7, r2, r0, lsl #2
	mov	r2, lr
	mov	lr, r11
.LBB18_12:                              @   Parent Loop BB18_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r1, r8, lsl #2]
	ldr	r3, [r7, -r8, lsl #2]
	add	r8, r8, #1
	umull	r5, r9, r3, r0
	umlal	r6, lr, r3, r0
	adds	r0, r2, r5
	adcs	r0, r11, r9
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	adc	r4, r4, #0
	uxtb	r0, r8
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
	ldrsb	r3, [r3]
	mov	r6, sp
	mov	r5, r0
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
	cmp	r3, #1
	blt	.LBB20_71
@ %bb.1:
	mov	r10, r2
	uxtb	r11, r3
	mov	r2, #0
	mov	r3, #0
.LBB20_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1, r2, lsl #2]
	add	r2, r2, #1
	cmp	r11, r2
	orr	r3, r7, r3
	bne	.LBB20_2
@ %bb.3:
	lsl	r6, r11, #2
	cmp	r3, #0
	beq	.LBB20_72
@ %bb.4:
	add	r5, sp, #128
	str	r0, [sp, #4]                    @ 4-byte Spill
	mov	r2, r6
	mov	r0, r5
	bl	memcpy
	add	r7, sp, #96
	mov	r1, r10
	mov	r2, r6
	mov	r0, r7
	bl	memcpy
	add	r9, sp, #64
	mov	r1, #0
	mov	r2, r6
	mov	r0, r9
	bl	memset
	add	r8, sp, #32
	mov	r0, #1
	str	r0, [sp, #64]
	mov	r1, #0
	mov	r0, r8
	mov	r2, r6
	str	r6, [sp, #8]                    @ 4-byte Spill
	bl	memset
	mov	lr, r5
	add	r0, lr, r11, lsl #2
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r0, r7, r11, lsl #2
	add	r12, r9, r11, lsl #2
	str	r0, [sp, #24]                   @ 4-byte Spill
	sub	r0, r12, #4
	mov	r5, r7
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r0, r8, r11, lsl #2
	str	r0, [sp, #20]                   @ 4-byte Spill
	sub	r0, r0, #4
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB20_61
.LBB20_5:                               @   Parent Loop BB20_61 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB20_43 Depth 3
                                        @       Child Loop BB20_45 Depth 3
                                        @       Child Loop BB20_47 Depth 3
                                        @       Child Loop BB20_51 Depth 3
                                        @       Child Loop BB20_53 Depth 3
                                        @       Child Loop BB20_56 Depth 3
                                        @       Child Loop BB20_58 Depth 3
                                        @       Child Loop BB20_26 Depth 3
                                        @       Child Loop BB20_28 Depth 3
                                        @       Child Loop BB20_30 Depth 3
                                        @       Child Loop BB20_34 Depth 3
                                        @       Child Loop BB20_36 Depth 3
                                        @       Child Loop BB20_39 Depth 3
                                        @       Child Loop BB20_41 Depth 3
                                        @       Child Loop BB20_18 Depth 3
                                        @       Child Loop BB20_21 Depth 3
                                        @       Child Loop BB20_23 Depth 3
                                        @       Child Loop BB20_9 Depth 3
                                        @       Child Loop BB20_12 Depth 3
                                        @       Child Loop BB20_14 Depth 3
	sub	r4, r4, #1
	sxtb	r0, r4
	cmp	r0, #0
	bmi	.LBB20_70
@ %bb.6:                                @   in Loop: Header=BB20_5 Depth=2
	uxtb	r1, r0
	ldr	r0, [r5, r1, lsl #2]
	ldr	r1, [lr, r1, lsl #2]
	cmp	r1, r0
	beq	.LBB20_5
@ %bb.7:                                @   in Loop: Header=BB20_5 Depth=2
	ldrb	r2, [sp, #128]
	tst	r2, #1
	bne	.LBB20_16
@ %bb.8:                                @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_9:                               @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, lr
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_9
@ %bb.10:                               @   in Loop: Header=BB20_5 Depth=2
	ldrb	r0, [sp, #64]
	tst	r0, #1
	beq	.LBB20_62
@ %bb.11:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_12:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r9, r0, lsl #2]
	ldr	r4, [r10, r0, lsl #2]
	add	r3, r2, r1
	add	r3, r3, r4
	mov	r4, #0
	cmp	r3, r2
	str	r3, [r9, r0, lsl #2]
	movwlo	r4, #1
	orreq	r4, r4, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r4
	bne	.LBB20_12
@ %bb.13:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r1, #0
	mov	r0, r12
.LBB20_14:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, r9
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_14
.LBB20_15:                              @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	cmp	r4, #0
	mov	r4, r11
	bne	.LBB20_60
	b	.LBB20_5
.LBB20_16:                              @   in Loop: Header=BB20_5 Depth=2
	ldrb	r2, [sp, #96]
	tst	r2, #1
	bne	.LBB20_24
@ %bb.17:                               @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_18:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, r5
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_18
@ %bb.19:                               @   in Loop: Header=BB20_5 Depth=2
	ldrb	r0, [sp, #32]
	tst	r0, #1
	beq	.LBB20_64
@ %bb.20:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_21:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r8, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r4, r2, r1
	add	r3, r4, r3
	mov	r4, #0
	cmp	r3, r2
	str	r3, [r8, r0, lsl #2]
	movwlo	r4, #1
	orreq	r4, r4, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r4
	bne	.LBB20_21
@ %bb.22:                               @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_23:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, r8
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_23
	b	.LBB20_59
.LBB20_24:                              @   in Loop: Header=BB20_5 Depth=2
	cmp	r1, r0
	bls	.LBB20_42
@ %bb.25:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r6, r10
	mov	r0, #0
	mov	r1, #0
.LBB20_26:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r5, r0, lsl #2]
	ldr	r3, [lr, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [lr, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r3
	bne	.LBB20_26
@ %bb.27:                               @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_28:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, lr
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_28
@ %bb.29:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r0, r11
.LBB20_30:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB20_35
@ %bb.31:                               @   in Loop: Header=BB20_30 Depth=3
	uxtb	r1, r1
	ldr	r2, [r8, r1, lsl #2]
	ldr	r1, [r9, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB20_35
@ %bb.32:                               @   in Loop: Header=BB20_30 Depth=3
	bhs	.LBB20_30
@ %bb.33:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r2, #0
	mov	r4, r9
	mov	r10, r6
	mov	r0, r11
.LBB20_34:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r1, [r4]
	mov	r7, lr
	ldr	r3, [r10], #4
	add	lr, r1, r2
	add	r3, lr, r3
	str	r3, [r4], #4
	cmp	r3, r1
	mov	r1, #0
	movwlo	r1, #1
	mov	lr, r7
	orreq	r1, r1, r2
	subs	r0, r0, #1
	mov	r2, r1
	bne	.LBB20_34
.LBB20_35:                              @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_36:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r8, r0, lsl #2]
	ldr	r3, [r9, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r9, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r3
	bne	.LBB20_36
@ %bb.37:                               @   in Loop: Header=BB20_5 Depth=2
	ldrb	r0, [sp, #64]
	mov	r10, r6
	tst	r0, #1
	beq	.LBB20_66
@ %bb.38:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_39:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r9, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r4, r2, r1
	add	r3, r4, r3
	mov	r4, #0
	cmp	r3, r2
	str	r3, [r9, r0, lsl #2]
	movwlo	r4, #1
	orreq	r4, r4, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r4
	bne	.LBB20_39
@ %bb.40:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r1, #0
	mov	r0, r12
.LBB20_41:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, r9
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_41
	b	.LBB20_15
.LBB20_42:                              @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_43:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [lr, r0, lsl #2]
	ldr	r3, [r5, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r5, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r3
	bne	.LBB20_43
@ %bb.44:                               @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_45:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, r5
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_45
@ %bb.46:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r0, r11
.LBB20_47:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB20_52
@ %bb.48:                               @   in Loop: Header=BB20_47 Depth=3
	uxtb	r1, r1
	ldr	r2, [r9, r1, lsl #2]
	ldr	r1, [r8, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB20_52
@ %bb.49:                               @   in Loop: Header=BB20_47 Depth=3
	bhs	.LBB20_47
@ %bb.50:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r1, #0
	mov	r4, r8
	mov	r0, r10
	mov	r2, r11
.LBB20_51:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r3, [r4]
	ldr	r6, [r0], #4
	add	r7, r3, r1
	add	r7, r7, r6
	str	r7, [r4], #4
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r1
	subs	r2, r2, #1
	mov	r1, r3
	bne	.LBB20_51
.LBB20_52:                              @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_53:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r9, r0, lsl #2]
	ldr	r3, [r8, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r8, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r11, r0
	mov	r1, r3
	bne	.LBB20_53
@ %bb.54:                               @   in Loop: Header=BB20_5 Depth=2
	ldrb	r0, [sp, #32]
	tst	r0, #1
	beq	.LBB20_68
@ %bb.55:                               @   in Loop: Header=BB20_5 Depth=2
	mov	r0, #0
	mov	r1, #0
.LBB20_56:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r8, r0, lsl #2]
	mov	r4, #0
	ldr	r3, [r10, r0, lsl #2]
	add	r7, r2, r1
	add	r3, r7, r3
	str	r3, [r8, r0, lsl #2]
	cmp	r3, r2
	movwlo	r4, #1
	add	r0, r0, #1
	orreq	r4, r4, r1
	cmp	r11, r0
	mov	r1, r4
	bne	.LBB20_56
@ %bb.57:                               @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_58:                              @   Parent Loop BB20_61 Depth=1
                                        @     Parent Loop BB20_5 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r2, [r0, #-4]!
	cmp	r0, r8
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_58
.LBB20_59:                              @   in Loop: Header=BB20_5 Depth=2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r4, #0
	mov	r4, r11
	beq	.LBB20_5
.LBB20_60:                              @   in Loop: Header=BB20_61 Depth=1
	ldr	r1, [r0]
	orr	r1, r1, #-2147483648
	str	r1, [r0]
.LBB20_61:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB20_5 Depth 2
                                        @       Child Loop BB20_43 Depth 3
                                        @       Child Loop BB20_45 Depth 3
                                        @       Child Loop BB20_47 Depth 3
                                        @       Child Loop BB20_51 Depth 3
                                        @       Child Loop BB20_53 Depth 3
                                        @       Child Loop BB20_56 Depth 3
                                        @       Child Loop BB20_58 Depth 3
                                        @       Child Loop BB20_26 Depth 3
                                        @       Child Loop BB20_28 Depth 3
                                        @       Child Loop BB20_30 Depth 3
                                        @       Child Loop BB20_34 Depth 3
                                        @       Child Loop BB20_36 Depth 3
                                        @       Child Loop BB20_39 Depth 3
                                        @       Child Loop BB20_41 Depth 3
                                        @       Child Loop BB20_18 Depth 3
                                        @       Child Loop BB20_21 Depth 3
                                        @       Child Loop BB20_23 Depth 3
                                        @       Child Loop BB20_9 Depth 3
                                        @       Child Loop BB20_12 Depth 3
                                        @       Child Loop BB20_14 Depth 3
                                        @     Child Loop BB20_69 Depth 2
                                        @     Child Loop BB20_67 Depth 2
                                        @     Child Loop BB20_65 Depth 2
                                        @     Child Loop BB20_63 Depth 2
	mov	r4, r11
	b	.LBB20_5
.LBB20_62:                              @   in Loop: Header=BB20_61 Depth=1
	mov	r1, #0
	mov	r0, r12
.LBB20_63:                              @   Parent Loop BB20_61 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r9
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_63
	b	.LBB20_61
.LBB20_64:                              @   in Loop: Header=BB20_61 Depth=1
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_65:                              @   Parent Loop BB20_61 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r8
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_65
	b	.LBB20_61
.LBB20_66:                              @   in Loop: Header=BB20_61 Depth=1
	mov	r1, #0
	mov	r0, r12
.LBB20_67:                              @   Parent Loop BB20_61 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r9
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_67
	b	.LBB20_61
.LBB20_68:                              @   in Loop: Header=BB20_61 Depth=1
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_69:                              @   Parent Loop BB20_61 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r8
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_69
	b	.LBB20_61
.LBB20_70:
	add	r1, sp, #64
	ldmib	sp, {r0, r2}                    @ 8-byte Folded Reload
	bl	memcpy
.LBB20_71:
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB20_72:
	mov	r1, #0
	mov	r2, r6
	add	sp, sp, #164
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	memset
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
	.pad	#148
	sub	sp, sp, #148
	ldrb	r8, [r3]
	str	r3, [sp, #12]                   @ 4-byte Spill
	sxtb	r3, r8
	cmp	r3, #1
	blt	.LBB21_62
@ %bb.1:
	mov	r5, r1
	mov	r11, r0
	mov	r10, r2
	mov	r7, r8
	mov	r0, #0
	mov	r1, #0
.LBB21_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r10, r0, lsl #2]
	add	r0, r0, #1
	cmp	r8, r0
	orr	r1, r2, r1
	bne	.LBB21_2
@ %bb.3:
	cmp	r1, #0
	beq	.LBB21_62
@ %bb.4:
	add	r4, sp, #84
	mov	r1, r5
	mov	r2, r5
	str	r7, [sp, #8]                    @ 4-byte Spill
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	add	r6, sp, #48
	mov	r1, r4
	mov	r0, r6
	ldr	r2, [r7, #172]
	blx	r2
	add	r4, sp, #84
	ldrsb	r3, [r7]
	mov	r1, r11
	mov	r2, r6
	mov	r0, r4
	bl	uECC_vli_mult
	add	r9, sp, #16
	ldr	r2, [r7, #172]
	mov	r1, r4
	mov	r0, r9
	blx	r2
	add	r4, sp, #84
	ldrsb	r3, [r7]
	mov	r1, r6
	mov	r2, r6
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	add	r4, sp, #84
	ldrsb	r3, [r7]
	mov	r1, r5
	mov	r2, r10
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r5
	mov	r1, r4
	str	r5, [sp]                        @ 4-byte Spill
	blx	r2
	add	r4, sp, #84
	ldrsb	r3, [r7]
	mov	r1, r10
	mov	r2, r10
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r10
	mov	r1, r4
	blx	r2
	mov	r0, #0
	mov	r1, #0
.LBB21_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r11, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r4, r2, r1
	add	r3, r4, r3
	str	r3, [r11, r0, lsl #2]
	cmp	r3, r2
	mov	r2, #0
	add	r0, r0, #1
	movwlo	r2, #1
	orreq	r2, r2, r1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_5
@ %bb.6:
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r2, #0
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	add	lr, r0, #4
	beq	.LBB21_63
.LBB21_7:
	mov	r5, #0
	mov	r0, r11
	mov	r1, lr
	mov	r2, r12
.LBB21_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r1], #4
	mov	r3, #0
	ldr	r7, [r0]
	add	r4, r4, r5
	cmp	r7, r4
	sub	r7, r7, r4
	movwlo	r3, #1
	cmp	r4, #0
	orreq	r3, r3, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_8
.LBB21_9:
	mov	r0, #0
	mov	r1, #0
.LBB21_10:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r10, r0, lsl #2]
	add	r3, r1, r2, lsl #1
	str	r3, [r10, r0, lsl #2]
	cmp	r3, r2
	mov	r2, #0
	add	r0, r0, #1
	movwlo	r2, #1
	orreq	r2, r2, r1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_10
@ %bb.11:
	cmp	r2, #0
	beq	.LBB21_67
.LBB21_12:
	mov	r4, #0
	mov	r0, r10
	mov	r1, lr
	mov	r2, r12
.LBB21_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	mov	r3, #0
	ldr	r5, [r0]
	add	r7, r7, r4
	cmp	r5, r7
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r4
	sub	r7, r5, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_13
.LBB21_14:
	mov	r0, #0
	mov	r1, #0
.LBB21_15:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r10, r0, lsl #2]
	ldr	r3, [r11, r0, lsl #2]
	add	r7, r2, r1
	subs	r2, r3, r7
	str	r2, [r10, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_15
@ %bb.16:
	cmp	r2, #0
	beq	.LBB21_19
@ %bb.17:
	mov	r6, #0
	mov	r0, r10
	mov	r1, lr
	mov	r2, r12
.LBB21_18:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r5, [r1], #4
	add	r4, r7, r6
	add	r5, r4, r5
	str	r5, [r0], #4
	cmp	r5, r7
	movwlo	r3, #1
	orreq	r3, r3, r6
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB21_18
.LBB21_19:
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	add	r5, sp, #84
	mov	r1, r11
	mov	r2, r10
	mov	r0, r5
	str	lr, [sp, #4]                    @ 4-byte Spill
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r11
	mov	r1, r5
	blx	r2
	mov	r0, #0
	mov	r1, #0
.LBB21_20:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r11, r0, lsl #2]
	add	r3, r1, r2, lsl #1
	str	r3, [r10, r0, lsl #2]
	cmp	r3, r2
	mov	r2, #0
	add	r0, r0, #1
	movwlo	r2, #1
	orreq	r2, r2, r1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_20
@ %bb.21:
	cmp	r2, #0
	ldmib	sp, {r4, r12}                   @ 8-byte Folded Reload
	beq	.LBB21_71
.LBB21_22:
	mov	r5, #0
	mov	r0, r10
	mov	r1, r4
	mov	r2, r12
.LBB21_23:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	mov	r3, #0
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_23
.LBB21_24:
	mov	r0, #0
	mov	r1, #0
.LBB21_25:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r11, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r7, r2, r1
	add	r3, r7, r3
	str	r3, [r11, r0, lsl #2]
	cmp	r3, r2
	mov	r2, #0
	add	r0, r0, #1
	movwlo	r2, #1
	orreq	r2, r2, r1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_25
@ %bb.26:
	cmp	r2, #0
	beq	.LBB21_75
.LBB21_27:
	mov	r5, #0
	mov	r0, r11
	mov	r1, r4
	mov	r2, r12
.LBB21_28:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	mov	r3, #0
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB21_28
.LBB21_29:
	ldrb	r0, [r11]
	tst	r0, #1
	bne	.LBB21_32
@ %bb.30:
	add	r0, r11, r8, lsl #2
	mov	r1, #0
.LBB21_31:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, #-4]!
	cmp	r0, r11
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB21_31
	b	.LBB21_37
.LBB21_32:
	mov	r1, #0
	mov	r2, #0
.LBB21_33:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, r1, lsl #2]
	ldr	r3, [r4, r1, lsl #2]
	add	r7, r0, r2
	add	r3, r7, r3
	str	r3, [r11, r1, lsl #2]
	cmp	r3, r0
	mov	r0, #0
	add	r1, r1, #1
	movwlo	r0, #1
	orreq	r0, r0, r2
	cmp	r8, r1
	mov	r2, r0
	bne	.LBB21_33
@ %bb.34:
	add	r1, r11, r8, lsl #2
	mov	r3, #0
	mov	r2, r1
.LBB21_35:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r2, #-4]!
	cmp	r2, r11
	orr	r3, r3, r7, lsr #1
	str	r3, [r2]
	lsl	r3, r7, #31
	bhi	.LBB21_35
@ %bb.36:
	ldr	r2, [r1, #-4]
	orr	r0, r2, r0, lsl #31
	str	r0, [r1, #-4]
.LBB21_37:
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	add	r5, sp, #84
	mov	r1, r11
	mov	r2, r11
	mov	r0, r5
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r10
	mov	r1, r5
	blx	r2
	mov	r0, #0
	mov	r1, #0
.LBB21_38:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r9, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r7, r2, r1
	subs	r2, r3, r7
	str	r2, [r10, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_38
@ %bb.39:
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	cmp	r2, #0
	ldr	lr, [sp, #4]                    @ 4-byte Reload
	beq	.LBB21_42
@ %bb.40:
	mov	r4, #0
	mov	r0, r10
	mov	r1, lr
	mov	r2, r12
.LBB21_41:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_41
.LBB21_42:
	mov	r0, #0
	mov	r1, #0
.LBB21_43:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r9, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r7, r2, r1
	subs	r2, r3, r7
	str	r2, [r10, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_43
@ %bb.44:
	cmp	r2, #0
	beq	.LBB21_47
@ %bb.45:
	mov	r4, #0
	mov	r0, r10
	mov	r1, lr
	mov	r2, r12
.LBB21_46:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB21_46
.LBB21_47:
	mov	r0, #0
	mov	r1, #0
.LBB21_48:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r10, r0, lsl #2]
	ldr	r3, [r9, r0, lsl #2]
	add	r7, r2, r1
	subs	r2, r3, r7
	str	r2, [r9, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_48
@ %bb.49:
	cmp	r2, #0
	beq	.LBB21_52
@ %bb.50:
	mov	r2, #0
	mov	r0, lr
	mov	r1, r12
.LBB21_51:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r9]
	ldr	r7, [r0], #4
	add	r6, r3, r2
	add	r7, r6, r7
	str	r7, [r9], #4
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r2
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB21_51
.LBB21_52:
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	add	r4, sp, #84
	add	r2, sp, #16
	mov	r1, r11
	mov	r0, r4
	ldrsb	r3, [r6]
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r11
	mov	r1, r4
	blx	r2
	add	r4, sp, #48
	mov	r0, #0
	mov	r1, #0
.LBB21_53:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r4, r0, lsl #2]
	ldr	r3, [r11, r0, lsl #2]
	add	r7, r2, r1
	subs	r2, r3, r7
	str	r2, [r4, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r2
	bne	.LBB21_53
@ %bb.54:
	cmp	r2, #0
	ldmib	sp, {r5, r6}                    @ 8-byte Folded Reload
	beq	.LBB21_57
@ %bb.55:
	mov	r1, #0
	mov	r0, r6
.LBB21_56:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r4]
	ldr	r3, [r5], #4
	add	r7, r2, r1
	add	r3, r7, r3
	str	r3, [r4], #4
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r1
	subs	r0, r0, #1
	mov	r1, r2
	bne	.LBB21_56
.LBB21_57:
	mov	r0, r10
.LBB21_58:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0], #4
	subs	r6, r6, #1
	str	r1, [r11], #4
	bne	.LBB21_58
@ %bb.59:
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r2, #0
.LBB21_60:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0, r2, lsl #2]
	str	r1, [r10, r2, lsl #2]
	add	r2, r2, #1
	cmp	r8, r2
	bne	.LBB21_60
@ %bb.61:
	add	r1, sp, #48
	lsl	r2, r8, #2
	bl	memcpy
.LBB21_62:
	add	sp, sp, #148
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB21_63:
	mov	r0, r12
.LBB21_64:                              @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB21_7
@ %bb.65:                               @   in Loop: Header=BB21_64 Depth=1
	uxtb	r1, r1
	ldr	r2, [r11, r1, lsl #2]
	ldr	r1, [lr, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB21_9
@ %bb.66:                               @   in Loop: Header=BB21_64 Depth=1
	bhs	.LBB21_64
	b	.LBB21_7
.LBB21_67:
	mov	r0, r12
.LBB21_68:                              @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB21_12
@ %bb.69:                               @   in Loop: Header=BB21_68 Depth=1
	uxtb	r1, r1
	ldr	r2, [r10, r1, lsl #2]
	ldr	r1, [lr, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB21_14
@ %bb.70:                               @   in Loop: Header=BB21_68 Depth=1
	bhs	.LBB21_68
	b	.LBB21_12
.LBB21_71:
	mov	r0, r12
.LBB21_72:                              @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB21_22
@ %bb.73:                               @   in Loop: Header=BB21_72 Depth=1
	uxtb	r1, r1
	ldr	r2, [r10, r1, lsl #2]
	ldr	r1, [r4, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB21_24
@ %bb.74:                               @   in Loop: Header=BB21_72 Depth=1
	bhs	.LBB21_72
	b	.LBB21_22
.LBB21_75:
	mov	r0, r12
.LBB21_76:                              @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB21_27
@ %bb.77:                               @   in Loop: Header=BB21_76 Depth=1
	uxtb	r1, r1
	ldr	r2, [r11, r1, lsl #2]
	ldr	r1, [r4, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB21_29
@ %bb.78:                               @   in Loop: Header=BB21_76 Depth=1
	bhs	.LBB21_76
	b	.LBB21_27
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
	ldrb	r8, [r2]
	add	r5, sp, #12
	mov	r11, r2
	mov	r10, r0
	mov	r0, r5
	mov	r2, r1
	sxtb	r4, r8
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r3, r4
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r10
	mov	r1, r5
	blx	r2
	add	r9, r11, #4
	cmp	r4, #1
	str	r4, [sp, #8]                    @ 4-byte Spill
	blt	.LBB22_6
@ %bb.1:
	ldr	r0, .LCPI22_0
	mov	r6, #0
	mov	r1, r10
	mov	r2, r8
.LPC22_0:
	add	r0, pc, r0
.LBB22_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1]
	add	r5, r3, r6
	mov	r3, #0
	cmp	r7, r5
	sub	r7, r7, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB22_2
@ %bb.3:
	cmp	r3, #0
	beq	.LBB22_6
@ %bb.4:
	mov	r4, #0
	mov	r0, r10
	mov	r1, r9
	mov	r2, r8
.LBB22_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB22_5
.LBB22_6:
	add	r4, sp, #12
	ldrsb	r3, [r11]
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	mov	r1, r10
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r10
	mov	r1, r4
	blx	r2
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	cmp	r4, #1
	blt	.LBB22_10
@ %bb.7:
	add	r0, r11, #132
	mov	r6, #0
	mov	r1, r10
	mov	r2, r8
.LBB22_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1]
	ldr	r7, [r0], #4
	add	r5, r3, r6
	add	r7, r5, r7
	str	r7, [r1], #4
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r6
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB22_8
@ %bb.9:
	cmp	r3, #0
	bne	.LBB22_14
.LBB22_10:
	mov	r0, r8
.LBB22_11:                              @ =>This Inner Loop Header: Depth=1
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB22_14
@ %bb.12:                               @   in Loop: Header=BB22_11 Depth=1
	uxtb	r1, r1
	ldr	r2, [r10, r1, lsl #2]
	ldr	r1, [r9, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB22_17
@ %bb.13:                               @   in Loop: Header=BB22_11 Depth=1
	bhs	.LBB22_11
.LBB22_14:
	cmp	r4, #1
	blt	.LBB22_17
@ %bb.15:
	mov	r0, #0
.LBB22_16:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r9], #4
	mov	r3, #0
	ldr	r2, [r10]
	add	r1, r1, r0
	cmp	r2, r1
	movwlo	r3, #1
	cmp	r1, #0
	orreq	r3, r3, r0
	sub	r0, r2, r1
	str	r0, [r10], #4
	subs	r8, r8, #1
	mov	r0, r3
	bne	.LBB22_16
.LBB22_17:
	add	sp, sp, #76
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.18:
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
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#128
	sub	sp, sp, #128
	ldr	r10, [r1]
	mov	r8, r1
	str	r10, [r0]
	mov	lr, r0
	ldr	r9, [r1, #4]
	str	r9, [r0, #4]
	ldr	r12, [r1, #8]
	str	r12, [r0, #8]
	ldr	r7, [r1, #12]
	str	r7, [r0, #12]
	ldr	r6, [r1, #16]
	str	r6, [r0, #16]
	ldr	r5, [r1, #20]
	str	r5, [r0, #20]
	ldr	r11, [r1, #24]
	str	r11, [r0, #24]
	ldr	r1, [r1, #28]
	str	r1, [r0, #28]
	ldr	r2, [r8, #48]
	ldr	r4, [r8, #44]
	ldr	r0, [r8, #52]
	str	r0, [sp, #92]                   @ 4-byte Spill
	lsl	r3, r2, #1
	ldr	r0, [r8, #56]
	str	r1, [sp, #104]                  @ 4-byte Spill
	ldr	r1, [r8, #60]
	str	r0, [sp, #100]                  @ 4-byte Spill
	orr	r0, r3, r4, lsr #31
	adds	r3, r7, r4, lsl #1
	str	r1, [sp, #108]                  @ 4-byte Spill
	adc	r7, r0, r6
	adc	r1, r6, #0
	str	r1, [sp, #116]                  @ 4-byte Spill
	mov	r1, #0
	str	r12, [sp, #120]                 @ 4-byte Spill
	stmib	lr, {r9, r12}
	mov	r12, r3
	str	r3, [lr, #12]
	adc	r3, r1, #0
	cmp	r7, r6
	str	r9, [sp, #124]                  @ 4-byte Spill
	movwlo	r1, #1
	mov	r9, r0
	orreq	r1, r1, r3
	cmp	r0, r2
	mov	r3, #0
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	movwlo	r3, #1
	add	r6, r5, r1
	orreq	r3, r3, r4, lsr #31
	str	r7, [sp, #96]                   @ 4-byte Spill
	orr	r4, r3, r0, lsl #1
	str	r7, [lr, #16]
	add	r2, r6, r4
	mov	r6, #0
	cmp	r2, r5
	mov	r7, #0
	movwlo	r6, #1
	str	r10, [lr]
	orreq	r6, r6, r1
	cmp	r4, r0
	mov	r4, #0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	movwlo	r4, #1
	add	r1, r11, r6
	orreq	r4, r4, r3
	str	r2, [lr, #20]
	orr	r3, r4, r0, lsl #1
	str	r10, [sp, #112]                 @ 4-byte Spill
	add	r5, r1, r3
	ldr	r1, [sp, #104]                  @ 4-byte Reload
	cmp	r5, r11
	str	r5, [lr, #24]
	movwlo	r7, #1
	orreq	r7, r7, r6
	cmp	r3, r0
	str	r7, [sp, #76]                   @ 4-byte Spill
	add	r1, r1, r7
	mov	r7, #0
	ldr	r3, [sp, #108]                  @ 4-byte Reload
	movwlo	r7, #1
	mov	r0, #0
	orreq	r7, r7, r4
	str	r7, [sp, #72]                   @ 4-byte Spill
	add	r3, r7, r3, lsl #1
	str	r3, [sp, #68]                   @ 4-byte Spill
	add	r1, r1, r3
	str	r1, [lr, #28]
	ldr	r6, [r8, #48]
	ldr	r4, [r8, #52]
	str	r1, [sp, #100]                  @ 4-byte Spill
	ldr	r1, [sp, #116]                  @ 4-byte Reload
	adds	r12, r12, r6, lsl #1
	lsl	r7, r4, #1
	ldr	r11, [r8, #56]
	adc	r1, r1, r9
	orr	r7, r7, r6, lsr #31
	add	r3, r1, r7
	adc	r1, r0, #0
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	mov	r9, r3
	str	r3, [sp, #88]                   @ 4-byte Spill
	cmp	r3, r0
	mov	r3, #0
	movwlo	r3, #1
	ldr	r10, [r8, #60]
	orreq	r3, r3, r1
	cmp	r7, r4
	mov	r7, #0
	add	r1, r2, r3
	movwlo	r7, #1
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	orreq	r7, r7, r6, lsr #31
	str	r0, [lr, #8]
	orr	r6, r7, r11, lsl #1
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	add	r4, r1, r6
	mov	r1, #0
	cmp	r4, r2
	str	r4, [sp, #116]                  @ 4-byte Spill
	movwlo	r1, #1
	cmp	r4, r2
	orreq	r1, r1, r3
	cmp	r6, r11
	mov	r3, #0
	str	r4, [lr, #20]
	movwlo	r3, #1
	add	r6, r5, r1
	orreq	r3, r3, r7
	mov	r2, #0
	orr	r4, r3, r10, lsl #1
	mov	r7, #0
	add	r11, r6, r4
	str	r0, [lr, #4]
	cmp	r11, r5
	str	r12, [lr, #12]
	movwlo	r2, #1
	str	r9, [lr, #16]
	orreq	r2, r2, r1
	ldr	r1, [sp, #100]                  @ 4-byte Reload
	cmp	r4, r10
	str	r11, [lr, #24]
	movwlo	r7, #1
	add	r1, r1, r2
	orreq	r7, r7, r3
	str	r2, [sp, #60]                   @ 4-byte Spill
	add	r0, r1, r7
	str	r0, [lr, #28]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [r8, #56]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r1, [r8, #32]
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r2, [r8, #36]
	ldr	r5, [sp, #124]                  @ 4-byte Reload
	adds	r3, r0, r1
	mov	r3, #0
	str	r2, [sp, #84]                   @ 4-byte Spill
	adc	r2, r2, r5
	adc	r3, r3, #0
	cmp	r2, r5
	mov	r5, #0
	movwlo	r5, #1
	ldr	r7, [sp, #120]                  @ 4-byte Reload
	orreq	r5, r5, r3
	str	r12, [sp, #92]                  @ 4-byte Spill
	ldr	r12, [r8, #40]
	add	r3, r7, r5
	str	r2, [sp, #80]                   @ 4-byte Spill
	add	r2, r3, r12
	mov	r3, #0
	cmp	r2, r7
	movwlo	r3, #1
	orreq	r3, r3, r5
	ldr	r5, [sp, #92]                   @ 4-byte Reload
	adds	r10, r5, r3
	ldr	r5, [sp, #88]                   @ 4-byte Reload
	adcs	r9, r5, #0
	mrs	r7, apsr
	ldr	r5, [sp, #116]                  @ 4-byte Reload
	str	r7, [sp, #48]                   @ 4-byte Spill
	adcs	r12, r5, #0
	str	r12, [sp, #36]                  @ 4-byte Spill
	mrs	r7, apsr
	adc	r6, r6, r4
	str	r1, [sp, #64]                   @ 4-byte Spill
	adds	r1, r0, r1
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	mov	r5, #0
	adc	r0, r0, #0
	str	r0, [sp, #120]                  @ 4-byte Spill
	msr	APSR_nzcvq, r7
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r4, [sp, #96]                   @ 4-byte Reload
	add	r6, r6, r0
	mov	r0, #0
	adc	r7, r0, #0
	cmp	r6, r11
	movwlo	r5, #1
	ldr	r11, [sp, #80]                  @ 4-byte Reload
	orreq	r5, r5, r7
	ldr	r7, [r8, #60]
	add	r4, r4, r5
	str	r1, [lr]
	add	r7, r4, r7
	str	r12, [lr, #20]
	str	r11, [lr, #4]
	str	r2, [lr, #8]
	mov	r12, r7
	str	r10, [lr, #12]
	str	r9, [lr, #16]
	str	r6, [lr, #24]
	str	r7, [lr, #28]
	str	r5, [sp, #52]                   @ 4-byte Spill
	ldr	r5, [r8, #36]
	ldr	r4, [r8, #32]
	adds	r1, r1, r5
	str	r5, [sp, #56]                   @ 4-byte Spill
	str	r1, [sp, #124]                  @ 4-byte Spill
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	ldr	r5, [sp, #120]                  @ 4-byte Reload
	str	r4, [sp, #40]                   @ 4-byte Spill
	ldr	r4, [r8, #40]
	adc	r5, r5, r1
	str	r7, [sp, #44]                   @ 4-byte Spill
	add	r1, r5, r4
	adc	r5, r0, #0
	cmp	r1, r11
	mov	r4, #0
	movwlo	r4, #1
	ldr	r7, [r8, #44]
	orreq	r4, r4, r5
	str	r1, [sp, #120]                  @ 4-byte Spill
	add	r5, r2, r4
	add	r0, r5, r7
	mov	r5, #0
	cmp	r0, r2
	ldr	r2, [r8, #52]
	movwlo	r5, #1
	str	r0, [sp, #84]                   @ 4-byte Spill
	orreq	r5, r5, r4
	mov	r4, #0
	add	r1, r10, r5
	add	r0, r1, r2
	str	r0, [sp, #80]                   @ 4-byte Spill
	cmp	r0, r10
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	movwlo	r4, #1
	mov	r1, #0
	orreq	r4, r4, r5
	adds	r3, r0, r3
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r5, [r8, #56]
	adc	r3, r4, r0
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	add	r11, r3, r5
	mov	r3, #0
	cmp	r11, r9
	movwlo	r3, #1
	orreq	r3, r3, r4
	msr	APSR_nzcvq, r0
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r4, [r8, #60]
	adc	r5, r3, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	add	r10, r5, r4
	mov	r4, #0
	cmp	r10, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	movwlo	r4, #1
	ldr	r9, [sp, #84]                   @ 4-byte Reload
	orreq	r4, r4, r3
	str	r9, [lr, #8]
	add	r3, r6, r4
	str	r11, [lr, #16]
	add	r7, r3, r2
	ldr	r2, [sp, #124]                  @ 4-byte Reload
	cmp	r7, r6
	ldr	r3, [sp, #120]                  @ 4-byte Reload
	movwlo	r1, #1
	str	r2, [lr]
	orreq	r1, r1, r4
	str	r1, [sp, #48]                   @ 4-byte Spill
	add	r6, r12, r1
	str	r3, [lr, #4]
	add	r1, r6, r0
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r0, [lr, #12]
	str	r10, [lr, #20]
	str	r7, [lr, #24]
	str	r1, [lr, #28]
	str	r1, [sp, #92]                   @ 4-byte Spill
	ldr	r1, [r8, #32]
	ldr	r5, [r8, #44]
	str	r1, [sp, #88]                   @ 4-byte Spill
	ldr	r1, [r8, #40]
	cmp	r2, r5
	ldr	r4, [r8, #48]
	mov	r2, #0
	str	r1, [sp, #116]                  @ 4-byte Spill
	mov	r1, #0
	movwlo	r1, #1
	add	r6, r4, r1
	cmp	r3, r6
	mov	r4, #0
	movwlo	r4, #1
	cmp	r6, #0
	ldr	r12, [r8, #52]
	orreq	r4, r4, r1
	mov	r3, #0
	mov	r1, #0
	add	r12, r12, r4
	cmp	r9, r12
	movwlo	r2, #1
	cmp	r12, #0
	orreq	r2, r2, r4
	mov	r4, #0
	cmp	r0, r2
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	movwlo	r3, #1
	cmp	r11, r3
	movwlo	r4, #1
	cmp	r10, r4
	movwlo	r1, #1
	add	r9, r0, r1
	cmp	r7, r9
	mov	r0, #0
	movwlo	r0, #1
	cmp	r9, #0
	orreq	r0, r0, r1
	ldr	r1, [sp, #116]                  @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	sub	r10, r10, r4
	add	r0, r1, r0
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	sub	r9, r7, r9
	ldr	r7, [sp, #124]                  @ 4-byte Reload
	sub	r4, r1, r2
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [sp, #120]                  @ 4-byte Reload
	sub	r7, r7, r5
	sub	r1, r1, r12
	str	r5, [sp, #80]                   @ 4-byte Spill
	str	r1, [lr, #8]
	sub	r3, r11, r3
	mov	r5, r1
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldr	r1, [sp, #92]                   @ 4-byte Reload
	sub	r2, r2, r6
	str	r0, [sp, #32]                   @ 4-byte Spill
	mov	r12, r10
	sub	r0, r1, r0
	str	r7, [lr]
	str	r2, [lr, #4]
	mov	r11, r3
	str	r3, [lr, #16]
	mov	r3, #0
	str	r10, [lr, #20]
	mov	r1, #0
	str	r4, [lr, #12]
	str	r9, [lr, #24]
	str	r0, [lr, #28]
	ldr	r10, [r8, #48]
	ldr	r6, [r8, #52]
	str	r7, [sp, #124]                  @ 4-byte Spill
	cmp	r7, r10
	mov	r7, #0
	str	r9, [sp, #116]                  @ 4-byte Spill
	movwlo	r7, #1
	add	r9, r6, r7
	cmp	r2, r9
	str	r2, [sp, #84]                   @ 4-byte Spill
	movwlo	r3, #1
	cmp	r9, #0
	orreq	r3, r3, r7
	ldr	r7, [r8, #56]
	mov	r2, #0
	str	r0, [sp, #88]                   @ 4-byte Spill
	add	r7, r7, r3
	ldr	r0, [r8, #36]
	cmp	r5, r7
	str	r0, [sp, #40]                   @ 4-byte Spill
	movwlo	r1, #1
	cmp	r7, #0
	orreq	r1, r1, r3
	ldr	r3, [r8, #60]
	ldr	r0, [r8, #44]
	mov	r6, r11
	add	r5, r3, r1
	str	r0, [sp, #120]                  @ 4-byte Spill
	cmp	r4, r5
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	movwlo	r2, #1
	cmp	r5, #0
	orreq	r2, r2, r1
	mov	r3, #0
	cmp	r11, r2
	str	r4, [sp, #12]                   @ 4-byte Spill
	movwlo	r3, #1
	cmp	r12, r3
	mov	r1, #0
	ldr	r4, [sp, #116]                  @ 4-byte Reload
	mov	r11, r12
	movwlo	r1, #1
	add	r12, r0, r1
	mov	r0, #0
	cmp	r4, r12
	sub	r2, r6, r2
	movwlo	r0, #1
	cmp	r12, #0
	orreq	r0, r0, r1
	ldr	r1, [sp, #120]                  @ 4-byte Reload
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	sub	r3, r11, r3
	add	r1, r1, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	sub	r0, r4, r12
	sub	r4, r6, r5
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	ldr	r5, [sp, #124]                  @ 4-byte Reload
	sub	r7, r6, r7
	ldr	r6, [sp, #84]                   @ 4-byte Reload
	str	r0, [sp, #116]                  @ 4-byte Spill
	sub	r5, r5, r10
	str	r0, [lr, #24]
	sub	r6, r6, r9
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r5, [lr]
	sub	r0, r0, r1
	str	r6, [lr, #4]
	str	r7, [lr, #8]
	str	r4, [lr, #12]
	str	r3, [lr, #20]
	str	r2, [lr, #16]
	str	r0, [lr, #28]
	ldr	r11, [r8, #52]
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [r8, #56]
	cmp	r5, r11
	str	r2, [sp, #4]                    @ 4-byte Spill
	mov	r2, #0
	str	r10, [sp, #40]                  @ 4-byte Spill
	movwlo	r2, #1
	add	r10, r1, r2
	str	r3, [sp, #28]                   @ 4-byte Spill
	cmp	r6, r10
	mov	r3, #0
	movwlo	r3, #1
	cmp	r10, #0
	ldr	r1, [r8, #60]
	orreq	r3, r3, r2
	str	r7, [sp, #16]                   @ 4-byte Spill
	mov	r2, #0
	add	r9, r1, r3
	str	r6, [sp, #120]                  @ 4-byte Spill
	cmp	r7, r9
	add	r7, r8, #32
	movwlo	r2, #1
	cmp	r9, #0
	orreq	r2, r2, r3
	ldm	r7, {r3, r6, r7}
	add	r12, r3, r2
	mov	r3, #0
	cmp	r4, r12
	str	r4, [sp]                        @ 4-byte Spill
	movwlo	r3, #1
	cmp	r12, #0
	orreq	r3, r3, r2
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	add	r2, r6, r3
	mov	r6, #0
	cmp	r4, r2
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	movwlo	r6, #1
	cmp	r2, #0
	orreq	r6, r6, r3
	mov	r3, #0
	add	r7, r7, r6
	str	r0, [sp, #84]                   @ 4-byte Spill
	cmp	r1, r7
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r6
	sub	r7, r1, r7
	cmp	r0, r3
	sub	r3, r0, r3
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r6, #0
	str	r5, [sp, #124]                  @ 4-byte Spill
	movwlo	r6, #1
	sub	r1, r0, r12
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r5, [r8, #48]
	sub	r2, r4, r2
	sub	r0, r0, r9
	ldr	r4, [sp, #124]                  @ 4-byte Reload
	add	r5, r5, r6
	str	r6, [sp, #12]                   @ 4-byte Spill
	ldr	r6, [sp, #120]                  @ 4-byte Reload
	mov	r9, r0
	str	r0, [lr, #8]
	sub	r4, r4, r11
	str	r0, [sp]                        @ 4-byte Spill
	sub	r6, r6, r10
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	stm	lr, {r4, r6}
	sub	r0, r0, r5
	str	r1, [lr, #12]
	str	r2, [lr, #16]
	str	r7, [lr, #20]
	str	r3, [lr, #24]
	str	r0, [lr, #28]
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [r8, #44]
	str	r11, [sp, #28]                  @ 4-byte Spill
	mov	r11, r1
	ldr	r1, [r8, #56]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r8, #52]
	subs	r4, r4, r1
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [r8, #60]
	str	r1, [sp, #16]                   @ 4-byte Spill
	mov	r1, #0
	movwlo	r1, #1
	add	r0, r0, r1
	ldr	r12, [r8, #36]
	cmp	r6, r0
	ldr	r10, [r8, #40]
	mov	r8, #0
	movwlo	r8, #1
	cmp	r0, #0
	orreq	r8, r8, r1
	mov	r1, #0
	cmp	r9, r8
	str	r6, [sp, #116]                  @ 4-byte Spill
	mov	r6, r0
	movwlo	r1, #1
	add	r0, r12, r1
	mov	r12, #0
	cmp	r11, r0
	str	r5, [sp, #8]                    @ 4-byte Spill
	movwlo	r12, #1
	cmp	r0, #0
	orreq	r12, r12, r1
	mov	r1, #0
	add	r10, r10, r12
	mov	r5, r2
	cmp	r2, r10
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	movwlo	r1, #1
	cmp	r10, #0
	orreq	r1, r1, r12
	mov	r9, r11
	add	r12, r2, r1
	mov	r11, #0
	cmp	r7, r12
	ldr	r2, [sp, #120]                  @ 4-byte Reload
	movwlo	r11, #1
	cmp	r12, #0
	orreq	r11, r11, r1
	mov	r1, #0
	cmp	r3, r11
	str	r4, [lr]
	movwlo	r1, #1
	add	r4, r2, r1
	sub	r2, r3, r11
	sub	r3, r7, r12
	sub	r7, r5, r10
	ldr	r5, [sp]                        @ 4-byte Reload
	mov	r11, lr
	sub	r0, r9, r0
	sub	lr, r5, r8
	ldr	r5, [sp, #116]                  @ 4-byte Reload
	str	r0, [sp, #120]                  @ 4-byte Spill
	sub	r8, r5, r6
	ldr	r6, [sp, #124]                  @ 4-byte Reload
	str	r0, [r11, #12]
	subs	r10, r6, r4
	str	r7, [sp, #116]                  @ 4-byte Spill
	str	r7, [r11, #16]
	mov	r7, r2
	str	r2, [r11, #24]
	str	r3, [sp, #124]                  @ 4-byte Spill
	str	r3, [r11, #20]
	mov	r3, #0
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	movwlo	r3, #1
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	cmp	r4, #0
	orreq	r3, r3, r1
	mov	r1, #0
	cmp	r0, r2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	movwlo	r1, #1
	cmp	r2, #0
	orreq	r1, r1, r0
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	mov	r2, #0
	mov	r4, #0
	ldr	r5, [sp, #100]                  @ 4-byte Reload
	cmp	r0, r6
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	movwlo	r2, #1
	cmp	r6, #0
	orreq	r2, r2, r0
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	stmib	r11, {r8, lr}
	cmp	r0, r6
	movwlo	r4, #1
	cmp	r6, #0
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	str	r10, [r11, #28]
	orreq	r4, r4, r6
	ldr	r6, [sp, #68]                   @ 4-byte Reload
	add	r2, r4, r2
	ldr	r4, [sp, #52]                   @ 4-byte Reload
	add	r1, r2, r1
	add	r2, r1, r3
	ldr	r3, [sp, #44]                   @ 4-byte Reload
	mov	r1, #0
	cmp	r0, r3
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	movwlo	r1, #1
	orreq	r1, r1, r0
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	cmp	r3, r0
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r4
	cmp	r0, r5
	mov	r4, #0
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	movwlo	r4, #1
	orreq	r4, r4, r0
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	cmp	r5, r0
	mov	r5, #0
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	movwlo	r5, #1
	orreq	r5, r5, r0
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	cmp	r6, r0
	mov	r6, #0
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	movwlo	r6, #1
	orreq	r6, r6, r0
	add	r5, r5, r6
	add	r4, r5, r4
	add	r3, r4, r3
	add	r1, r3, r1
	subs	r2, r1, r2
	bmi	.LBB24_11
@ %bb.1:
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	mov	r3, r7
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	add	r1, r0, r1
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	add	r1, r1, r0
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	sub	r1, r1, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	sub	r1, r1, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	sub	r1, r1, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	sub	r1, r1, r0
	add	r12, r1, #1
	b	.LBB24_3
.LBB24_2:                               @   in Loop: Header=BB24_3 Depth=1
	cmp	r12, #0
	mov	r0, #0
	mvneq	r0, #0
	cmp	r8, r0
	mov	r1, #0
	mov	r10, r2
	movwlo	r1, #1
	mov	r2, r3
	cmp	r12, #0
	mov	r3, r12
	movwne	r3, #1
	orr	r1, r3, r1
	sub	r3, r1, #1
	mov	r5, #0
	cmp	lr, r3
	sub	lr, lr, r3
	movwlo	r5, #1
	orr	r1, r1, r5
	subs	r4, r4, r1
	mov	r1, #0
	movwlo	r1, #1
	subs	r7, r7, r1
	mov	r1, #0
	mov	r3, r2
	movwlo	r1, #1
	subs	r6, r6, r1
	mov	r1, #1
	sub	r8, r8, r0
	movwlo	r1, #2
	subs	r3, r3, r1
	mov	r0, #0
	mov	r1, #0
	mvnhs	r0, #0
	mov	r2, r10
	sub	r10, r9, r0
	movwlo	r1, #1
	cmp	r9, r0
	mov	r0, #0
	movwlo	r0, #1
	str	r12, [r11]
	orr	r0, r1, r0
	stmib	r11, {r8, lr}
	sub	r2, r2, r0
	str	r4, [sp, #120]                  @ 4-byte Spill
	add	r12, r12, #1
	str	r4, [r11, #12]
	str	r7, [sp, #116]                  @ 4-byte Spill
	str	r7, [r11, #16]
	str	r6, [sp, #124]                  @ 4-byte Spill
	str	r6, [r11, #20]
	str	r3, [r11, #24]
	str	r10, [r11, #28]
.LBB24_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [sp, #124]                  @ 4-byte Reload
	mov	r9, r10
	ldr	r4, [sp, #120]                  @ 4-byte Reload
	cmp	r2, #0
	ldr	r7, [sp, #116]                  @ 4-byte Reload
	bne	.LBB24_2
@ %bb.4:                                @   in Loop: Header=BB24_3 Depth=1
	cmn	r9, #1
	bne	.LBB24_10
@ %bb.5:                                @   in Loop: Header=BB24_3 Depth=1
	cmp	r3, #0
	beq	.LBB24_10
@ %bb.6:                                @   in Loop: Header=BB24_3 Depth=1
	cmp	r3, #1
	cmpeq	r6, #0
	bne	.LBB24_2
@ %bb.7:                                @   in Loop: Header=BB24_3 Depth=1
	cmp	r7, #0
	cmpeq	r4, #0
	bne	.LBB24_2
@ %bb.8:                                @   in Loop: Header=BB24_3 Depth=1
	cmn	lr, #1
	bne	.LBB24_10
@ %bb.9:                                @   in Loop: Header=BB24_3 Depth=1
	cmn	r8, #1
	cmpeq	r12, #0
	beq	.LBB24_2
.LBB24_10:
	add	sp, sp, #128
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB24_11:
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	mov	r12, r2
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	str	r11, [sp, #108]                 @ 4-byte Spill
	add	r1, r0, r1
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r9, [sp, #124]                  @ 4-byte Reload
	add	r1, r1, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r6, [sp, #120]                  @ 4-byte Reload
	add	r1, r1, r0
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r11, [sp, #116]                 @ 4-byte Reload
	sub	r1, r1, r0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	sub	r1, r1, r0
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	sub	r2, r1, r0
.LBB24_12:                              @ =>This Inner Loop Header: Depth=1
	cmp	r2, #0
	mov	r1, r2
	movwne	r1, #1
	add	r3, r8, r1
	sub	r5, r3, #1
	mov	r3, #0
	cmp	r5, r8
	mov	r0, #0
	movwlo	r3, #1
	add	r2, r2, #1
	orreq	r3, r3, r1
	mov	r8, r5
	add	r1, lr, r3
	sub	r4, r1, #1
	mov	r1, #0
	cmp	r4, lr
	movwlo	r1, #1
	mov	lr, r4
	orreq	r1, r1, r3
	adds	r6, r6, r1
	adcs	r11, r11, #0
	adcs	r9, r9, #0
	adc	r3, r7, #1
	adc	r1, r0, #0
	cmp	r3, r7
	mov	r7, #0
	movwlo	r7, #1
	orreq	r7, r7, r1
	add	r1, r10, r7
	sub	r1, r1, #1
	cmp	r1, r10
	movwlo	r0, #1
	mov	r10, r1
	orreq	r0, r0, r7
	mov	r7, r3
	adds	r12, r0, r12
	bmi	.LBB24_12
@ %bb.13:
	rsb	r0, r2, #0
	ldr	r2, [sp, #108]                  @ 4-byte Reload
	stm	r2, {r0, r5}
	add	r0, r2, #8
	stm	r0, {r4, r6, r11}
	str	r9, [r2, #20]
	str	r3, [r2, #24]
	str	r1, [r2, #28]
	add	sp, sp, #128
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
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
	subs	r2, r2, #1
	orr	r1, r3, r1
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
	ldrsb	r3, [r3]
	add	r9, sp, #32
	mov	r8, r1
	mov	r4, r0
	mov	r1, r2
	mov	r0, r9
	mov	r7, r2
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r6, sp
	mov	r0, r6
	mov	r1, r9
	blx	r2
	add	r9, sp, #32
	ldrsb	r3, [r5]
	mov	r1, r4
	mov	r2, r6
	mov	r0, r9
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r4
	mov	r1, r9
	blx	r2
	add	r4, sp, #32
	ldrsb	r3, [r5]
	mov	r1, r6
	mov	r2, r7
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	add	r4, sp, #32
	ldrsb	r3, [r5]
	mov	r1, r8
	mov	r2, r6
	mov	r0, r4
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
	ldr	r8, [sp, #152]
	mov	r9, r3
	mov	r11, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldrb	lr, [r8], #4
	sxtb	r0, lr
	cmp	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	blt	.LBB27_6
@ %bb.1:
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	add	r0, sp, #16
	mov	r7, #0
	mov	r1, r2
	mov	r3, lr
.LBB27_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4], #4
	ldr	r12, [r1], #4
	add	r6, r5, r7
	mov	r5, #0
	cmp	r12, r6
	movwlo	r5, #1
	cmp	r6, #0
	orreq	r5, r5, r7
	sub	r7, r12, r6
	str	r7, [r0], #4
	subs	r3, r3, #1
	mov	r7, r5
	bne	.LBB27_2
@ %bb.3:
	cmp	r5, #0
	beq	.LBB27_6
@ %bb.4:
	add	r0, sp, #16
	mov	r4, #0
	mov	r1, r8
	mov	r6, lr
.LBB27_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	ldr	r3, [r1], #4
	add	r5, r7, r4
	add	r5, r5, r3
	mov	r3, #0
	cmp	r5, r7
	str	r5, [r0], #4
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r6, r6, #1
	mov	r4, r3
	bne	.LBB27_5
.LBB27_6:
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	add	r5, sp, #52
	add	r10, sp, #16
	mov	r4, r2
	mov	r0, r5
	str	lr, [sp, #8]                    @ 4-byte Spill
	mov	r1, r10
	mov	r2, r10
	mov	r3, r7
	bl	uECC_vli_mult
	ldr	r6, [sp, #152]
	mov	r0, r10
	mov	r1, r5
	ldr	r2, [r6, #172]
	blx	r2
	ldr	r5, [sp, #12]                   @ 4-byte Reload
	add	r0, sp, #52
	ldrsb	r3, [r6]
	mov	r2, r10
	mov	r1, r5
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	add	r1, sp, #52
	mov	r0, r5
	blx	r2
	add	r5, sp, #52
	ldrsb	r3, [r6]
	mov	r1, r4
	mov	r2, r10
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r4
	mov	r1, r5
	str	r4, [sp]                        @ 4-byte Spill
	blx	r2
	cmp	r7, #1
	blt	.LBB27_27
@ %bb.7:
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	mov	r0, #0
	mov	r1, #0
.LBB27_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r11, r0, lsl #2]
	ldr	r3, [r9, r0, lsl #2]
	add	r7, r2, r1
	subs	r2, r3, r7
	str	r2, [r9, r0, lsl #2]
	mov	r2, #0
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	add	r0, r0, #1
	cmp	r6, r0
	mov	r1, r2
	bne	.LBB27_8
@ %bb.9:
	cmp	r2, #0
	beq	.LBB27_12
@ %bb.10:
	mov	r5, #0
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
.LBB27_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r4, r7, r5
	add	r6, r4, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r5
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB27_11
.LBB27_12:
	ldr	r4, [sp, #152]
	add	r7, sp, #52
	mov	r1, r9
	mov	r2, r9
	mov	r0, r7
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r10
	mov	r1, r7
	blx	r2
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	mov	r2, #0
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	mov	r1, r12
	mov	r0, lr
.LBB27_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r10]
	add	r6, r3, r2
	mov	r3, #0
	cmp	r7, r6
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r10], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB27_13
@ %bb.14:
	cmp	r3, #0
	beq	.LBB27_17
@ %bb.15:
	add	r0, sp, #16
	mov	r4, #0
	mov	r1, r8
	mov	r2, r12
.LBB27_16:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB27_16
.LBB27_17:
	ldr	r10, [sp]                       @ 4-byte Reload
	add	r0, sp, #16
	mov	r7, #0
	mov	r2, r12
	mov	r1, r10
.LBB27_18:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r6, [r0]
	add	r5, r3, r7
	mov	r3, #0
	cmp	r6, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r7
	sub	r7, r6, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r7, r3
	bne	.LBB27_18
@ %bb.19:
	cmp	r3, #0
	beq	.LBB27_22
@ %bb.20:
	add	r0, sp, #16
	mov	r4, #0
	mov	r1, r8
	mov	r2, r12
.LBB27_21:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB27_21
.LBB27_22:
	mov	r7, #0
	mov	r0, r10
	mov	r1, lr
	mov	r2, r12
.LBB27_23:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r6, [r0]
	add	r5, r3, r7
	mov	r3, #0
	cmp	r6, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r7
	sub	r7, r6, r5
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r7, r3
	bne	.LBB27_23
@ %bb.24:
	cmp	r3, #0
	beq	.LBB27_28
@ %bb.25:
	mov	r4, #0
	mov	r0, r10
	mov	r1, r8
	mov	r2, r12
.LBB27_26:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB27_26
	b	.LBB27_28
.LBB27_27:
	add	r5, sp, #52
	ldrsb	r3, [r6]
	mov	r1, r9
	mov	r2, r9
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	add	r0, sp, #16
	mov	r1, r5
	blx	r2
	ldr	r10, [sp]                       @ 4-byte Reload
.LBB27_28:
	ldr	r4, [sp, #152]
	add	r5, sp, #52
	mov	r1, r11
	mov	r2, r10
	mov	r0, r5
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r11
	mov	r1, r5
	blx	r2
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB27_40
@ %bb.29:
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	add	r1, sp, #16
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	mov	r2, #0
.LBB27_30:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r0, lsl #2]
	ldr	r7, [r4, r0, lsl #2]
	add	r6, r3, r2
	subs	r3, r7, r6
	str	r3, [r10, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	add	r0, r0, #1
	cmp	r5, r0
	mov	r2, r3
	bne	.LBB27_30
@ %bb.31:
	cmp	r3, #0
	beq	.LBB27_34
@ %bb.32:
	mov	r4, #0
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
.LBB27_33:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB27_33
.LBB27_34:
	ldr	r4, [sp, #152]
	add	r5, sp, #52
	mov	r1, r9
	mov	r2, r10
	mov	r0, r5
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r9
	mov	r1, r5
	blx	r2
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	mov	r2, #0
	mov	r0, r9
	mov	r1, r5
.LBB27_35:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r11], #4
	ldr	r7, [r0]
	add	r6, r3, r2
	mov	r3, #0
	cmp	r7, r6
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	sub	r2, r7, r6
	str	r2, [r0], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB27_35
@ %bb.36:
	cmp	r3, #0
	beq	.LBB27_39
@ %bb.37:
	mov	r1, #0
	mov	r0, r5
.LBB27_38:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r9]
	ldr	r3, [r8], #4
	add	r7, r2, r1
	add	r3, r7, r3
	str	r3, [r9], #4
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r1
	subs	r0, r0, #1
	mov	r1, r2
	bne	.LBB27_38
.LBB27_39:
	add	r1, sp, #16
	lsl	r2, r5, #2
	mov	r0, r10
	bl	memcpy
	add	sp, sp, #116
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB27_40:
	add	r5, sp, #52
	ldrsb	r3, [r4]
	mov	r1, r9
	mov	r2, r10
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r9
	mov	r1, r5
	blx	r2
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
	.pad	#308
	sub	sp, sp, #308
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r11, r3
	ldr	r0, [sp, #348]
	str	r1, [sp, #32]                   @ 4-byte Spill
	str	r2, [sp, #44]                   @ 4-byte Spill
	ldrb	r7, [r0]
	add	r0, sp, #112
	add	r4, r0, #32
	str	r7, [sp, #36]                   @ 4-byte Spill
	sxtb	r9, r7
	cmp	r9, #1
	blt	.LBB28_3
@ %bb.1:
	lsl	r5, r7, #2
	mov	r0, r4
	mov	r2, r5
	mov	r6, r1
	bl	memcpy
	add	r10, sp, #48
	add	r1, r6, r7, lsl #2
	add	r0, r10, #32
	mov	r2, r5
	str	r1, [sp, #28]                   @ 4-byte Spill
	mov	r8, r0
	bl	memcpy
	add	r0, sp, #176
	cmp	r11, #0
	beq	.LBB28_4
@ %bb.2:
	mov	r1, r11
	mov	r2, r5
	bl	memcpy
	b	.LBB28_5
.LBB28_3:
	add	r0, r1, r9, lsl #2
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r0, sp, #48
	cmp	r11, #0
	add	r5, r0, #32
	moveq	r0, #1
	streq	r0, [sp, #176]
	str	r9, [sp, #16]                   @ 4-byte Spill
	ldr	r6, [sp, #348]
	b	.LBB28_6
.LBB28_4:
	mov	r1, #0
	mov	r2, r5
	bl	memset
	mov	r0, #1
	str	r0, [sp, #176]
.LBB28_5:
	add	r0, sp, #112
	mov	r1, r4
	mov	r2, r5
	ldr	r6, [sp, #348]
	bl	memmove
	add	r1, r10, #32
	mov	r0, r10
	mov	r2, r5
	bl	memmove
	mov	r5, r8
	str	r7, [sp, #16]                   @ 4-byte Spill
.LBB28_6:
	add	r8, sp, #176
	add	r10, sp, #244
	mov	r3, r9
	str	r9, [sp, #40]                   @ 4-byte Spill
	mov	r0, r10
	mov	r1, r8
	mov	r2, r8
	bl	uECC_vli_mult
	add	r7, sp, #212
	ldr	r2, [r6, #172]
	mov	r1, r10
	mov	r0, r7
	blx	r2
	add	r9, sp, #244
	ldrsb	r3, [r6]
	mov	r1, r4
	mov	r2, r7
	mov	r0, r9
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r4
	mov	r1, r9
	blx	r2
	add	r9, sp, #244
	ldrsb	r3, [r6]
	mov	r1, r7
	mov	r2, r8
	mov	r0, r9
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r7
	mov	r1, r9
	blx	r2
	add	r9, sp, #244
	ldrsb	r3, [r6]
	mov	r1, r5
	mov	r2, r7
	mov	r0, r9
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r5
	mov	r1, r9
	blx	r2
	ldr	r7, [r6, #164]
	mov	r0, r4
	mov	r1, r5
	mov	r2, r8
	mov	r3, r6
	str	r4, [sp, #12]                   @ 4-byte Spill
	blx	r7
	add	r4, sp, #244
	ldrsb	r3, [r6]
	mov	r1, r8
	mov	r2, r8
	mov	r0, r4
	bl	uECC_vli_mult
	add	r7, sp, #212
	ldr	r2, [r6, #172]
	mov	r1, r4
	mov	r0, r7
	blx	r2
	add	r5, sp, #244
	add	r4, sp, #112
	ldrsb	r3, [r6]
	mov	r2, r7
	mov	r0, r5
	mov	r1, r4
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r4
	mov	r1, r5
	blx	r2
	add	r5, sp, #244
	ldrsb	r3, [r6]
	mov	r1, r7
	mov	r2, r8
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r7
	mov	r1, r5
	blx	r2
	add	r9, sp, #244
	add	r5, sp, #48
	ldrsb	r3, [r6]
	mov	r2, r7
	mov	r0, r9
	mov	r1, r5
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r5
	mov	r1, r9
	blx	r2
	ldr	r0, [sp, #344]
	mov	r8, r6
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	sub	r0, r0, #2
	sxth	r0, r0
	cmp	r0, #1
	blt	.LBB28_9
@ %bb.7:
	uxth	r11, r0
.LBB28_8:                               @ =>This Inner Loop Header: Depth=1
	lsr	r0, r11, #5
	mov	r2, #1
	ldr	r0, [r1, r0, lsl #2]
	and	r1, r11, #31
	str	r8, [sp]
	ands	r0, r0, r2, lsl r1
	clz	r1, r0
	movwne	r0, #1
	add	r7, r4, r0, lsl #5
	add	r6, r5, r0, lsl #5
	lsr	r0, r1, #5
	add	r9, r4, r0, lsl #5
	add	r10, r5, r0, lsl #5
	mov	r0, r7
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	XYcZ_addC
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	mov	r3, r6
	str	r8, [sp]
	bl	XYcZ_add
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	subs	r11, r11, #1
	bhi	.LBB28_8
.LBB28_9:
	ldr	r0, [r1]
	str	r8, [sp]
	and	r0, r0, #1
	add	r10, r5, r0, lsl #5
	add	r9, r4, r0, lsl #5
	eor	r0, r0, #1
	mov	r1, r10
	add	r2, r4, r0, lsl #5
	add	r3, r5, r0, lsl #5
	mov	r0, r9
	str	r2, [sp, #44]                   @ 4-byte Spill
	str	r3, [sp, #24]                   @ 4-byte Spill
	bl	XYcZ_addC
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	add	r11, r8, #4
	cmp	r0, #1
	blt	.LBB28_15
@ %bb.10:
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	add	r5, sp, #176
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	mov	r1, #0
.LBB28_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r6, #-32]
	ldr	r3, [r6], #4
	add	r7, r2, r1
	mov	r2, #0
	cmp	r3, r7
	movwlo	r2, #1
	cmp	r7, #0
	orreq	r2, r2, r1
	sub	r1, r3, r7
	str	r1, [r5], #4
	subs	r0, r0, #1
	mov	r1, r2
	bne	.LBB28_11
@ %bb.12:
	cmp	r2, #0
	beq	.LBB28_15
@ %bb.13:
	ldr	r2, [sp, #36]                   @ 4-byte Reload
	add	r0, sp, #176
	mov	r6, #0
	mov	r1, r11
.LBB28_14:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r5, [r1], #4
	add	r4, r7, r6
	add	r5, r4, r5
	str	r5, [r0], #4
	cmp	r5, r7
	movwlo	r3, #1
	orreq	r3, r3, r6
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB28_14
.LBB28_15:
	ldr	r8, [sp, #348]
	add	r5, sp, #244
	add	r4, sp, #176
	mov	r2, r10
	mov	r0, r5
	ldrsb	r3, [r8]
	mov	r1, r4
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r4
	mov	r1, r5
	blx	r2
	add	r5, sp, #244
	ldrsb	r3, [r8]
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r4
	mov	r1, r5
	blx	r2
	mov	r2, r11
	ldr	r11, [sp, #40]                  @ 4-byte Reload
	mov	r0, r4
	mov	r1, r4
	mov	r3, r11
	bl	uECC_vli_modInv
	add	r5, sp, #244
	ldrsb	r3, [r8]
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	mov	r1, r4
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r4
	mov	r1, r5
	blx	r2
	add	r5, sp, #244
	ldrsb	r3, [r8]
	mov	r1, r4
	mov	r2, r9
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r4
	mov	r1, r5
	blx	r2
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r2, r9
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	mov	r3, r10
	str	r8, [sp]
	bl	XYcZ_add
	add	r6, sp, #244
	ldrsb	r3, [r8]
	mov	r1, r4
	mov	r2, r4
	mov	r0, r6
	bl	uECC_vli_mult
	add	r5, sp, #212
	ldr	r2, [r8, #172]
	mov	r1, r6
	mov	r0, r5
	blx	r2
	add	r6, sp, #244
	add	r7, sp, #112
	ldrsb	r3, [r8]
	mov	r2, r5
	mov	r0, r6
	mov	r1, r7
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r7
	mov	r1, r6
	blx	r2
	add	r6, sp, #244
	ldrsb	r3, [r8]
	mov	r1, r5
	mov	r2, r4
	mov	r0, r6
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	add	r4, sp, #244
	add	r6, sp, #48
	ldrsb	r3, [r8]
	mov	r2, r5
	mov	r0, r4
	mov	r1, r6
	bl	uECC_vli_mult
	ldr	r2, [r8, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	cmp	r11, #1
	blt	.LBB28_17
@ %bb.16:
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	add	r1, sp, #112
	ldr	r5, [sp, #20]                   @ 4-byte Reload
	lsl	r4, r0, #2
	mov	r0, r5
	mov	r2, r4
	bl	memcpy
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r1, sp, #48
	mov	r2, r4
	add	r0, r5, r0, lsl #2
	bl	memcpy
.LBB28_17:
	add	sp, sp, #308
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
	ldr	r8, [sp, #216]
	mov	r11, r3
	mov	r10, r1
	str	r2, [sp, #4]                    @ 4-byte Spill
	ldrb	lr, [r8], #4
	sxtb	r1, lr
	cmp	r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	blt	.LBB29_6
@ %bb.1:
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	add	r5, sp, #84
	mov	r4, #0
	mov	r2, r0
	mov	r3, lr
.LBB29_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2], #4
	ldr	r12, [r1], #4
	add	r7, r6, r4
	mov	r6, #0
	cmp	r12, r7
	movwlo	r6, #1
	cmp	r7, #0
	orreq	r6, r6, r4
	sub	r7, r12, r7
	str	r7, [r5], #4
	subs	r3, r3, #1
	mov	r4, r6
	bne	.LBB29_2
@ %bb.3:
	cmp	r6, #0
	beq	.LBB29_6
@ %bb.4:
	add	r6, sp, #84
	mov	r4, #0
	mov	r1, r8
	mov	r2, lr
.LBB29_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r6]
	ldr	r3, [r1], #4
	add	r5, r7, r4
	add	r5, r5, r3
	mov	r3, #0
	cmp	r5, r7
	str	r5, [r6], #4
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_5
.LBB29_6:
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	add	r9, sp, #84
	add	r4, sp, #116
	mov	r5, r0
	mov	r1, r9
	mov	r2, r9
	mov	r0, r4
	mov	r3, r7
	str	lr, [sp, #8]                    @ 4-byte Spill
	bl	uECC_vli_mult
	ldr	r6, [sp, #216]
	mov	r0, r9
	mov	r1, r4
	ldr	r2, [r6, #172]
	blx	r2
	add	r4, sp, #116
	ldrsb	r3, [r6]
	mov	r1, r5
	mov	r2, r9
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r5
	mov	r1, r4
	str	r5, [sp]                        @ 4-byte Spill
	blx	r2
	ldr	r5, [sp, #4]                    @ 4-byte Reload
	add	r4, sp, #116
	ldrsb	r3, [r6]
	mov	r2, r9
	mov	r0, r4
	mov	r1, r5
	bl	uECC_vli_mult
	ldr	r2, [r6, #172]
	mov	r0, r5
	mov	r1, r4
	blx	r2
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	cmp	r7, #1
	blt	.LBB29_10
@ %bb.7:
	add	r0, sp, #84
	mov	r5, #0
	mov	r1, r11
	mov	r2, r10
	mov	r3, r12
.LBB29_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	ldr	r4, [r2], #4
	add	r6, r7, r5
	add	r6, r6, r4
	mov	r4, #0
	cmp	r6, r7
	str	r6, [r0], #4
	movwlo	r4, #1
	orreq	r4, r4, r5
	subs	r3, r3, #1
	mov	r5, r4
	bne	.LBB29_8
@ %bb.9:
	cmp	r4, #0
	bne	.LBB29_14
.LBB29_10:
	add	r0, sp, #84
	mov	r1, r12
.LBB29_11:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB29_14
@ %bb.12:                               @   in Loop: Header=BB29_11 Depth=1
	uxtb	r2, r2
	ldr	r3, [r0, r2, lsl #2]
	ldr	r2, [r8, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB29_17
@ %bb.13:                               @   in Loop: Header=BB29_11 Depth=1
	bhs	.LBB29_11
.LBB29_14:
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB29_32
@ %bb.15:
	mov	r6, #0
	mov	r0, r8
	mov	r1, r12
.LBB29_16:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	mov	r2, #0
	ldr	r7, [r9]
	add	r3, r3, r6
	cmp	r7, r3
	movwlo	r2, #1
	cmp	r3, #0
	orreq	r2, r2, r6
	sub	r3, r7, r3
	str	r3, [r9], #4
	subs	r1, r1, #1
	mov	r6, r2
	bne	.LBB29_16
.LBB29_17:
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r9, [sp]                        @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB29_28
@ %bb.18:
	mov	r6, #0
	mov	r0, r11
	mov	r1, r10
	mov	r2, r12
.LBB29_19:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	mov	r3, #0
	cmp	r7, r5
	sub	r7, r7, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_19
@ %bb.20:
	ldr	lr, [sp, #4]                    @ 4-byte Reload
	cmp	r3, #0
	beq	.LBB29_23
@ %bb.21:
	mov	r4, #0
	mov	r0, r11
	mov	r1, r8
	mov	r2, r12
.LBB29_22:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_22
.LBB29_23:
	add	r0, sp, #52
	mov	r4, #0
	mov	r1, lr
	mov	r2, r9
	mov	r3, r12
.LBB29_24:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r2], #4
	mov	r6, #0
	ldr	r5, [r1], #4
	add	r7, r7, r4
	cmp	r5, r7
	movwlo	r6, #1
	cmp	r7, #0
	orreq	r6, r6, r4
	sub	r7, r5, r7
	str	r7, [r0], #4
	subs	r3, r3, #1
	mov	r4, r6
	bne	.LBB29_24
@ %bb.25:
	cmp	r6, #0
	beq	.LBB29_28
@ %bb.26:
	add	r0, sp, #52
	mov	r4, #0
	mov	r1, r8
	mov	r2, r12
.LBB29_27:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_27
.LBB29_28:
	ldr	r5, [sp, #216]
	add	r4, sp, #116
	add	r6, sp, #52
	mov	r1, r10
	mov	r0, r4
	ldrsb	r3, [r5]
	mov	r2, r6
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r10
	mov	r1, r4
	blx	r2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	ldr	lr, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB29_33
@ %bb.29:
	mov	r5, #0
	mov	r0, r9
	mov	r1, lr
	mov	r2, r12
.LBB29_30:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1], #4
	add	r4, r3, r5
	add	r7, r4, r7
	str	r7, [r6], #4
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r5
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB29_30
@ %bb.31:
	cmp	r3, #0
	bne	.LBB29_37
	b	.LBB29_33
.LBB29_32:
	ldr	r4, [sp, #216]
	add	r6, sp, #116
	add	r2, sp, #52
	mov	r1, r10
	mov	r0, r6
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r10
	mov	r1, r6
	blx	r2
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	ldm	sp, {r9, lr}                    @ 8-byte Folded Reload
.LBB29_33:
	add	r0, sp, #52
	mov	r1, r12
.LBB29_34:                              @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB29_37
@ %bb.35:                               @   in Loop: Header=BB29_34 Depth=1
	uxtb	r2, r2
	ldr	r3, [r0, r2, lsl #2]
	ldr	r2, [r8, r2, lsl #2]
	cmp	r2, r3
	bhi	.LBB29_40
@ %bb.36:                               @   in Loop: Header=BB29_34 Depth=1
	bhs	.LBB29_34
.LBB29_37:
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB29_40
@ %bb.38:
	add	r0, sp, #52
	mov	r5, #0
	mov	r1, r8
	mov	r2, r12
.LBB29_39:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r1], #4
	mov	r3, #0
	ldr	r6, [r0]
	add	r7, r7, r5
	cmp	r6, r7
	movwlo	r3, #1
	cmp	r7, #0
	orreq	r3, r3, r5
	sub	r7, r6, r7
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r5, r3
	bne	.LBB29_39
.LBB29_40:
	ldr	r4, [sp, #216]
	add	r6, sp, #116
	mov	r1, r11
	mov	r2, r11
	mov	r0, r6
	mov	r5, lr
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r5
	mov	r1, r6
	blx	r2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB29_56
@ %bb.41:
	ldr	r12, [sp, #8]                   @ 4-byte Reload
	add	r0, sp, #52
	mov	r6, #0
	mov	r1, r5
	mov	lr, r5
	mov	r2, r12
.LBB29_42:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	ldr	r7, [r1]
	add	r5, r3, r6
	mov	r3, #0
	cmp	r7, r5
	sub	r7, r7, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	str	r7, [r1], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_42
@ %bb.43:
	cmp	r3, #0
	beq	.LBB29_46
@ %bb.44:
	mov	r4, #0
	mov	r0, lr
	mov	r1, r8
	mov	r2, r12
.LBB29_45:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_45
.LBB29_46:
	add	r0, sp, #16
	mov	r1, #0
	mov	r2, #0
.LBB29_47:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [lr, r1, lsl #2]
	ldr	r7, [r9, r1, lsl #2]
	add	r6, r3, r2
	subs	r3, r7, r6
	str	r3, [r0, r1, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r6, #0
	orreq	r3, r3, r2
	add	r1, r1, #1
	cmp	r12, r1
	mov	r2, r3
	bne	.LBB29_47
@ %bb.48:
	cmp	r3, #0
	beq	.LBB29_51
@ %bb.49:
	mov	r4, #0
	mov	r1, r8
	mov	r2, r12
.LBB29_50:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0]
	mov	r3, #0
	ldr	r6, [r1], #4
	add	r5, r7, r4
	add	r6, r5, r6
	str	r6, [r0], #4
	cmp	r6, r7
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB29_50
.LBB29_51:
	ldr	r4, [sp, #216]
	add	r6, sp, #116
	add	r2, sp, #16
	mov	r1, r11
	mov	r0, r6
	ldrsb	r3, [r4]
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r11
	mov	r1, r6
	blx	r2
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	mov	r6, #0
	mov	r0, r11
	mov	r1, r10
	mov	r2, r4
.LBB29_52:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1], #4
	ldr	r7, [r0]
	add	r5, r3, r6
	mov	r3, #0
	cmp	r7, r5
	sub	r7, r7, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r6
	str	r7, [r0], #4
	subs	r2, r2, #1
	mov	r6, r3
	bne	.LBB29_52
@ %bb.53:
	cmp	r3, #0
	beq	.LBB29_57
@ %bb.54:
	mov	r2, #0
	mov	r0, r8
	mov	r1, r4
.LBB29_55:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r11]
	ldr	r7, [r0], #4
	add	r6, r3, r2
	add	r7, r6, r7
	str	r7, [r11], #4
	cmp	r7, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r2
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB29_55
	b	.LBB29_57
.LBB29_56:
	add	r6, sp, #116
	ldrsb	r3, [r4]
	add	r2, sp, #16
	mov	r1, r11
	mov	r0, r6
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r0, r11
	mov	r1, r6
	blx	r2
.LBB29_57:
	ldr	r11, [sp, #216]
	add	r7, sp, #116
	add	r1, sp, #84
	mov	r0, r7
	ldrsb	r3, [r11]
	mov	r2, r1
	bl	uECC_vli_mult
	add	r6, sp, #16
	ldr	r2, [r11, #172]
	mov	r1, r7
	mov	r0, r6
	blx	r2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB29_74
@ %bb.58:
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	add	r12, sp, #52
	mov	r1, #0
	mov	r2, #0
.LBB29_59:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r12, r1, lsl #2]
	ldr	r7, [r6, r1, lsl #2]
	add	r5, r3, r2
	subs	r3, r7, r5
	str	r3, [r6, r1, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r2
	add	r1, r1, #1
	cmp	lr, r1
	mov	r2, r3
	bne	.LBB29_59
@ %bb.60:
	cmp	r3, #0
	beq	.LBB29_63
@ %bb.61:
	mov	r0, #0
	mov	r1, r8
	mov	r2, lr
.LBB29_62:                              @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r6]
	mov	r3, #0
	ldr	r5, [r1], #4
	add	r4, r7, r0
	add	r5, r4, r5
	str	r5, [r6], #4
	cmp	r5, r7
	movwlo	r3, #1
	orreq	r3, r3, r0
	subs	r2, r2, #1
	mov	r0, r3
	bne	.LBB29_62
.LBB29_63:
	add	r2, sp, #16
	mov	r1, #0
	mov	r7, #0
.LBB29_64:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r9, r1, lsl #2]
	ldr	r3, [r2, r1, lsl #2]
	add	r0, r0, r7
	subs	r3, r3, r0
	str	r3, [r12, r1, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r0, #0
	orreq	r3, r3, r7
	add	r1, r1, #1
	cmp	lr, r1
	mov	r7, r3
	bne	.LBB29_64
@ %bb.65:
	cmp	r3, #0
	beq	.LBB29_68
@ %bb.66:
	mov	r3, #0
	mov	r1, r8
	mov	r2, lr
.LBB29_67:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r12]
	ldr	r7, [r1], #4
	add	r6, r0, r3
	add	r7, r6, r7
	str	r7, [r12], #4
	cmp	r7, r0
	mov	r0, #0
	movwlo	r0, #1
	orreq	r0, r0, r3
	subs	r2, r2, #1
	mov	r3, r0
	bne	.LBB29_67
.LBB29_68:
	add	r7, sp, #116
	add	r6, sp, #52
	ldrsb	r3, [r11]
	add	r2, sp, #84
	mov	r0, r7
	mov	r1, r6
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r6
	mov	r1, r7
	blx	r2
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	mov	r2, #0
	mov	r0, r10
	mov	r1, r4
.LBB29_69:                              @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0]
	ldr	r7, [r6], #4
	add	r5, r3, r2
	mov	r3, #0
	cmp	r7, r5
	movwlo	r3, #1
	cmp	r5, #0
	orreq	r3, r3, r2
	sub	r2, r7, r5
	str	r2, [r0], #4
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB29_69
@ %bb.70:
	cmp	r3, #0
	beq	.LBB29_73
@ %bb.71:
	mov	r1, #0
	mov	r0, r4
.LBB29_72:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r10]
	ldr	r3, [r8], #4
	add	r7, r2, r1
	add	r3, r7, r3
	str	r3, [r10], #4
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r1
	subs	r0, r0, #1
	mov	r1, r2
	bne	.LBB29_72
.LBB29_73:
	add	r1, sp, #16
	lsl	r2, r4, #2
	mov	r0, r9
	bl	memcpy
	add	sp, sp, #180
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB29_74:
	add	r4, sp, #116
	add	r5, sp, #52
	ldrsb	r3, [r11]
	add	r2, sp, #84
	mov	r0, r4
	mov	r1, r5
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r5
	mov	r1, r4
	blx	r2
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
	str	r3, [r6], #4
	cmp	r3, r4
	mov	r4, #0
	movwlo	r4, #1
	orreq	r4, r4, r11
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
	and	r3, r8, #31
	ldr	r0, [r1, r0, lsl #2]
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
	str	r6, [r2], #4
	cmp	r6, r3
	mov	r3, #0
	movwlo	r3, #1
	orreq	r3, r3, r7
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
	ldrh	r5, [r2, #2]
	mov	r9, r2
	add	r7, r2, #36
	mov	r10, r0
	add	r11, sp, #36
	add	r8, sp, #68
	sxth	r2, r5
	add	r0, r2, #31
	str	r11, [sp, #32]
	add	r0, r0, r0, lsr #27
	str	r8, [sp, #28]
	asr	r3, r0, #5
	sbfx	r0, r0, #5, #8
	cmp	r0, #1
	uxtb	r4, r3
	blt	.LBB31_4
@ %bb.1:
	add	r0, sp, #12
	add	r6, sp, #68
	stm	r0, {r2, r3, r5, r9}            @ 16-byte Folded Spill
	mov	r12, #0
	mov	r5, r7
	mov	r0, r4
.LBB31_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r1], #4
	ldr	lr, [r5], #4
	add	r9, r2, r12
	add	r3, r9, lr
	str	r3, [r6], #4
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r12
	subs	r0, r0, #1
	mov	r12, r2
	bne	.LBB31_2
@ %bb.3:
	add	r9, sp, #12
	cmp	r2, #0
	mov	r1, #0
	ldm	r9, {r2, r3, r5, r9}            @ 16-byte Folded Reload
	bne	.LBB31_6
.LBB31_4:
	lsl	r0, r3, #24
	mov	r1, #1
	cmp	r2, r0, asr #19
	bge	.LBB31_6
@ %bb.5:
	add	r1, sp, #68
	asr	r0, r2, #5
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
	str	r3, [r11], #4
	cmp	r3, r2
	mov	r2, #0
	movwlo	r2, #1
	orreq	r2, r2, r0
	subs	r4, r4, #1
	mov	r0, r2
	bne	.LBB31_8
.LBB31_9:
	add	r0, sp, #28
	mov	r3, #0
	ldr	r2, [r0, r1, lsl #2]
	add	r0, r5, #1
	add	r1, r9, #68
	sxth	r0, r0
	mov	r5, #0
	stm	sp, {r0, r9}
	mov	r0, r10
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
	subs	r0, r0, #1
	orr	r5, r1, r5
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
	add	r3, r3, #1
	add	r4, r4, r1
	bic	r5, r4, #3
	and	r4, r12, r4, lsl #3
	ldr	r5, [r2, r5]
	lsr	r4, r5, r4
	strb	r4, [r0, lr]
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
	mov	r6, r0
	add	r0, r2, #3
	mov	r7, r1
	mov	r4, r2
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
	add	r1, r1, #1
	and	r2, r12, r2, lsl #3
	ldr	r5, [r6, r0]
	orr	r2, r5, r3, lsl r2
	str	r2, [r6, r0]
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
	mov	r5, r0
	sub	r0, r2, #1
	uxtb	r7, r2
	mov	r11, r2
	sxtb	r0, r0
	cmn	r0, #1
	mvnge	r0, #0
	mov	r6, r1
	add	r0, r0, #1
	mov	r2, r7
.LBB34_1:                               @ =>This Inner Loop Header: Depth=1
	mov	r1, r2
	sub	r2, r2, #1
	sxtb	r3, r2
	cmp	r3, #0
	bmi	.LBB34_4
@ %bb.2:                                @   in Loop: Header=BB34_1 Depth=1
	uxtb	r3, r3
	ldr	r3, [r6, r3, lsl #2]
	cmp	r3, #0
	beq	.LBB34_1
@ %bb.3:
	mov	r0, r1
	b	.LBB34_5
.LBB34_4:
	tst	r0, #255
	beq	.LBB34_27
.LBB34_5:
	sxtb	r0, r0
	mov	r1, #0
	sub	r0, r0, #1
	ldr	r2, [r6, r0, lsl #2]
	cmp	r2, #0
	beq	.LBB34_7
.LBB34_6:                               @ =>This Inner Loop Header: Depth=1
	add	r1, r1, #1
	lsrs	r2, r2, #1
	bne	.LBB34_6
.LBB34_7:
	add	r0, r1, r0, lsl #5
.LBB34_8:
	ldr	r1, .LCPI34_0
	mov	r4, #0
.LPC34_0:
	ldr	r1, [pc, r1]
	cmp	r1, #0
	beq	.LBB34_22
@ %bb.9:
	rsb	r0, r0, r11, lsl #5
	mvn	r1, #0
	sub	r9, r5, #4
	cmp	r11, #0
	uxth	r0, r0
	lsr	r0, r1, r0
	str	r0, [sp, #4]                    @ 4-byte Spill
	lsl	r0, r11, #2
	str	r0, [sp, #8]                    @ 4-byte Spill
	ble	.LBB34_24
@ %bb.10:
	add	r8, sp, #12
	mov	r10, #0
	b	.LBB34_12
.LBB34_11:                              @   in Loop: Header=BB34_12 Depth=1
	add	r10, r10, #1
	cmp	r10, #64
	beq	.LBB34_23
.LBB34_12:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB34_14 Depth 2
                                        @     Child Loop BB34_17 Depth 2
                                        @     Child Loop BB34_19 Depth 2
	ldr	r2, .LCPI34_2
	mov	r0, r5
.LPC34_2:
	ldr	r2, [pc, r2]
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	blx	r2
	cmp	r0, #0
	beq	.LBB34_23
@ %bb.13:                               @   in Loop: Header=BB34_12 Depth=1
	ldr	r0, [r9, r11, lsl #2]
	mov	r2, r7
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, r1
	str	r0, [r9, r11, lsl #2]
	mov	r0, #0
	mov	r1, r5
.LBB34_14:                              @   Parent Loop BB34_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r1], #4
	subs	r2, r2, #1
	orr	r0, r3, r0
	bne	.LBB34_14
@ %bb.15:                               @   in Loop: Header=BB34_12 Depth=1
	cmp	r0, #0
	beq	.LBB34_11
@ %bb.16:                               @   in Loop: Header=BB34_12 Depth=1
	mov	r1, #0
	mov	r2, #0
.LBB34_17:                              @   Parent Loop BB34_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r5, r1, lsl #2]
	ldr	r3, [r6, r1, lsl #2]
	add	r4, r0, r2
	subs	r0, r3, r4
	str	r0, [r8, r1, lsl #2]
	mov	r0, #0
	movwlo	r0, #1
	cmp	r4, #0
	orreq	r0, r0, r2
	add	r1, r1, #1
	cmp	r7, r1
	mov	r2, r0
	bne	.LBB34_17
@ %bb.18:                               @   in Loop: Header=BB34_12 Depth=1
	mov	r1, #0
	mov	r2, #0
.LBB34_19:                              @   Parent Loop BB34_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r8, r1, lsl #2]
	add	r1, r1, #1
	cmp	r7, r1
	orr	r2, r3, r2
	bne	.LBB34_19
@ %bb.20:                               @   in Loop: Header=BB34_12 Depth=1
	clz	r1, r2
	cmp	r0, #0
	mvn	r0, #1
	lsr	r1, r1, #5
	orrne	r1, r1, r0
	cmp	r1, #0
	bne	.LBB34_11
@ %bb.21:
	mov	r4, #1
.LBB34_22:
	mov	r0, r4
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB34_23:
	mov	r4, #0
	mov	r0, r4
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB34_24:
	mov	r6, #64
.LBB34_25:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, .LCPI34_1
	mov	r0, r5
.LPC34_1:
	ldr	r2, [pc, r2]
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	blx	r2
	cmp	r0, #0
	beq	.LBB34_22
@ %bb.26:                               @   in Loop: Header=BB34_25 Depth=1
	ldr	r0, [r9, r11, lsl #2]
	subs	r6, r6, #1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, r1
	str	r0, [r9, r11, lsl #2]
	bne	.LBB34_25
	b	.LBB34_22
.LBB34_27:
	mov	r0, #0
	b	.LBB34_8
	.p2align	2
@ %bb.28:
.LCPI34_0:
	.long	g_rng_function-(.LPC34_0+8)
.LCPI34_1:
	.long	g_rng_function-(.LPC34_1+8)
.LCPI34_2:
	.long	g_rng_function-(.LPC34_2+8)
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
	ldrb	r7, [r1]
	mov	r8, r0
	lsl	r0, r7, #1
	sxtb	r3, r0
	mvn	r0, #0
	cmp	r3, #1
	blt	.LBB35_8
@ %bb.1:
	sxtb	r9, r7
	uxtb	r3, r3
	mov	r6, #0
	mov	r5, #0
.LBB35_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r8, r6, lsl #2]
	add	r6, r6, #1
	cmp	r3, r6
	orr	r5, r4, r5
	bne	.LBB35_2
@ %bb.3:
	cmp	r5, #0
	beq	.LBB35_8
@ %bb.4:
	add	r6, r1, #4
	mov	r3, r7
	mvn	r0, #1
.LBB35_5:                               @ =>This Inner Loop Header: Depth=1
	sub	r3, r3, #1
	sxtb	r5, r3
	cmp	r5, #0
	bmi	.LBB35_8
@ %bb.6:                                @   in Loop: Header=BB35_5 Depth=1
	uxtb	r5, r5
	ldr	r4, [r8, r5, lsl #2]
	ldr	r5, [r6, r5, lsl #2]
	cmp	r5, r4
	bhi	.LBB35_9
@ %bb.7:                                @   in Loop: Header=BB35_5 Depth=1
	bhs	.LBB35_5
.LBB35_8:
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB35_9:
	add	r3, r8, r9, lsl #2
.LBB35_10:                              @ =>This Inner Loop Header: Depth=1
	sub	r7, r7, #1
	sxtb	r5, r7
	cmp	r5, #0
	bmi	.LBB35_8
@ %bb.11:                               @   in Loop: Header=BB35_10 Depth=1
	uxtb	r5, r5
	ldr	r4, [r3, r5, lsl #2]
	ldr	r5, [r6, r5, lsl #2]
	cmp	r5, r4
	bhi	.LBB35_13
@ %bb.12:                               @   in Loop: Header=BB35_10 Depth=1
	bhs	.LBB35_10
	b	.LBB35_8
.LBB35_13:
	add	r6, sp, #32
	mov	r7, r1
	mov	r1, r3
	mov	r2, r3
	mov	r0, r6
	mov	r3, r9
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r5, sp
	mov	r0, r5
	mov	r1, r6
	blx	r2
	add	r6, sp, #32
	ldr	r3, [r7, #168]
	mov	r1, r8
	mov	r2, r7
	mov	r0, r6
	blx	r3
	sub	r0, r9, #1
	sxtb	r0, r0
	cmp	r0, #0
	bmi	.LBB35_17
@ %bb.14:
	uxtb	r0, r0
	mov	r1, #0
	rsb	r0, r0, #0
.LBB35_15:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r5, -r0, lsl #2]
	ldr	r3, [r6, -r0, lsl #2]
	add	r0, r0, #1
	cmp	r0, #1
	eor	r2, r3, r2
	orr	r1, r2, r1
	bne	.LBB35_15
@ %bb.16:
	mvn	r0, #2
	cmp	r1, #0
	moveq	r0, #0
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
	ldrb	r8, [r1, #1]
	mov	r9, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	sxtb	r11, r8
	add	r0, r11, #3
	uxth	r1, r0
	add	r0, r0, r1, lsr #14
	asr	r10, r0, #2
	cmp	r10, #1
	blt	.LBB36_2
@ %bb.1:
	mov	r0, #1020
	and	r2, r0, r10, lsl #2
	add	r0, sp, #8
	mov	r1, #0
	bl	memset
.LBB36_2:
	add	r12, sp, #8
	cmp	r11, #1
	blt	.LBB36_5
@ %bb.3:
	mvn	r1, #7
	ldr	r6, [sp, #4]                    @ 4-byte Reload
	add	r1, r1, r11, lsl #3
	sub	r2, r11, #1
	mov	r3, r8
.LBB36_4:                               @ =>This Inner Loop Header: Depth=1
	bic	r5, r2, #3
	ldrb	r4, [r6], #1
	and	r7, r1, #24
	subs	r3, r3, #1
	ldr	r0, [r12, r5]
	sub	r1, r1, #8
	sub	r2, r2, #1
	orr	r0, r0, r4, lsl r7
	str	r0, [r12, r5]
	bne	.LBB36_4
.LBB36_5:
	ldrsb	r0, [r9]
	cmp	r10, #1
	add	r6, r12, r0, lsl #2
	blt	.LBB36_7
@ %bb.6:
	mov	r0, #1020
	and	r2, r0, r10, lsl #2
	mov	r0, r6
	mov	r1, #0
	bl	memset
.LBB36_7:
	subs	r0, r11, #1
	blt	.LBB36_10
@ %bb.8:
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mvn	r2, #7
	add	r2, r2, r11, lsl #3
	add	r1, r1, r11
.LBB36_9:                               @ =>This Inner Loop Header: Depth=1
	bic	r7, r0, #3
	ldrb	r3, [r1], #1
	and	r4, r2, #24
	subs	r8, r8, #1
	ldr	r5, [r6, r7]
	sub	r2, r2, #8
	sub	r0, r0, #1
	orr	r3, r5, r3, lsl r4
	str	r3, [r6, r7]
	bne	.LBB36_9
.LBB36_10:
	ldr	r0, [sp, #68]
	ldr	r1, [r9, #128]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.11:
	ldr	r0, [sp, #64]
	ldr	r1, [r9, #124]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.12:
	ldr	r0, [sp, #60]
	ldr	r1, [r9, #120]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.13:
	ldr	r0, [sp, #56]
	ldr	r1, [r9, #116]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.14:
	ldr	r0, [sp, #52]
	ldr	r1, [r9, #112]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.15:
	ldr	r0, [sp, #48]
	ldr	r1, [r9, #108]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.16:
	ldr	r0, [sp, #44]
	ldr	r1, [r9, #104]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.17:
	ldr	r0, [sp, #40]
	ldr	r1, [r9, #100]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.18:
	ldr	r0, [sp, #36]
	ldr	r1, [r9, #96]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.19:
	ldr	r0, [sp, #32]
	ldr	r1, [r9, #92]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.20:
	ldr	r0, [sp, #28]
	ldr	r1, [r9, #88]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.21:
	ldr	r0, [sp, #24]
	ldr	r1, [r9, #84]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.22:
	ldr	r0, [sp, #20]
	ldr	r1, [r9, #80]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.23:
	ldr	r0, [sp, #16]
	ldr	r1, [r9, #76]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.24:
	ldr	r0, [sp, #12]
	ldr	r1, [r9, #72]
	cmp	r0, r1
	bne	.LBB36_26
@ %bb.25:
	ldr	r1, [sp, #8]
	mvn	r0, #3
	ldr	r2, [r9, #68]
	cmp	r1, r2
	beq	.LBB36_27
.LBB36_26:
	add	r0, sp, #8
	mov	r1, r9
	bl	uECC_valid_point
.LBB36_27:
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
	ldrsh	r9, [r2, #2]
	mov	r6, r0
	mov	r8, r1
	mov	r10, r2
	add	r0, r9, #7
	add	r4, r0, r0, lsr #29
	mov	r0, #3
	add	r0, r0, r4, asr #3
	ubfx	r1, r0, #29, #2
	add	r0, r0, r1
	sxth	r0, r0
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
	add	r0, sp, #64
	cmp	r9, #1
	blt	.LBB37_5
@ %bb.3:
	asr	r1, r4, #3
	mov	r4, #0
	mov	r12, #24
	mov	r3, #0
.LBB37_4:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r7, [r6, r4]
	mvn	r4, r4
	add	r4, r1, r4
	bic	r5, r4, #3
	add	r3, r3, #1
	and	r4, r12, r4, lsl #3
	ldr	r2, [r0, r5]
	orr	r2, r2, r7, lsl r4
	sxtb	r4, r3
	cmp	r1, r4
	str	r2, [r0, r5]
	bgt	.LBB37_4
.LBB37_5:
	add	r1, r9, #31
	add	r1, r1, r1, lsr #27
	sbfx	r2, r1, #5, #8
	cmp	r2, #1
	blt	.LBB37_15
@ %bb.6:
	asr	r1, r1, #5
	mov	r2, #0
	uxtb	r1, r1
	mov	r3, #0
.LBB37_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r0, r2, lsl #2]
	add	r2, r2, #1
	cmp	r1, r2
	orr	r3, r7, r3
	bne	.LBB37_7
@ %bb.8:
	cmp	r3, #0
	beq	.LBB37_15
@ %bb.9:
	mov	r7, #0
	mov	r2, sp
	mov	r6, #0
.LBB37_10:                              @ =>This Inner Loop Header: Depth=1
	add	r5, r10, r7, lsl #2
	ldr	r3, [r0, r7, lsl #2]
	ldr	r5, [r5, #36]
	add	r4, r3, r6
	subs	r3, r5, r4
	str	r3, [r2, r7, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r4, #0
	orreq	r3, r3, r6
	add	r7, r7, #1
	cmp	r1, r7
	mov	r6, r3
	bne	.LBB37_10
@ %bb.11:
	mov	r0, #0
	mov	r7, #0
.LBB37_12:                              @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2, r0, lsl #2]
	add	r0, r0, #1
	cmp	r1, r0
	orr	r7, r6, r7
	bne	.LBB37_12
@ %bb.13:
	clz	r0, r7
	cmp	r3, #0
	lsr	r1, r0, #5
	mvn	r0, #1
	orrne	r1, r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB37_16
.LBB37_14:
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LBB37_15:
	mov	r0, #0
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LBB37_16:
	mov	r6, sp
	add	r1, sp, #64
	mov	r0, r6
	mov	r2, r10
	bl	EccPoint_compute_public_key
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB37_14
@ %bb.17:
	ldrsb	r3, [r10, #1]
	mov	r0, #1
	cmp	r3, #1
	blt	.LBB37_14
@ %bb.18:
	mvn	r2, #7
	uxtb	r1, r3
	add	r2, r2, r3, lsl #3
	sub	r3, r3, #1
	mov	r7, r8
.LBB37_19:                              @ =>This Inner Loop Header: Depth=1
	bic	r5, r3, #3
	and	r4, r2, #24
	subs	r1, r1, #1
	sub	r3, r3, #1
	ldr	r5, [r6, r5]
	sub	r2, r2, #8
	lsr	r5, r5, r4
	strb	r5, [r7], #1
	bne	.LBB37_19
@ %bb.20:
	ldrsb	r4, [r10, #1]
	cmp	r4, #1
	blt	.LBB37_14
@ %bb.21:
	ldrsb	r2, [r10]
	mvn	r7, #7
	add	r1, r8, r4
	add	r7, r7, r4, lsl #3
	uxtb	r3, r4
	add	r2, r6, r2, lsl #2
	sub	r6, r4, #1
.LBB37_22:                              @ =>This Inner Loop Header: Depth=1
	bic	r5, r6, #3
	and	r4, r7, #24
	subs	r3, r3, #1
	sub	r6, r6, #1
	ldr	r5, [r2, r5]
	sub	r7, r7, #8
	lsr	r5, r5, r4
	strb	r5, [r1], #1
	bne	.LBB37_22
	b	.LBB37_14
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
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
