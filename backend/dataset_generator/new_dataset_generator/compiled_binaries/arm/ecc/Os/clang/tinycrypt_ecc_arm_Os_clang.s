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
	beq	.LBB7_9
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
.LBB7_8:
	sxth	r0, r0
	bx	lr
.LBB7_9:
	mov	r0, #0
	b	.LBB7_8
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
	b	.LBB9_7
.LBB9_5:
	mov	r0, #0
	b	.LBB9_7
.LBB9_6:
	mov	r0, #1
.LBB9_7:
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
	blt	.LBB12_4
@ %bb.1:
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
	b	.LBB12_5
.LBB12_4:
	mov	r3, #0
.LBB12_5:
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
	blt	.LBB13_6
@ %bb.1:
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
	b	.LBB13_7
.LBB13_6:
	mov	r0, #0
.LBB13_7:
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
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #32
	str	r1, [sp, #28]
	mov	r1, r3
	str	r0, [sp, #24]
	mov	r0, r2
	mov	r8, r3
	mov	r6, r2
	bl	uECC_vli_numBits
	rsb	r0, r0, r8, lsl #6
	sxth	r11, r0
	ubfx	r1, r11, #26, #5
	add	r1, r0, r1
	sxth	r2, r1
	bic	r1, r1, #31
	sub	r0, r0, r1
	sbfx	r3, r2, #5, #8
	asr	r4, r2, #5
	cmp	r3, #1
	sxth	r5, r0
	blt	.LBB16_2
@ %bb.1:
	mov	r0, #1020
	and	r2, r0, r4, lsl #2
	add	r0, sp, #96
	mov	r1, #0
	bl	memset
.LBB16_2:
	uxth	r0, r4
	cmp	r5, #1
	blt	.LBB16_6
@ %bb.3:
	cmp	r8, #0
	beq	.LBB16_8
@ %bb.4:
	sxtb	r0, r0
	add	r1, sp, #96
	add	r0, r1, r0, lsl #2
	rsb	r1, r5, #32
	mov	r3, #0
	mov	r2, r8
.LBB16_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r6], #4
	subs	r2, r2, #1
	orr	r3, r3, r4, lsl r5
	str	r3, [r0], #4
	lsr	r3, r4, r1
	bne	.LBB16_5
	b	.LBB16_8
.LBB16_6:
	cmp	r8, #1
	blt	.LBB16_8
@ %bb.7:
	sxtb	r0, r0
	add	r1, sp, #96
	add	r0, r1, r0, lsl #2
	uxtb	r1, r8
	lsl	r2, r1, #2
	mov	r1, r6
	bl	memcpy
.LBB16_8:
	cmp	r11, #0
	bmi	.LBB16_21
@ %bb.9:
	add	r2, sp, #96
	uxtb	r1, r8
	add	r3, r2, r8, lsl #2
	lsl	r0, r8, #1
	add	r7, r3, r1, lsl #2
	add	r1, r2, r1, lsl #2
	mov	r10, #1
	str	r1, [sp, #8]                    @ 4-byte Spill
	sub	r1, r8, #1
	str	r7, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r8, [sp, #16]                   @ 4-byte Spill
.LBB16_10:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_12 Depth 2
                                        @     Child Loop BB16_15 Depth 2
                                        @     Child Loop BB16_17 Depth 2
	cmp	r8, #0
	ble	.LBB16_18
@ %bb.11:                               @   in Loop: Header=BB16_10 Depth=1
	add	r1, sp, #24
	eor	r6, r10, #1
	mov	lr, #0
	mov	r12, #0
	ldr	r5, [r1, r10, lsl #2]
	mov	r4, #0
	ldr	r6, [r1, r6, lsl #2]
.LBB16_12:                              @   Parent Loop BB16_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r8, [r2, lr, lsl #2]
	add	r12, r12, #1
	ldr	r9, [r5, lr, lsl #2]
	add	r1, r8, r4
	subs	r7, r9, r1
	str	r7, [r6, lr, lsl #2]
	mov	r7, #0
	movwlo	r7, #1
	cmp	r1, #0
	movne	r4, r7
	sxtb	lr, r12
	cmp	r0, lr
	bgt	.LBB16_12
@ %bb.13:                               @   in Loop: Header=BB16_10 Depth=1
	sub	r1, r10, r4
	ldr	r8, [sp, #16]                   @ 4-byte Reload
	clz	r1, r1
	cmp	r8, #1
	lsr	r10, r1, #5
	blt	.LBB16_19
@ %bb.14:                               @   in Loop: Header=BB16_10 Depth=1
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	mov	r5, #0
.LBB16_15:                              @   Parent Loop BB16_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6, #-4]!
	cmp	r6, r2
	orr	r7, r5, r1, lsr #1
	lsl	r5, r1, #31
	str	r7, [r6]
	bhi	.LBB16_15
@ %bb.16:                               @   in Loop: Header=BB16_10 Depth=1
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	mov	r5, #0
	ldr	r1, [r3]
	ldr	r7, [r2, r6, lsl #2]
	orr	r1, r7, r1, lsl #31
	str	r1, [r2, r6, lsl #2]
	ldr	r6, [sp, #12]                   @ 4-byte Reload
.LBB16_17:                              @   Parent Loop BB16_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r6, #-4]!
	cmp	r6, r3
	orr	r7, r5, r1, lsr #1
	lsl	r5, r1, #31
	str	r7, [r6]
	bhi	.LBB16_17
	b	.LBB16_20
.LBB16_18:                              @   in Loop: Header=BB16_10 Depth=1
	clz	r1, r10
	lsr	r10, r1, #5
.LBB16_19:                              @   in Loop: Header=BB16_10 Depth=1
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [r3]
	ldr	r7, [r2, r6, lsl #2]
	orr	r1, r7, r1, lsl #31
	str	r1, [r2, r6, lsl #2]
.LBB16_20:                              @   in Loop: Header=BB16_10 Depth=1
	sub	r1, r11, #1
	sxth	r7, r11
	cmp	r7, #0
	mov	r11, r1
	bgt	.LBB16_10
	b	.LBB16_22
.LBB16_21:
	mov	r10, #1
.LBB16_22:
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	cmp	r8, #1
	blt	.LBB16_25
@ %bb.23:
	add	r0, sp, #24
	uxtb	r1, r8
	ldr	r0, [r0, r10, lsl #2]
.LBB16_24:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0], #4
	subs	r1, r1, #1
	str	r2, [r3], #4
	bne	.LBB16_24
.LBB16_25:
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
.LBB18_8:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB18_10 Depth 2
	add	r0, r6, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	sub	r0, r0, r3
	mov	r4, #0
	sxtb	r0, r0
	cmp	r0, r3
	bge	.LBB18_11
@ %bb.9:                                @   in Loop: Header=BB18_8 Depth=1
	ldr	r2, [sp]                        @ 4-byte Reload
	sxtb	r0, r6
	sxtb	r8, r12
	mov	r6, lr
	add	r7, r2, r0, lsl #2
	mov	r2, lr
	mov	lr, r11
.LBB18_10:                              @   Parent Loop BB18_8 Depth=1
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
	bne	.LBB18_10
	b	.LBB18_12
.LBB18_11:                              @   in Loop: Header=BB18_8 Depth=1
	mov	r6, lr
	mov	lr, r11
.LBB18_12:                              @   in Loop: Header=BB18_8 Depth=1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r12, r12, #1
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r11, r4
	str	r6, [r0, r10, lsl #2]
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	sxtb	r10, r6
	cmp	r0, r10
	bgt	.LBB18_8
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
	.pad	#156
	sub	sp, sp, #156
	cmp	r3, #1
	str	r2, [sp, #20]                   @ 4-byte Spill
	blt	.LBB20_45
@ %bb.1:
	mov	r4, r3
	uxtb	r8, r3
	mov	r7, #0
	mov	r6, #0
.LBB20_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r7, lsl #2]
	add	r7, r7, #1
	cmp	r8, r7
	orr	r6, r3, r6
	bne	.LBB20_2
@ %bb.3:
	lsl	r2, r8, #2
	cmp	r6, #0
	beq	.LBB20_46
@ %bb.4:
	add	r9, sp, #120
	str	r0, [sp, #4]                    @ 4-byte Spill
	mov	r5, r2
	mov	r0, r9
	bl	memcpy
	add	r11, sp, #88
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	mov	r2, r5
	mov	r0, r11
	bl	memcpy
	add	r0, sp, #56
	mov	r1, #0
	mov	r2, r5
	bl	memset
	add	r10, sp, #24
	mov	r0, #1
	str	r0, [sp, #56]
	mov	r1, #0
	mov	r0, r10
	mov	r2, r5
	str	r5, [sp]                        @ 4-byte Spill
	bl	memset
	add	r0, r9, r8, lsl #2
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r0, r11, r8, lsl #2
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, r8
	str	r4, [sp, #8]                    @ 4-byte Spill
.LBB20_5:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB20_30 Depth 2
                                        @     Child Loop BB20_32 Depth 2
                                        @     Child Loop BB20_34 Depth 2
                                        @     Child Loop BB20_38 Depth 2
                                        @     Child Loop BB20_40 Depth 2
                                        @     Child Loop BB20_17 Depth 2
                                        @     Child Loop BB20_19 Depth 2
                                        @     Child Loop BB20_21 Depth 2
                                        @     Child Loop BB20_25 Depth 2
                                        @     Child Loop BB20_27 Depth 2
                                        @     Child Loop BB20_13 Depth 2
                                        @     Child Loop BB20_9 Depth 2
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB20_44
@ %bb.6:                                @   in Loop: Header=BB20_5 Depth=1
	uxtb	r2, r1
	ldr	r1, [r11, r2, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r2, r1
	beq	.LBB20_5
@ %bb.7:                                @   in Loop: Header=BB20_5 Depth=1
	ldrb	r0, [sp, #120]
	tst	r0, #1
	bne	.LBB20_11
@ %bb.8:                                @   in Loop: Header=BB20_5 Depth=1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_9:                               @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r9
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_9
@ %bb.10:                               @   in Loop: Header=BB20_5 Depth=1
	add	r0, sp, #56
	b	.LBB20_43
.LBB20_11:                              @   in Loop: Header=BB20_5 Depth=1
	ldrb	r0, [sp, #88]
	tst	r0, #1
	bne	.LBB20_15
@ %bb.12:                               @   in Loop: Header=BB20_5 Depth=1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_13:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r11
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_13
@ %bb.14:                               @   in Loop: Header=BB20_5 Depth=1
	mov	r0, r10
	b	.LBB20_43
.LBB20_15:                              @   in Loop: Header=BB20_5 Depth=1
	mov	r0, #0
	cmp	r2, r1
	bls	.LBB20_29
@ %bb.16:                               @   in Loop: Header=BB20_5 Depth=1
	add	r12, sp, #56
	mov	r1, #0
.LBB20_17:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r11, r0, lsl #2]
	ldr	r3, [r9, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r9, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r3
	bne	.LBB20_17
@ %bb.18:                               @   in Loop: Header=BB20_5 Depth=1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_19:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r9
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_19
@ %bb.20:                               @   in Loop: Header=BB20_5 Depth=1
	mov	r0, r8
.LBB20_21:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB20_26
@ %bb.22:                               @   in Loop: Header=BB20_21 Depth=2
	uxtb	r1, r1
	ldr	r2, [r10, r1, lsl #2]
	ldr	r1, [r12, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB20_26
@ %bb.23:                               @   in Loop: Header=BB20_21 Depth=2
	bhs	.LBB20_21
@ %bb.24:                               @   in Loop: Header=BB20_5 Depth=1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	add	r0, sp, #56
	mov	r4, #0
	mov	r2, r8
.LBB20_25:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r6, [r0]
	mov	r3, #0
	ldr	r5, [r1], #4
	add	r7, r6, r4
	add	r7, r7, r5
	str	r7, [r0], #4
	cmp	r7, r6
	movwlo	r3, #1
	orreq	r3, r3, r4
	subs	r2, r2, #1
	mov	r4, r3
	bne	.LBB20_25
.LBB20_26:                              @   in Loop: Header=BB20_5 Depth=1
	mov	r0, #0
	mov	r1, #0
.LBB20_27:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r10, r0, lsl #2]
	ldr	r3, [r12, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r12, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r3
	bne	.LBB20_27
@ %bb.28:                               @   in Loop: Header=BB20_5 Depth=1
	mov	r0, r12
	b	.LBB20_42
.LBB20_29:                              @   in Loop: Header=BB20_5 Depth=1
	add	r12, sp, #56
	mov	r1, #0
.LBB20_30:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r9, r0, lsl #2]
	ldr	r3, [r11, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r11, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r3
	bne	.LBB20_30
@ %bb.31:                               @   in Loop: Header=BB20_5 Depth=1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, #0
.LBB20_32:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r0, #-4]!
	cmp	r0, r11
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB20_32
@ %bb.33:                               @   in Loop: Header=BB20_5 Depth=1
	mov	r0, r8
.LBB20_34:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r0, r0, #1
	sxtb	r1, r0
	cmp	r1, #0
	bmi	.LBB20_39
@ %bb.35:                               @   in Loop: Header=BB20_34 Depth=2
	uxtb	r1, r1
	ldr	r2, [r12, r1, lsl #2]
	ldr	r1, [r10, r1, lsl #2]
	cmp	r1, r2
	bhi	.LBB20_39
@ %bb.36:                               @   in Loop: Header=BB20_34 Depth=2
	bhs	.LBB20_34
@ %bb.37:                               @   in Loop: Header=BB20_5 Depth=1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	add	r0, sp, #24
	mov	r4, #0
	mov	r2, r8
.LBB20_38:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
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
	bne	.LBB20_38
.LBB20_39:                              @   in Loop: Header=BB20_5 Depth=1
	mov	r0, #0
	mov	r1, #0
.LBB20_40:                              @   Parent Loop BB20_5 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r12, r0, lsl #2]
	ldr	r3, [r10, r0, lsl #2]
	add	r2, r2, r1
	subs	r3, r3, r2
	str	r3, [r10, r0, lsl #2]
	mov	r3, #0
	movwlo	r3, #1
	cmp	r2, #0
	orreq	r3, r3, r1
	add	r0, r0, #1
	cmp	r8, r0
	mov	r1, r3
	bne	.LBB20_40
@ %bb.41:                               @   in Loop: Header=BB20_5 Depth=1
	mov	r0, r10
.LBB20_42:                              @   in Loop: Header=BB20_5 Depth=1
	ldr	r4, [sp, #8]                    @ 4-byte Reload
.LBB20_43:                              @   in Loop: Header=BB20_5 Depth=1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	mov	r2, r4
	bl	vli_modInv_update
	mov	r0, r8
	b	.LBB20_5
.LBB20_44:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r1, sp, #56
	ldr	r2, [sp]                        @ 4-byte Reload
	bl	memcpy
.LBB20_45:
	add	sp, sp, #156
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB20_46:
	mov	r1, #0
	add	sp, sp, #156
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	memset
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function vli_modInv_update
	.type	vli_modInv_update,%function
	.code	32                              @ @vli_modInv_update
vli_modInv_update:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldrb	r3, [r0]
	tst	r3, #1
	bne	.LBB21_5
@ %bb.1:
	cmp	r2, #1
	blt	.LBB21_4
@ %bb.2:
	uxtb	r1, r2
	mov	r2, #0
	add	r1, r0, r1, lsl #2
.LBB21_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, #-4]!
	cmp	r1, r0
	orr	r2, r2, r3, lsr #1
	str	r2, [r1]
	lsl	r2, r3, #31
	bhi	.LBB21_3
.LBB21_4:
	pop	{r4, r5, r11, pc}
.LBB21_5:
	cmp	r2, #1
	blt	.LBB21_4
@ %bb.6:
	uxtb	r12, r2
	mov	r3, #0
	mov	lr, #0
.LBB21_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, r3, lsl #2]
	ldr	r4, [r1, r3, lsl #2]
	add	r5, r2, lr
	add	r4, r5, r4
	str	r4, [r0, r3, lsl #2]
	cmp	r4, r2
	mov	r2, #0
	add	r3, r3, #1
	movwlo	r2, #1
	orreq	r2, r2, lr
	cmp	r12, r3
	mov	lr, r2
	bne	.LBB21_7
@ %bb.8:
	add	r12, r0, r12, lsl #2
	mov	r1, #0
	mov	r3, r12
.LBB21_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r3, #-4]!
	cmp	r3, r0
	orr	r1, r1, r5, lsr #1
	str	r1, [r3]
	lsl	r1, r5, #31
	bhi	.LBB21_9
@ %bb.10:
	cmp	r2, #0
	beq	.LBB21_4
@ %bb.11:
	ldr	r0, [r12, #-4]
	orr	r0, r0, #-2147483648
	str	r0, [r12, #-4]
	pop	{r4, r5, r11, pc}
.Lfunc_end21:
	.size	vli_modInv_update, .Lfunc_end21-vli_modInv_update
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
	.pad	#140
	sub	sp, sp, #140
	ldrb	r8, [r3]
	sxtb	r4, r8
	cmp	r4, #1
	blt	.LBB22_17
@ %bb.1:
	mov	r10, r1
	mov	r6, r0
	mov	r9, r3
	mov	r5, r2
	mov	r11, r8
	mov	r0, #0
	mov	r1, #0
.LBB22_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r5, r0, lsl #2]
	add	r0, r0, #1
	cmp	r8, r0
	orr	r1, r2, r1
	bne	.LBB22_2
@ %bb.3:
	cmp	r1, #0
	beq	.LBB22_17
@ %bb.4:
	add	r0, sp, #76
	mov	r1, r10
	mov	r2, r10
	mov	r3, r4
	bl	uECC_vli_mult
	add	r7, sp, #40
	ldr	r2, [r9, #172]
	add	r1, sp, #76
	mov	r0, r7
	blx	r2
	ldrsb	r3, [r9]
	add	r0, sp, #76
	mov	r1, r6
	mov	r2, r7
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	add	r0, sp, #8
	add	r1, sp, #76
	blx	r2
	ldrsb	r3, [r9]
	add	r0, sp, #76
	mov	r1, r7
	mov	r2, r7
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	add	r1, sp, #76
	mov	r0, r7
	blx	r2
	add	r7, sp, #76
	ldrsb	r3, [r9]
	mov	r1, r10
	mov	r2, r5
	mov	r0, r7
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r10
	mov	r1, r7
	blx	r2
	add	r7, sp, #76
	ldrsb	r3, [r9]
	mov	r1, r5
	mov	r2, r5
	mov	r0, r7
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r5
	mov	r1, r7
	blx	r2
	add	r7, r9, #4
	mov	r0, r6
	mov	r1, r6
	mov	r2, r5
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modAdd
	mov	r0, r5
	mov	r1, r5
	mov	r2, r5
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modAdd
	mov	r0, r5
	mov	r1, r6
	mov	r2, r5
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modSub
	ldrsb	r3, [r9]
	add	r0, sp, #76
	mov	r1, r6
	mov	r2, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	add	r1, sp, #76
	mov	r0, r6
	blx	r2
	mov	r0, r5
	mov	r1, r6
	mov	r2, r6
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modAdd
	mov	r0, r6
	mov	r1, r6
	mov	r2, r5
	mov	r3, r7
	str	r4, [sp, #4]                    @ 4-byte Spill
	str	r4, [sp]
	bl	uECC_vli_modAdd
	ldrb	r0, [r6]
	tst	r0, #1
	bne	.LBB22_7
@ %bb.5:
	add	r0, r6, r8, lsl #2
	mov	r1, #0
.LBB22_6:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, #-4]!
	cmp	r0, r6
	orr	r1, r1, r2, lsr #1
	str	r1, [r0]
	lsl	r1, r2, #31
	bhi	.LBB22_6
	b	.LBB22_12
.LBB22_7:
	mov	r1, #0
	mov	r2, #0
.LBB22_8:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, r1, lsl #2]
	ldr	r3, [r7, r1, lsl #2]
	add	r4, r0, r2
	add	r3, r4, r3
	str	r3, [r6, r1, lsl #2]
	cmp	r3, r0
	mov	r0, #0
	add	r1, r1, #1
	movwlo	r0, #1
	orreq	r0, r0, r2
	cmp	r8, r1
	mov	r2, r0
	bne	.LBB22_8
@ %bb.9:
	add	r1, r6, r8, lsl #2
	mov	r3, #0
	mov	r2, r1
.LBB22_10:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r2, #-4]!
	cmp	r2, r6
	orr	r3, r3, r4, lsr #1
	str	r3, [r2]
	lsl	r3, r4, #31
	bhi	.LBB22_10
@ %bb.11:
	ldr	r2, [r1, #-4]
	orr	r0, r2, r0, lsl #31
	str	r0, [r1, #-4]
.LBB22_12:
	add	r4, sp, #76
	ldrsb	r3, [r9]
	mov	r1, r6
	mov	r2, r6
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r5
	mov	r1, r4
	blx	r2
	add	r2, sp, #8
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	mov	r0, r5
	mov	r1, r5
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modSub
	add	r2, sp, #8
	mov	r0, r5
	mov	r1, r5
	mov	r3, r7
	str	r4, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #8
	mov	r2, r5
	mov	r3, r7
	str	r4, [sp]
	mov	r1, r0
	bl	uECC_vli_modSub
	ldrsb	r3, [r9]
	add	r0, sp, #76
	add	r2, sp, #8
	mov	r1, r6
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	add	r1, sp, #76
	mov	r0, r6
	blx	r2
	add	r0, sp, #40
	mov	r1, r6
	mov	r3, r7
	str	r4, [sp]
	mov	r2, r0
	bl	uECC_vli_modSub
	mov	r0, r5
.LBB22_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r0], #4
	subs	r11, r11, #1
	str	r1, [r6], #4
	bne	.LBB22_13
@ %bb.14:
	mov	r0, #0
.LBB22_15:                              @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r10, r0, lsl #2]
	str	r1, [r5, r0, lsl #2]
	add	r0, r0, #1
	cmp	r8, r0
	bne	.LBB22_15
@ %bb.16:
	add	r1, sp, #40
	lsl	r2, r8, #2
	mov	r0, r10
	bl	memcpy
.LBB22_17:
	add	sp, sp, #140
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end22:
	.size	double_jacobian_default, .Lfunc_end22-double_jacobian_default
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
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.pad	#72
	sub	sp, sp, #72
	ldrsb	r6, [r2]
	add	r8, sp, #8
	mov	r5, r2
	mov	r4, r0
	mov	r0, r8
	mov	r2, r1
	mov	r3, r6
	mov	r7, r1
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r4
	mov	r1, r8
	blx	r2
	ldr	r2, .LCPI23_0
	add	r8, r5, #4
	mov	r0, r4
	mov	r1, r4
.LPC23_0:
	add	r2, pc, r2
	mov	r3, r8
	str	r6, [sp]
	bl	uECC_vli_modSub
	add	r9, sp, #8
	ldrsb	r3, [r5]
	mov	r1, r4
	mov	r2, r7
	mov	r0, r9
	bl	uECC_vli_mult
	ldr	r2, [r5, #172]
	mov	r0, r4
	mov	r1, r9
	blx	r2
	add	r2, r5, #132
	mov	r0, r4
	mov	r1, r4
	mov	r3, r8
	str	r6, [sp]
	bl	uECC_vli_modAdd
	add	sp, sp, #72
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.p2align	2
@ %bb.1:
.LCPI23_0:
	.long	.L__const.x_side_default._3-(.LPC23_0+8)
.Lfunc_end23:
	.size	x_side_default, .Lfunc_end23-x_side_default
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
	ldr	r0, .LCPI24_0
.LPC24_0:
	add	r0, pc, r0
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI24_0:
	.long	curve_secp256r1-(.LPC24_0+8)
.Lfunc_end24:
	.size	uECC_secp256r1, .Lfunc_end24-uECC_secp256r1
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
.LBB25_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r2, lsl #2]
	str	r3, [r0, r2, lsl #2]
	add	r2, r2, #1
	cmp	r2, #8
	bne	.LBB25_1
@ %bb.2:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#52
	sub	sp, sp, #52
	mov	r2, #0
	ldr	r3, [r1, #44]
	add	r12, sp, #28
	add	lr, sp, #20
	ldr	r7, [r1, #48]
	ldr	r6, [r1, #52]
	ldr	r5, [r1, #56]
	ldr	r4, [r1, #60]
	stm	r12, {r2, r3, r7}
	mov	r3, #0
	str	r2, [sp, #24]
	str	r2, [sp, #20]
	str	r6, [sp, #40]
	str	r5, [sp, #44]
	str	r4, [sp, #48]
.LBB25_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [lr, r2, lsl #2]
	mov	r12, #0
	add	r6, r3, r7, lsl #1
	str	r6, [lr, r2, lsl #2]
	cmp	r6, r7
	movwlo	r12, #1
	add	r2, r2, #1
	orreq	r12, r12, r3
	cmp	r2, #8
	mov	r3, r12
	bne	.LBB25_3
@ %bb.4:
	mov	r2, #0
	mov	r7, #0
.LBB25_5:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	mov	r3, #0
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r7
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	movwlo	r3, #1
	add	r2, r2, #1
	orreq	r3, r3, r7
	cmp	r2, #8
	mov	r7, r3
	bne	.LBB25_5
@ %bb.6:
	add	r6, r1, #52
	ldr	r7, [r1, #48]
	str	r7, [sp, #32]
	add	r7, sp, #36
	ldm	r6, {r4, r5, r6}
	mov	r2, #0
	str	r2, [sp, #48]
	stm	r7, {r4, r5, r6}
	mov	r6, #0
.LBB25_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [lr, r2, lsl #2]
	mov	r9, #0
	add	r5, r6, r4, lsl #1
	str	r5, [lr, r2, lsl #2]
	cmp	r5, r4
	movwlo	r9, #1
	add	r2, r2, #1
	orreq	r9, r9, r6
	cmp	r2, #8
	mov	r6, r9
	bne	.LBB25_7
@ %bb.8:
	mov	r2, #0
	mov	r7, #0
.LBB25_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	mov	r10, #0
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r7
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	movwlo	r10, #1
	add	r2, r2, #1
	orreq	r10, r10, r7
	cmp	r2, #8
	mov	r7, r10
	bne	.LBB25_9
@ %bb.10:
	add	r5, r1, #32
	str	r3, [sp, #12]                   @ 4-byte Spill
	add	r7, sp, #20
	mov	r2, #0
	ldm	r5, {r3, r4, r5}
	ldr	r6, [r1, #56]
	stm	r7, {r3, r4, r5}
	add	r3, sp, #40
	ldr	r11, [r1, #60]
	stm	r3, {r2, r6, r11}
	mov	r3, #0
	str	r2, [sp, #36]
	str	r2, [sp, #32]
.LBB25_11:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	mov	r11, #0
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r3
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	movwlo	r11, #1
	add	r2, r2, #1
	orreq	r11, r11, r3
	cmp	r2, #8
	mov	r3, r11
	bne	.LBB25_11
@ %bb.12:
	add	r5, r1, #36
	ldr	r2, [r1, #56]
	ldr	r6, [r1, #52]
	ldm	r5, {r3, r4, r5}
	ldr	r8, [r1, #32]
	ldr	r7, [r1, #60]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r2, [sp, #36]
	mov	r2, #0
	str	r4, [sp, #24]
	str	r5, [sp, #28]
	str	r6, [sp, #32]
	str	r6, [sp, #44]
	str	r7, [sp, #40]
	str	r8, [sp, #48]
.LBB25_13:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r0, r2, lsl #2]
	mov	r8, #0
	ldr	r5, [lr, r2, lsl #2]
	add	r6, r4, r3
	add	r5, r6, r5
	str	r5, [r0, r2, lsl #2]
	cmp	r5, r4
	movwlo	r8, #1
	add	r2, r2, #1
	orreq	r8, r8, r3
	cmp	r2, #8
	mov	r3, r8
	bne	.LBB25_13
@ %bb.14:
	add	r7, r1, #40
	ldr	r3, [r1, #52]
	mov	r2, #0
	ldr	r6, [r1, #32]
	ldm	r7, {r4, r5, r7}
	str	r3, [sp, #28]
	mov	r3, #0
	str	r12, [sp, #16]                  @ 4-byte Spill
	str	r2, [sp, #40]
	str	r2, [sp, #36]
	str	r2, [sp, #32]
	str	r5, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #44]
	str	r4, [sp, #48]
.LBB25_15:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [lr, r2, lsl #2]
	mov	r7, #0
	ldr	r5, [r0, r2, lsl #2]
	add	r4, r4, r3
	subs	r5, r5, r4
	str	r5, [r0, r2, lsl #2]
	movwlo	r7, #1
	cmp	r4, #0
	add	r2, r2, #1
	orreq	r7, r7, r3
	cmp	r2, #8
	mov	r3, r7
	bne	.LBB25_15
@ %bb.16:
	ldr	r3, [r1, #60]
	ldr	r2, [r1, #52]
	ldr	r4, [r1, #56]
	str	r3, [sp, #8]                    @ 4-byte Spill
	mov	r3, #0
	ldr	r6, [r1, #36]
	ldr	r12, [r1, #44]
	ldr	r5, [r1, #48]
	str	r2, [sp, #24]
	str	r4, [sp, #28]
	mov	r4, #0
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	str	r3, [sp, #40]
	str	r3, [sp, #36]
	str	r5, [sp, #20]
	str	r2, [sp, #32]
	str	r6, [sp, #44]
	str	r12, [sp, #48]
.LBB25_17:                              @ =>This Inner Loop Header: Depth=1
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
	bne	.LBB25_17
@ %bb.18:
	ldr	r4, [r1, #32]
	ldr	r3, [r1, #56]
	str	r4, [sp, #8]                    @ 4-byte Spill
	ldr	r4, [r1, #36]
	str	r4, [sp, #4]                    @ 4-byte Spill
	ldr	r4, [r1, #40]
	str	r3, [sp, #24]
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	r6, [r1, #48]
	ldr	r5, [r1, #52]
	str	r4, [sp]                        @ 4-byte Spill
	mov	r4, #0
	str	r3, [sp, #32]
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	ldr	r12, [r1, #60]
	str	r5, [sp, #20]
	mov	r5, #0
	str	r3, [sp, #36]
	ldr	r3, [sp]                        @ 4-byte Reload
	str	r6, [sp, #48]
	mov	r6, lr
	str	r4, [sp, #44]
	str	r12, [sp, #28]
	str	r3, [sp, #40]
.LBB25_19:                              @ =>This Inner Loop Header: Depth=1
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
	bne	.LBB25_19
@ %bb.20:
	ldr	r4, [r1, #40]
	add	lr, r1, #52
	ldr	r5, [r1, #36]
	str	r4, [sp, #4]                    @ 4-byte Spill
	ldr	r4, [r1, #44]
	mov	r1, #0
	str	r4, [sp, #8]                    @ 4-byte Spill
	ldm	lr, {r4, r12, lr}
	str	r5, [sp, #32]
	ldr	r5, [sp, #4]                    @ 4-byte Reload
	str	lr, [sp, #24]
	mov	lr, r6
	str	r5, [sp, #36]
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	str	r4, [sp, #48]
	mov	r4, #0
	str	r1, [sp, #28]
	str	r1, [sp, #44]
	str	r12, [sp, #20]
	str	r5, [sp, #40]
.LBB25_21:                              @ =>This Inner Loop Header: Depth=1
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
	bne	.LBB25_21
@ %bb.22:
	add	r1, r7, r2
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	add	r1, r1, r3
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	add	r1, r1, r5
	add	r2, r3, r2
	add	r2, r2, r9
	add	r2, r2, r10
	add	r2, r2, r11
	add	r2, r2, r8
	subs	r1, r2, r1
	bmi	.LBB25_32
@ %bb.23:
	ldr	r2, .LCPI25_0
.LPC25_0:
	add	r2, pc, r2
.LBB25_24:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB25_29 Depth 2
                                        @     Child Loop BB25_26 Depth 2
	cmp	r1, #0
	beq	.LBB25_28
.LBB25_25:                              @   in Loop: Header=BB25_24 Depth=1
	mov	r3, #0
	mov	r6, #0
.LBB25_26:                              @   Parent Loop BB25_24 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r5, r2, r3, lsl #2
	ldr	r7, [r0, r3, lsl #2]
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
	bne	.LBB25_26
@ %bb.27:                               @   in Loop: Header=BB25_24 Depth=1
	sub	r1, r1, r7
	b	.LBB25_24
.LBB25_28:                              @   in Loop: Header=BB25_24 Depth=1
	mov	r3, #8
.LBB25_29:                              @   Parent Loop BB25_24 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sub	r3, r3, #1
	sxtb	r7, r3
	cmp	r7, #0
	bmi	.LBB25_25
@ %bb.30:                               @   in Loop: Header=BB25_29 Depth=2
	uxtb	r7, r7
	ldr	r6, [r0, r7, lsl #2]
	add	r7, r2, r7, lsl #2
	ldr	r7, [r7, #4]
	cmp	r7, r6
	bhi	.LBB25_36
@ %bb.31:                               @   in Loop: Header=BB25_29 Depth=2
	bhs	.LBB25_29
	b	.LBB25_25
.LBB25_32:
	ldr	r2, .LCPI25_1
.LPC25_1:
	add	r2, pc, r2
.LBB25_33:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB25_34 Depth 2
	mov	r3, #0
	mov	r6, #0
.LBB25_34:                              @   Parent Loop BB25_33 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r5, r2, r3, lsl #2
	ldr	r7, [r0, r3, lsl #2]
	ldr	r5, [r5, #4]
	add	r4, r7, r6
	add	r5, r4, r5
	str	r5, [r0, r3, lsl #2]
	cmp	r5, r7
	mov	r7, #0
	add	r3, r3, #1
	movwlo	r7, #1
	orreq	r7, r7, r6
	cmp	r3, #8
	mov	r6, r7
	bne	.LBB25_34
@ %bb.35:                               @   in Loop: Header=BB25_33 Depth=1
	adds	r1, r7, r1
	bmi	.LBB25_33
.LBB25_36:
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ %bb.37:
.LCPI25_0:
	.long	curve_secp256r1-(.LPC25_0+8)
.LCPI25_1:
	.long	curve_secp256r1-(.LPC25_1+8)
.Lfunc_end25:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end25-vli_mmod_fast_secp256r1
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
.LBB26_1:
	uxtb	r2, r1
	mov	r1, #0
.LBB26_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r0], #4
	subs	r2, r2, #1
	orr	r1, r3, r1
	bne	.LBB26_2
@ %bb.3:
	clz	r0, r1
	lsr	r0, r0, #5
	bx	lr
.Lfunc_end26:
	.size	EccPoint_isZero, .Lfunc_end26-EccPoint_isZero
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
.Lfunc_end27:
	.size	apply_z, .Lfunc_end27-apply_z
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
	.pad	#108
	sub	sp, sp, #108
	ldr	r7, [sp, #144]
	add	r10, sp, #8
	mov	r9, r0
	str	r1, [sp, #4]                    @ 4-byte Spill
	add	r11, r7, #4
	mov	r6, r3
	ldrsb	r5, [r7]
	mov	r4, r2
	mov	r1, r2
	mov	r0, r10
	mov	r2, r9
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r8, sp, #44
	mov	r1, r10
	mov	r2, r10
	mov	r3, r5
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r10
	mov	r1, r8
	blx	r2
	add	r8, sp, #44
	ldrsb	r3, [r7]
	mov	r1, r9
	mov	r2, r10
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r9
	mov	r1, r8
	blx	r2
	add	r8, sp, #44
	ldrsb	r3, [r7]
	mov	r1, r4
	mov	r2, r10
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r4
	mov	r1, r8
	blx	r2
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	mov	r0, r6
	mov	r1, r6
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r8, sp, #44
	ldrsb	r3, [r7]
	mov	r1, r6
	mov	r2, r6
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r10
	mov	r1, r8
	blx	r2
	mov	r0, r10
	mov	r1, r10
	mov	r2, r9
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	mov	r0, r10
	mov	r1, r10
	mov	r2, r4
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	mov	r0, r4
	mov	r1, r4
	mov	r2, r9
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	ldr	r8, [sp, #4]                    @ 4-byte Reload
	add	r0, sp, #44
	ldrsb	r3, [r7]
	mov	r2, r4
	mov	r1, r8
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	add	r1, sp, #44
	mov	r0, r8
	blx	r2
	mov	r0, r4
	mov	r1, r9
	mov	r2, r10
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r9, sp, #44
	ldrsb	r3, [r7]
	mov	r1, r6
	mov	r2, r4
	mov	r0, r9
	bl	uECC_vli_mult
	ldr	r2, [r7, #172]
	mov	r0, r6
	mov	r1, r9
	blx	r2
	mov	r0, r6
	mov	r1, r6
	mov	r2, r8
	mov	r3, r11
	str	r5, [sp]
	bl	uECC_vli_modSub
	cmp	r5, #1
	blt	.LBB28_2
@ %bb.1:
	uxtb	r0, r5
	add	r1, sp, #8
	lsl	r2, r0, #2
	mov	r0, r4
	bl	memcpy
.LBB28_2:
	add	sp, sp, #108
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end28:
	.size	XYcZ_add, .Lfunc_end28-XYcZ_add
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
	.pad	#276
	sub	sp, sp, #276
	ldr	r11, [sp, #316]
	mov	r4, r1
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #144
	ldr	r9, [sp, #312]
	add	r5, r0, #32
	ldrb	r10, [r11]
	mov	r6, r3
	str	r5, [sp, #40]                   @ 4-byte Spill
	str	r4, [sp, #28]                   @ 4-byte Spill
	sxtb	r1, r10
	cmp	r1, #1
	str	r1, [sp, #36]                   @ 4-byte Spill
	str	r2, [sp, #44]                   @ 4-byte Spill
	blt	.LBB29_3
@ %bb.1:
	lsl	r7, r10, #2
	mov	r0, r5
	mov	r1, r4
	mov	r2, r7
	bl	memcpy
	add	r9, sp, #80
	add	r1, r4, r10, lsl #2
	add	r8, r9, #32
	mov	r2, r7
	str	r1, [sp, #32]                   @ 4-byte Spill
	mov	r0, r8
	bl	memcpy
	add	r0, sp, #208
	cmp	r6, #0
	beq	.LBB29_4
@ %bb.2:
	mov	r1, r6
	mov	r2, r7
	bl	memcpy
	b	.LBB29_5
.LBB29_3:
	add	r0, r4, r1, lsl #2
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	r0, sp, #80
	cmp	r6, #0
	add	r8, r0, #32
	moveq	r0, #1
	streq	r0, [sp, #208]
	str	r1, [sp, #12]                   @ 4-byte Spill
	b	.LBB29_6
.LBB29_4:
	mov	r1, #0
	mov	r2, r7
	bl	memset
	mov	r0, #1
	str	r0, [sp, #208]
.LBB29_5:
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	add	r0, sp, #144
	mov	r2, r7
	mov	r1, r5
	bl	memmove
	add	r1, r9, #32
	mov	r0, r9
	mov	r2, r7
	bl	memmove
	ldr	r9, [sp, #312]
	str	r10, [sp, #12]                  @ 4-byte Spill
.LBB29_6:
	add	r7, sp, #208
	mov	r0, r5
	mov	r1, r8
	mov	r3, r11
	mov	r2, r7
	str	r10, [sp, #16]                  @ 4-byte Spill
	bl	apply_z
	ldr	r6, [r11, #164]
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, r11
	blx	r6
	add	r4, sp, #144
	add	r10, sp, #80
	mov	r2, r7
	mov	r3, r11
	mov	r0, r4
	mov	r1, r10
	bl	apply_z
	sub	r0, r9, #2
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	mov	r9, r11
	sxth	r0, r0
	cmp	r0, #1
	blt	.LBB29_9
@ %bb.7:
	uxth	r11, r0
.LBB29_8:                               @ =>This Inner Loop Header: Depth=1
	lsr	r0, r11, #5
	mov	r2, #1
	ldr	r0, [r1, r0, lsl #2]
	and	r1, r11, #31
	mov	r8, r4
	str	r9, [sp]
	ands	r0, r0, r2, lsl r1
	clz	r1, r0
	movwne	r0, #1
	add	r7, r4, r0, lsl #5
	add	r5, r10, r0, lsl #5
	lsr	r0, r1, #5
	add	r4, r4, r0, lsl #5
	add	r6, r10, r0, lsl #5
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	mov	r3, r6
	bl	XYcZ_addC
	mov	r0, r4
	mov	r1, r6
	mov	r2, r7
	mov	r3, r5
	str	r9, [sp]
	mov	r4, r8
	bl	XYcZ_add
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	subs	r11, r11, #1
	bhi	.LBB29_8
.LBB29_9:
	ldr	r0, [r1]
	mov	r8, r10
	str	r9, [sp]
	and	r0, r0, #1
	add	r6, r10, r0, lsl #5
	add	r11, r4, r0, lsl #5
	eor	r0, r0, #1
	mov	r1, r6
	add	r2, r4, r0, lsl #5
	add	r3, r10, r0, lsl #5
	mov	r0, r11
	str	r2, [sp, #44]                   @ 4-byte Spill
	str	r3, [sp, #24]                   @ 4-byte Spill
	bl	XYcZ_addC
	add	r10, r9, #4
	add	r7, sp, #48
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	mov	r2, r4
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	mov	r0, r7
	mov	r3, r10
	str	r4, [sp]
	bl	uECC_vli_modSub
	add	r5, sp, #208
	ldrsb	r3, [r9]
	mov	r1, r7
	mov	r2, r6
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r7
	mov	r1, r5
	blx	r2
	add	r5, sp, #208
	ldrsb	r3, [r9]
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	mov	r1, r7
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r7
	mov	r1, r5
	blx	r2
	mov	r0, r7
	mov	r1, r7
	mov	r2, r10
	mov	r3, r4
	bl	uECC_vli_modInv
	add	r5, sp, #208
	ldrsb	r3, [r9]
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	mov	r1, r7
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r7
	mov	r1, r5
	blx	r2
	add	r5, sp, #208
	ldrsb	r3, [r9]
	mov	r1, r7
	mov	r2, r11
	mov	r0, r5
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r7
	mov	r1, r5
	blx	r2
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r2, r11
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	mov	r3, r6
	str	r9, [sp]
	bl	XYcZ_add
	add	r0, sp, #144
	mov	r1, r8
	mov	r2, r7
	mov	r3, r9
	bl	apply_z
	cmp	r4, #1
	blt	.LBB29_11
@ %bb.10:
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r1, sp, #144
	ldr	r5, [sp, #20]                   @ 4-byte Reload
	lsl	r4, r0, #2
	mov	r0, r5
	mov	r2, r4
	bl	memcpy
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r1, sp, #80
	mov	r2, r4
	add	r0, r5, r0, lsl #2
	bl	memcpy
.LBB29_11:
	add	sp, sp, #276
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end29:
	.size	EccPoint_mult, .Lfunc_end29-EccPoint_mult
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
	.pad	#172
	sub	sp, sp, #172
	ldr	r11, [sp, #208]
	add	r9, sp, #76
	mov	r7, r0
	str	r1, [sp, #4]                    @ 4-byte Spill
	add	r10, r11, #4
	mov	r6, r3
	ldrsb	r5, [r11]
	mov	r4, r2
	mov	r1, r2
	mov	r0, r9
	mov	r2, r7
	mov	r3, r10
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r8, sp, #108
	mov	r1, r9
	mov	r2, r9
	mov	r3, r5
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r9
	mov	r1, r8
	blx	r2
	add	r8, sp, #108
	ldrsb	r3, [r11]
	mov	r1, r7
	mov	r2, r9
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r7
	mov	r1, r8
	blx	r2
	add	r8, sp, #108
	ldrsb	r3, [r11]
	mov	r1, r4
	mov	r2, r9
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r4
	mov	r1, r8
	blx	r2
	mov	r0, r9
	ldr	r9, [sp, #4]                    @ 4-byte Reload
	mov	r1, r6
	mov	r3, r10
	str	r5, [sp]
	mov	r2, r9
	bl	uECC_vli_modAdd
	mov	r0, r6
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #44
	mov	r1, r4
	mov	r2, r7
	mov	r3, r10
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r8, sp, #108
	ldrsb	r3, [r11]
	add	r2, sp, #44
	mov	r1, r9
	mov	r0, r8
	bl	uECC_vli_mult
	ldr	r2, [r11, #172]
	mov	r0, r9
	mov	r1, r8
	blx	r2
	add	r0, sp, #44
	mov	r1, r7
	mov	r2, r4
	mov	r3, r10
	str	r5, [sp]
	mov	r11, r0
	bl	uECC_vli_modAdd
	ldr	r9, [sp, #208]
	add	r8, sp, #108
	mov	r1, r6
	mov	r2, r6
	mov	r0, r8
	ldrsb	r3, [r9]
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r4
	mov	r1, r8
	blx	r2
	mov	r0, r4
	mov	r1, r4
	mov	r2, r11
	mov	r3, r10
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r8, sp, #8
	mov	r1, r7
	mov	r2, r4
	mov	r3, r10
	mov	r0, r8
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r4, sp, #108
	ldrsb	r3, [r9]
	mov	r1, r6
	mov	r2, r8
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	mov	r0, r6
	mov	r1, r6
	mov	r3, r10
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r4, sp, #108
	add	r1, sp, #76
	ldrsb	r3, [r9]
	mov	r0, r4
	mov	r2, r1
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r8
	mov	r1, r4
	blx	r2
	add	r6, sp, #44
	mov	r0, r8
	mov	r1, r8
	mov	r3, r10
	mov	r2, r6
	str	r5, [sp]
	bl	uECC_vli_modSub
	mov	r0, r6
	mov	r1, r8
	mov	r2, r7
	mov	r3, r10
	str	r5, [sp]
	bl	uECC_vli_modSub
	add	r4, sp, #108
	ldrsb	r3, [r9]
	add	r2, sp, #76
	mov	r1, r6
	mov	r0, r4
	bl	uECC_vli_mult
	ldr	r2, [r9, #172]
	mov	r0, r6
	mov	r1, r4
	blx	r2
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	r1, r6
	mov	r3, r10
	str	r5, [sp]
	mov	r2, r0
	bl	uECC_vli_modSub
	cmp	r5, #1
	blt	.LBB30_2
@ %bb.1:
	uxtb	r0, r5
	add	r1, sp, #8
	lsl	r2, r0, #2
	mov	r0, r7
	bl	memcpy
.LBB30_2:
	add	sp, sp, #172
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end30:
	.size	XYcZ_addC, .Lfunc_end30-XYcZ_addC
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
	blt	.LBB31_4
@ %bb.1:
	mov	r11, #0
	mov	r5, r12
	mov	r6, r1
	mov	r7, r9
.LBB31_2:                               @ =>This Inner Loop Header: Depth=1
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
	bne	.LBB31_2
@ %bb.3:
	mov	r0, #1
	cmp	r4, #0
	bne	.LBB31_6
.LBB31_4:
	lsl	r3, lr, #24
	mov	r0, #0
	cmp	r8, r3, asr #19
	bge	.LBB31_6
@ %bb.5:
	asr	r0, r8, #5
	and	r3, r8, #31
	ldr	r0, [r1, r0, lsl #2]
	mov	r4, #1
	and	r0, r4, r0, lsr r3
.LBB31_6:
	sxtb	r3, lr
	cmp	r3, #1
	blt	.LBB31_9
@ %bb.7:
	mov	r7, #0
.LBB31_8:                               @ =>This Inner Loop Header: Depth=1
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
	bne	.LBB31_8
.LBB31_9:
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end31:
	.size	regularize_k, .Lfunc_end31-regularize_k
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
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.pad	#80
	sub	sp, sp, #80
	mov	r7, r2
	mov	r3, r1
	add	r2, sp, #16
	add	r1, sp, #48
	mov	r4, r0
	mov	r0, r3
	mov	r3, r7
	str	r2, [sp, #12]
	str	r1, [sp, #8]
	bl	regularize_k
	eor	r0, r0, #1
	add	r2, sp, #8
	ldrh	r1, [r7, #2]
	mov	r3, #0
	ldr	r2, [r2, r0, lsl #2]
	mov	r5, #0
	add	r0, r1, #1
	add	r1, r7, #68
	sxth	r6, r0
	mov	r0, r4
	strd	r6, r7, [sp]
	bl	EccPoint_mult
	ldrb	r0, [r7]
	lsl	r0, r0, #1
	sxtb	r0, r0
	cmp	r0, #1
	blt	.LBB32_4
@ %bb.1:
	uxtb	r0, r0
	mov	r5, #0
.LBB32_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r4], #4
	subs	r0, r0, #1
	orr	r5, r1, r5
	bne	.LBB32_2
@ %bb.3:
	cmp	r5, #0
	movwne	r5, #1
.LBB32_4:
	mov	r0, r5
	add	sp, sp, #80
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end32:
	.size	EccPoint_compute_public_key, .Lfunc_end32-EccPoint_compute_public_key
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
.LBB33_1:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	mov	lr, #0
	mov	r12, #24
	mov	r3, #0
.LBB33_2:                               @ =>This Inner Loop Header: Depth=1
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
	blt	.LBB33_2
@ %bb.3:
	pop	{r4, r5, r11, lr}
	bx	lr
.Lfunc_end33:
	.size	uECC_vli_nativeToBytes, .Lfunc_end33-uECC_vli_nativeToBytes
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
	blt	.LBB34_2
@ %bb.1:
	asr	r0, r0, #2
	mov	r1, #1020
	and	r2, r1, r0, lsl #2
	mov	r0, r6
	mov	r1, #0
	bl	memset
.LBB34_2:
	cmp	r4, #1
	blt	.LBB34_5
@ %bb.3:
	mov	r2, #0
	mov	r12, #24
	mov	r1, #0
.LBB34_4:                               @ =>This Inner Loop Header: Depth=1
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
	blt	.LBB34_4
.LBB34_5:
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end34:
	.size	uECC_vli_bytesToNative, .Lfunc_end34-uECC_vli_bytesToNative
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
	.pad	#4
	sub	sp, sp, #4
	mov	r6, r0
	mov	r9, r1
	mov	r0, r1
	mov	r1, r2
	mov	r4, r2
	bl	uECC_vli_numBits
	ldr	r1, .LCPI35_0
.LPC35_0:
	ldr	r1, [pc, r1]
	cmp	r1, #0
	beq	.LBB35_9
@ %bb.1:
	rsb	r0, r0, r4, lsl #5
	mvn	r1, #0
	sub	r7, r6, #4
	uxtb	r5, r4
	uxth	r0, r0
	lsl	r11, r4, #2
	lsr	r10, r1, r0
	mov	r8, #0
.LBB35_2:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB35_5 Depth 2
	ldr	r2, .LCPI35_1
	mov	r0, r6
	mov	r1, r11
.LPC35_1:
	ldr	r2, [pc, r2]
	blx	r2
	cmp	r0, #0
	beq	.LBB35_9
@ %bb.3:                                @   in Loop: Header=BB35_2 Depth=1
	ldr	r0, [r7, r4, lsl #2]
	cmp	r4, #1
	and	r0, r0, r10
	str	r0, [r7, r4, lsl #2]
	blt	.LBB35_8
@ %bb.4:                                @   in Loop: Header=BB35_2 Depth=1
	mov	r0, #0
	mov	r1, #0
.LBB35_5:                               @   Parent Loop BB35_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r6, r0, lsl #2]
	add	r0, r0, #1
	cmp	r5, r0
	orr	r1, r2, r1
	bne	.LBB35_5
@ %bb.6:                                @   in Loop: Header=BB35_2 Depth=1
	cmp	r1, #0
	beq	.LBB35_8
@ %bb.7:                                @   in Loop: Header=BB35_2 Depth=1
	mov	r0, r9
	mov	r1, r6
	mov	r2, r4
	bl	uECC_vli_cmp
	cmp	r0, #1
	beq	.LBB35_11
.LBB35_8:                               @   in Loop: Header=BB35_2 Depth=1
	add	r8, r8, #1
	cmp	r8, #64
	bne	.LBB35_2
.LBB35_9:
	mov	r0, #0
.LBB35_10:
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB35_11:
	mov	r0, #1
	b	.LBB35_10
	.p2align	2
@ %bb.12:
.LCPI35_0:
	.long	g_rng_function-(.LPC35_0+8)
.LCPI35_1:
	.long	g_rng_function-(.LPC35_1+8)
.Lfunc_end35:
	.size	uECC_generate_random_int, .Lfunc_end35-uECC_generate_random_int
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
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	.pad	#96
	sub	sp, sp, #96
	ldrb	r2, [r1]
	mov	r5, r0
	mov	r4, r1
	lsl	r0, r2, #1
	sxtb	r1, r0
	mvn	r0, #0
	cmp	r1, #1
	blt	.LBB36_17
@ %bb.1:
	sxtb	r8, r2
	uxtb	r1, r1
	mov	r3, #0
	mov	r7, #0
.LBB36_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r5, r3, lsl #2]
	add	r3, r3, #1
	cmp	r1, r3
	orr	r7, r6, r7
	bne	.LBB36_2
@ %bb.3:
	cmp	r7, #0
	beq	.LBB36_17
@ %bb.4:
	add	r3, r4, #4
	mov	r1, r2
	mvn	r0, #1
.LBB36_5:                               @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r7, r1
	cmp	r7, #0
	bmi	.LBB36_17
@ %bb.6:                                @   in Loop: Header=BB36_5 Depth=1
	uxtb	r7, r7
	ldr	r6, [r5, r7, lsl #2]
	ldr	r7, [r3, r7, lsl #2]
	cmp	r7, r6
	bhi	.LBB36_8
@ %bb.7:                                @   in Loop: Header=BB36_5 Depth=1
	bhs	.LBB36_5
	b	.LBB36_17
.LBB36_8:
	add	r1, r5, r8, lsl #2
.LBB36_9:                               @ =>This Inner Loop Header: Depth=1
	sub	r2, r2, #1
	sxtb	r7, r2
	cmp	r7, #0
	bmi	.LBB36_17
@ %bb.10:                               @   in Loop: Header=BB36_9 Depth=1
	uxtb	r7, r7
	ldr	r6, [r1, r7, lsl #2]
	ldr	r7, [r3, r7, lsl #2]
	cmp	r7, r6
	bhi	.LBB36_12
@ %bb.11:                               @   in Loop: Header=BB36_9 Depth=1
	bhs	.LBB36_9
	b	.LBB36_17
.LBB36_12:
	add	r6, sp, #32
	mov	r2, r1
	mov	r3, r8
	mov	r0, r6
	bl	uECC_vli_mult
	ldr	r2, [r4, #172]
	mov	r7, sp
	mov	r0, r7
	mov	r1, r6
	blx	r2
	add	r6, sp, #32
	ldr	r3, [r4, #168]
	mov	r1, r5
	mov	r2, r4
	mov	r0, r6
	blx	r3
	sub	r0, r8, #1
	sxtb	r0, r0
	cmp	r0, #0
	bmi	.LBB36_16
@ %bb.13:
	uxtb	r0, r0
	mov	r1, #0
	rsb	r0, r0, #0
.LBB36_14:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r7, -r0, lsl #2]
	ldr	r3, [r6, -r0, lsl #2]
	add	r0, r0, #1
	cmp	r0, #1
	eor	r2, r3, r2
	orr	r1, r2, r1
	bne	.LBB36_14
@ %bb.15:
	mvn	r0, #2
	cmp	r1, #0
	moveq	r0, #0
	b	.LBB36_17
.LBB36_16:
	mov	r0, #0
.LBB36_17:
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end36:
	.size	uECC_valid_point, .Lfunc_end36-uECC_valid_point
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
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.pad	#64
	sub	sp, sp, #64
	ldrsb	r7, [r1, #1]
	mov	r6, r0
	mov	r5, sp
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	uECC_vli_bytesToNative
	ldrsb	r0, [r4]
	add	r1, r6, r7
	mov	r2, r7
	add	r0, r5, r0, lsl #2
	bl	uECC_vli_bytesToNative
	add	r0, r4, #68
	mov	r1, #16
.LBB37_1:                               @ =>This Inner Loop Header: Depth=1
	sub	r1, r1, #1
	sxtb	r2, r1
	cmp	r2, #0
	bmi	.LBB37_4
@ %bb.2:                                @   in Loop: Header=BB37_1 Depth=1
	uxtb	r2, r2
	ldr	r3, [r0, r2, lsl #2]
	ldr	r2, [r5, r2, lsl #2]
	cmp	r2, r3
	beq	.LBB37_1
@ %bb.3:
	mov	r0, sp
	mov	r1, r4
	bl	uECC_valid_point
	b	.LBB37_5
.LBB37_4:
	mvn	r0, #3
.LBB37_5:
	add	sp, sp, #64
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end37:
	.size	uECC_valid_public_key, .Lfunc_end37-uECC_valid_public_key
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
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.pad	#96
	sub	sp, sp, #96
	ldrsh	r5, [r2, #2]
	mov	r8, r1
	mov	r1, r0
	add	r4, sp, #64
	add	r0, r5, #7
	mov	r6, r2
	add	r0, r0, r0, lsr #29
	asr	r2, r0, #3
	mov	r0, r4
	bl	uECC_vli_bytesToNative
	add	r0, r5, #31
	add	r0, r0, r0, lsr #27
	sbfx	r1, r0, #5, #8
	cmp	r1, #1
	blt	.LBB38_12
@ %bb.1:
	asr	r1, r0, #5
	mov	r3, #0
	uxtb	r0, r1
	mov	r2, #0
.LBB38_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r4, r3, lsl #2]
	add	r3, r3, #1
	cmp	r0, r3
	orr	r2, r7, r2
	bne	.LBB38_2
@ %bb.3:
	mov	r9, #0
	cmp	r2, #0
	beq	.LBB38_13
@ %bb.4:
	sxtb	r2, r1
	add	r0, r6, #36
	add	r1, sp, #64
	bl	uECC_vli_cmp
	cmp	r0, #1
	bne	.LBB38_13
@ %bb.5:
	mov	r7, sp
	add	r1, sp, #64
	mov	r0, r7
	mov	r2, r6
	bl	EccPoint_compute_public_key
	cmp	r0, #0
	beq	.LBB38_13
@ %bb.6:
	ldrsb	r2, [r6, #1]
	mov	r9, #1
	cmp	r2, #1
	blt	.LBB38_13
@ %bb.7:
	mvn	r1, #7
	uxtb	r0, r2
	add	r1, r1, r2, lsl #3
	sub	r2, r2, #1
	mov	r3, r8
.LBB38_8:                               @ =>This Inner Loop Header: Depth=1
	bic	r5, r2, #3
	and	r4, r1, #24
	subs	r0, r0, #1
	sub	r2, r2, #1
	ldr	r5, [r7, r5]
	sub	r1, r1, #8
	lsr	r5, r5, r4
	strb	r5, [r3], #1
	bne	.LBB38_8
@ %bb.9:
	ldrsb	r5, [r6, #1]
	cmp	r5, #1
	blt	.LBB38_13
@ %bb.10:
	ldrsb	r1, [r6]
	mvn	r3, #7
	add	r0, r8, r5
	add	r3, r3, r5, lsl #3
	uxtb	r2, r5
	add	r1, r7, r1, lsl #2
	sub	r7, r5, #1
.LBB38_11:                              @ =>This Inner Loop Header: Depth=1
	bic	r6, r7, #3
	and	r5, r3, #24
	subs	r2, r2, #1
	sub	r7, r7, #1
	ldr	r6, [r1, r6]
	sub	r3, r3, #8
	lsr	r6, r6, r5
	strb	r6, [r0], #1
	bne	.LBB38_11
	b	.LBB38_13
.LBB38_12:
	mov	r9, #0
.LBB38_13:
	mov	r0, r9
	add	sp, sp, #96
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end38:
	.size	uECC_compute_public_key, .Lfunc_end38-uECC_compute_public_key
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
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
