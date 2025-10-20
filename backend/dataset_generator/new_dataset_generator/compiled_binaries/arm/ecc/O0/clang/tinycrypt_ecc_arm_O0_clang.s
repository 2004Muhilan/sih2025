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
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc, r1
	str	r0, [r1]
	add	sp, sp, #4
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
	add	r0, pc, r0
	ldr	r0, [r0]
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #7
	movw	r1, #8
	bl	__aeabi_idiv
	mov	sp, r11
	pop	{r11, pc}
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
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	ldrsb	r0, [r0, #1]
	lsl	r0, r0, #1
	add	sp, sp, #4
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
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	strb	r1, [sp, #3]
	movw	r0, #0
	strb	r0, [sp, #2]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #2]
	ldrsb	r1, [sp, #3]
	cmp	r0, r1
	bge	.LBB4_4
@ %bb.2:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #4]
	ldrsb	r1, [sp, #2]
	add	r1, r0, r1, lsl #2
	movw	r0, #0
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB4_1 Depth=1
	ldrb	r0, [sp, #2]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #2]
	b	.LBB4_1
.LBB4_4:
	add	sp, sp, #8
	bx	lr
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
	.pad	#16
	sub	sp, sp, #16
	str	r0, [sp, #12]
	strb	r1, [sp, #11]
	movw	r0, #0
	str	r0, [sp, #4]
	movw	r0, #0
	strb	r0, [sp, #3]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #3]
	ldrsb	r1, [sp, #11]
	cmp	r0, r1
	bge	.LBB5_4
@ %bb.2:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #12]
	ldrsb	r1, [sp, #3]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r0]
	ldr	r0, [sp, #4]
	orr	r0, r0, r1
	str	r0, [sp, #4]
@ %bb.3:                                @   in Loop: Header=BB5_1 Depth=1
	ldrb	r0, [sp, #3]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #3]
	b	.LBB5_1
.LBB5_4:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	movw	r0, #0
	moveq	r0, #1
	and	r0, r0, #1
	add	sp, sp, #16
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
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	strh	r1, [sp, #2]
	ldr	r0, [sp, #4]
	ldrsh	r1, [sp, #2]
	asr	r1, r1, #5
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	ldrsh	r1, [sp, #2]
	and	r2, r1, #31
	movw	r1, #1
	lsl	r1, r1, r2
	and	r0, r0, r1
	add	sp, sp, #8
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-8]
	strb	r1, [r11, #-9]
	ldr	r0, [r11, #-8]
	ldrsb	r1, [r11, #-9]
	bl	vli_numDigits
	strb	r0, [sp, #3]
	ldrsb	r0, [sp, #3]
	cmp	r0, #0
	bne	.LBB7_2
@ %bb.1:
	movw	r0, #0
	strh	r0, [r11, #-2]
	b	.LBB7_7
.LBB7_2:
	ldr	r0, [r11, #-8]
	ldrsb	r1, [sp, #3]
	sub	r1, r1, #1
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	str	r0, [sp, #4]
	movw	r0, #0
	str	r0, [sp, #8]
.LBB7_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB7_6
@ %bb.4:                                @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [sp, #4]
	lsr	r0, r0, #1
	str	r0, [sp, #4]
@ %bb.5:                                @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB7_3
.LBB7_6:
	ldrsb	r0, [sp, #3]
	sub	r0, r0, #1
	sxth	r0, r0
	lsl	r0, r0, #5
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	strh	r0, [r11, #-2]
.LBB7_7:
	ldrsh	r0, [r11, #-2]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function vli_numDigits
	.type	vli_numDigits,%function
	.code	32                              @ @vli_numDigits
vli_numDigits:
	.fnstart
@ %bb.0:
	.pad	#12
	sub	sp, sp, #12
	str	r0, [sp, #8]
	strb	r1, [sp, #7]
	ldrsb	r0, [sp, #7]
	sub	r0, r0, #1
	strb	r0, [sp, #6]
.LBB8_1:                                @ =>This Inner Loop Header: Depth=1
	ldrsb	r1, [sp, #6]
	movw	r0, #0
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	blt	.LBB8_3
@ %bb.2:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #8]
	ldrsb	r1, [sp, #6]
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	cmp	r0, #0
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
.LBB8_3:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB8_6
@ %bb.4:                                @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_5
.LBB8_5:                                @   in Loop: Header=BB8_1 Depth=1
	ldrb	r0, [sp, #6]
	movw	r1, #255
	add	r0, r0, r1
	strb	r0, [sp, #6]
	b	.LBB8_1
.LBB8_6:
	ldrsb	r0, [sp, #6]
	add	r0, r0, #1
	sxtb	r0, r0
	add	sp, sp, #12
	bx	lr
.Lfunc_end8:
	.size	vli_numDigits, .Lfunc_end8-vli_numDigits
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
	.pad	#12
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	strb	r2, [sp, #3]
	movw	r0, #0
	strb	r0, [sp, #2]
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #2]
	ldrsb	r1, [sp, #3]
	cmp	r0, r1
	bge	.LBB9_4
@ %bb.2:                                @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #4]
	ldrsb	r2, [sp, #2]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #8]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB9_1 Depth=1
	ldrb	r0, [sp, #2]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #2]
	b	.LBB9_1
.LBB9_4:
	add	sp, sp, #12
	bx	lr
.Lfunc_end9:
	.size	uECC_vli_set, .Lfunc_end9-uECC_vli_set
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
	.pad	#16
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	strb	r2, [sp, #3]
	ldrsb	r0, [sp, #3]
	sub	r0, r0, #1
	strb	r0, [sp, #2]
.LBB10_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #2]
	cmp	r0, #0
	blt	.LBB10_9
@ %bb.2:                                @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [sp, #8]
	ldrsb	r2, [sp, #2]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #4]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r0, r1
	bls	.LBB10_4
@ %bb.3:
	movw	r0, #1
	strb	r0, [sp, #15]
	b	.LBB10_10
.LBB10_4:                               @   in Loop: Header=BB10_1 Depth=1
	ldr	r0, [sp, #8]
	ldrsb	r2, [sp, #2]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #4]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r0, r1
	bhs	.LBB10_6
@ %bb.5:
	movw	r0, #255
	strb	r0, [sp, #15]
	b	.LBB10_10
.LBB10_6:                               @   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_7
.LBB10_7:                               @   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_8
.LBB10_8:                               @   in Loop: Header=BB10_1 Depth=1
	ldrb	r0, [sp, #2]
	movw	r1, #255
	add	r0, r0, r1
	strb	r0, [sp, #2]
	b	.LBB10_1
.LBB10_9:
	movw	r0, #0
	strb	r0, [sp, #15]
.LBB10_10:
	ldrsb	r0, [sp, #15]
	add	sp, sp, #16
	bx	lr
.Lfunc_end10:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end10-uECC_vli_cmp_unsafe
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
	.pad	#20
	sub	sp, sp, #20
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	strb	r2, [sp, #11]
	movw	r0, #0
	str	r0, [sp, #4]
	ldrsb	r0, [sp, #11]
	sub	r0, r0, #1
	strb	r0, [sp, #3]
.LBB11_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #3]
	cmp	r0, #0
	blt	.LBB11_4
@ %bb.2:                                @   in Loop: Header=BB11_1 Depth=1
	ldr	r0, [sp, #16]
	ldrsb	r2, [sp, #3]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #12]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	eor	r1, r0, r1
	ldr	r0, [sp, #4]
	orr	r0, r0, r1
	str	r0, [sp, #4]
@ %bb.3:                                @   in Loop: Header=BB11_1 Depth=1
	ldrb	r0, [sp, #3]
	movw	r1, #255
	add	r0, r0, r1
	strb	r0, [sp, #3]
	b	.LBB11_1
.LBB11_4:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	movw	r0, #0
	moveq	r0, #1
	mvn	r1, #0
	eor	r0, r0, r1
	and	r0, r0, #1
	add	sp, sp, #20
	bx	lr
.Lfunc_end11:
	.size	uECC_vli_equal, .Lfunc_end11-uECC_vli_equal
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
	.pad	#12
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	mul	r0, r0, r1
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	cmp	r2, #0
	movw	r2, #0
	movne	r2, #1
	mvn	r3, #0
	eor	r2, r2, r3
	and	r2, r2, #1
	mul	r1, r1, r2
	orr	r0, r0, r1
	add	sp, sp, #12
	bx	lr
.Lfunc_end12:
	.size	cond_set, .Lfunc_end12-cond_set
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	strb	r3, [r11, #-13]
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, #0
	strb	r0, [sp, #11]
.LBB13_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #11]
	ldrsb	r1, [r11, #-13]
	cmp	r0, r1
	bge	.LBB13_4
@ %bb.2:                                @   in Loop: Header=BB13_1 Depth=1
	ldr	r0, [r11, #-8]
	ldrsb	r2, [sp, #11]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [r11, #-12]
	ldr	r1, [r1, r2, lsl #2]
	sub	r0, r0, r1
	ldr	r1, [sp, #12]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [r11, #-8]
	ldrsb	r2, [sp, #11]
	ldr	r2, [r0, r2, lsl #2]
	mov	r0, #0
	cmp	r1, r2
	movwhi	r0, #1
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r3, [r11, #-8]
	ldrsb	r12, [sp, #11]
	ldr	r3, [r3, r12, lsl #2]
	subs	r2, r2, r3
	movwne	r2, #1
	bl	cond_set
	str	r0, [sp, #12]
	ldr	r0, [sp, #4]
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #11]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB13_1 Depth=1
	ldrb	r0, [sp, #11]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #11]
	b	.LBB13_1
.LBB13_4:
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end13:
	.size	uECC_vli_sub, .Lfunc_end13-uECC_vli_sub
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#56
	sub	sp, sp, #56
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	strb	r2, [r11, #-9]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-8]
	ldrsb	r3, [r11, #-9]
	add	r0, sp, #12
	str	r0, [sp]                        @ 4-byte Spill
	bl	uECC_vli_sub
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r1, #0
	movwne	r1, #1
	str	r1, [sp, #8]
	ldrsb	r1, [r11, #-9]
	bl	uECC_vli_isZero
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	clz	r0, r0
	lsr	r0, r0, #5
	ldr	r1, [sp, #8]
	lsl	r1, r1, #1
	sub	r0, r0, r1
	sxtb	r0, r0
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end14:
	.size	uECC_vli_cmp, .Lfunc_end14-uECC_vli_cmp
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	mov	r12, r0
	ldr	r0, [r11, #8]
	str	r12, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	strb	r0, [sp, #7]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	ldrsb	r3, [sp, #7]
	bl	uECC_vli_add
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.LBB15_2
@ %bb.1:
	ldr	r0, [sp, #8]
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #7]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB15_3
.LBB15_2:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	ldrsb	r3, [sp, #7]
	bl	uECC_vli_sub
.LBB15_3:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end15:
	.size	uECC_vli_modAdd, .Lfunc_end15-uECC_vli_modAdd
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function uECC_vli_add
	.type	uECC_vli_add,%function
	.code	32                              @ @uECC_vli_add
uECC_vli_add:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	strb	r3, [r11, #-13]
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, #0
	strb	r0, [sp, #11]
.LBB16_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #11]
	ldrsb	r1, [r11, #-13]
	cmp	r0, r1
	bge	.LBB16_4
@ %bb.2:                                @   in Loop: Header=BB16_1 Depth=1
	ldr	r0, [r11, #-8]
	ldrsb	r2, [sp, #11]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [r11, #-12]
	ldr	r1, [r1, r2, lsl #2]
	add	r0, r0, r1
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [r11, #-8]
	ldrsb	r2, [sp, #11]
	ldr	r2, [r0, r2, lsl #2]
	mov	r0, #0
	cmp	r1, r2
	movwlo	r0, #1
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r3, [r11, #-8]
	ldrsb	r12, [sp, #11]
	ldr	r3, [r3, r12, lsl #2]
	subs	r2, r2, r3
	movwne	r2, #1
	bl	cond_set
	str	r0, [sp, #12]
	ldr	r0, [sp, #4]
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #11]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB16_1 Depth=1
	ldrb	r0, [sp, #11]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #11]
	b	.LBB16_1
.LBB16_4:
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end16:
	.size	uECC_vli_add, .Lfunc_end16-uECC_vli_add
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	mov	r12, r0
	ldr	r0, [r11, #8]
	str	r12, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	strb	r0, [sp, #7]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	ldrsb	r3, [sp, #7]
	bl	uECC_vli_sub
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB17_2
@ %bb.1:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	ldrsb	r3, [sp, #7]
	bl	uECC_vli_add
.LBB17_2:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end17:
	.size	uECC_vli_modSub, .Lfunc_end17-uECC_vli_modSub
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#184
	sub	sp, sp, #184
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	strb	r3, [r11, #-13]
	add	r0, sp, #40
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #36]
	ldrsb	r1, [r11, #-13]
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-12]
	bl	uECC_vli_numBits
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, r1, lsl #6
	strh	r0, [sp, #26]
	ldrsh	r0, [sp, #26]
	add	r0, r0, r0, lsr #27
	lsr	r0, r0, #5
	strb	r0, [sp, #25]
	ldrsh	r0, [sp, #26]
	add	r1, r0, r0, lsr #27
	bic	r1, r1, #31
	sub	r0, r0, r1
	strb	r0, [sp, #24]
	movw	r0, #0
	str	r0, [sp, #20]
	sub	r0, r11, #80
	ldrsb	r1, [sp, #25]
	bl	uECC_vli_clear
	ldrsb	r0, [sp, #24]
	cmp	r0, #0
	ble	.LBB18_6
@ %bb.1:
	movw	r0, #0
	str	r0, [sp, #28]
.LBB18_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #28]
	ldrsb	r1, [r11, #-13]
	cmp	r0, r1
	bhs	.LBB18_5
@ %bb.3:                                @   in Loop: Header=BB18_2 Depth=1
	ldr	r0, [r11, #-12]
	ldr	r2, [sp, #28]
	ldr	r1, [r0, r2, lsl #2]
	ldrsb	r3, [sp, #24]
	ldr	r0, [sp, #20]
	orr	r0, r0, r1, lsl r3
	ldrsb	r1, [sp, #25]
	add	r2, r1, r2
	sub	r1, r11, #80
	str	r0, [r1, r2, lsl #2]
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #28]
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	ldrsb	r2, [sp, #24]
	movw	r1, #32
	sub	r1, r1, r2
	lsr	r0, r0, r1
	str	r0, [sp, #20]
@ %bb.4:                                @   in Loop: Header=BB18_2 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB18_2
.LBB18_5:
	b	.LBB18_7
.LBB18_6:
	sub	r0, r11, #80
	ldrsb	r1, [sp, #25]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r11, #-12]
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_set
.LBB18_7:
	movw	r0, #1
	str	r0, [sp, #28]
.LBB18_8:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB18_10 Depth 2
	ldrsh	r0, [sp, #26]
	cmp	r0, #0
	blt	.LBB18_17
@ %bb.9:                                @   in Loop: Header=BB18_8 Depth=1
	movw	r0, #0
	str	r0, [sp, #16]
	movw	r0, #0
	strb	r0, [sp, #15]
.LBB18_10:                              @   Parent Loop BB18_8 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrsb	r0, [sp, #15]
	ldrsb	r1, [r11, #-13]
	lsl	r1, r1, #1
	cmp	r0, r1
	bge	.LBB18_15
@ %bb.11:                               @   in Loop: Header=BB18_10 Depth=2
	ldr	r0, [sp, #28]
	add	r1, sp, #32
	ldr	r0, [r1, r0, lsl #2]
	ldrsb	r3, [sp, #15]
	ldr	r0, [r0, r3, lsl #2]
	sub	r2, r11, #80
	ldr	r2, [r2, r3, lsl #2]
	sub	r0, r0, r2
	ldr	r2, [sp, #16]
	sub	r0, r0, r2
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #28]
	ldr	r1, [r1, r2, lsl #2]
	ldrsb	r2, [sp, #15]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r0, r1
	beq	.LBB18_13
@ %bb.12:                               @   in Loop: Header=BB18_10 Depth=2
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #28]
	add	r1, sp, #32
	ldr	r1, [r1, r2, lsl #2]
	ldrsb	r2, [sp, #15]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r0, r1
	movw	r0, #0
	movhi	r0, #1
	and	r0, r0, #1
	str	r0, [sp, #16]
.LBB18_13:                              @   in Loop: Header=BB18_10 Depth=2
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #28]
	rsb	r2, r1, #1
	add	r1, sp, #32
	ldr	r1, [r1, r2, lsl #2]
	ldrsb	r2, [sp, #15]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.14:                               @   in Loop: Header=BB18_10 Depth=2
	ldrb	r0, [sp, #15]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #15]
	b	.LBB18_10
.LBB18_15:                              @   in Loop: Header=BB18_8 Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #16]
	eor	r0, r0, r1
	clz	r0, r0
	lsr	r0, r0, #5
	str	r0, [sp, #28]
	ldrsb	r1, [r11, #-13]
	sub	r0, r11, #80
	str	r0, [sp]                        @ 4-byte Spill
	bl	uECC_vli_rshift1
	ldr	r0, [sp]                        @ 4-byte Reload
	ldrsb	r1, [r11, #-13]
	add	r2, r0, r1, lsl #2
	ldr	r3, [r0, r1, lsl #2]
	ldr	r1, [r2, #-4]
	orr	r1, r1, r3, lsl #31
	str	r1, [r2, #-4]
	ldrsb	r1, [r11, #-13]
	add	r0, r0, r1, lsl #2
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_rshift1
@ %bb.16:                               @   in Loop: Header=BB18_8 Depth=1
	ldrh	r0, [sp, #26]
	movw	r1, #65535
	add	r0, r0, r1
	strh	r0, [sp, #26]
	b	.LBB18_8
.LBB18_17:
	ldr	r0, [r11, #-4]
	ldr	r2, [sp, #28]
	add	r1, sp, #32
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_set
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end18:
	.size	uECC_vli_mmod, .Lfunc_end18-uECC_vli_mmod
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function uECC_vli_rshift1
	.type	uECC_vli_rshift1,%function
	.code	32                              @ @uECC_vli_rshift1
uECC_vli_rshift1:
	.fnstart
@ %bb.0:
	.pad	#20
	sub	sp, sp, #20
	str	r0, [sp, #16]
	strb	r1, [sp, #15]
	ldr	r0, [sp, #16]
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	ldrsb	r1, [sp, #15]
	ldr	r0, [sp, #16]
	add	r0, r0, r1, lsl #2
	str	r0, [sp, #16]
.LBB19_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	mvn	r1, #3
	add	r1, r0, r1
	str	r1, [sp, #16]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bls	.LBB19_3
@ %bb.2:                                @   in Loop: Header=BB19_1 Depth=1
	ldr	r0, [sp, #16]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r0, [sp]
	lsr	r0, r0, #1
	ldr	r1, [sp, #4]
	orr	r0, r0, r1
	ldr	r1, [sp, #16]
	str	r0, [r1]
	ldr	r0, [sp]
	lsl	r0, r0, #31
	str	r0, [sp, #4]
	b	.LBB19_1
.LBB19_3:
	add	sp, sp, #20
	bx	lr
.Lfunc_end19:
	.size	uECC_vli_rshift1, .Lfunc_end19-uECC_vli_rshift1
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#88
	sub	sp, sp, #88
	mov	r12, r0
	ldr	r0, [r11, #8]
	str	r12, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	strb	r0, [r11, #-17]
	add	r0, sp, #4
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	ldrsb	r3, [r11, #-17]
	bl	uECC_vli_mult
	ldr	r0, [r11, #-4]
	add	r1, sp, #4
	ldr	r2, [r11, #-16]
	ldrsb	r3, [r11, #-17]
	bl	uECC_vli_mmod
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end20:
	.size	uECC_vli_modMult, .Lfunc_end20-uECC_vli_modMult
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,%function
	.code	32                              @ @uECC_vli_mult
uECC_vli_mult:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#40
	sub	sp, sp, #40
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	strb	r3, [r11, #-13]
	movw	r0, #0
	str	r0, [sp, #20]
	movw	r0, #0
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, #0
	strb	r0, [sp, #10]
.LBB21_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB21_3 Depth 2
	ldrsb	r0, [sp, #10]
	ldrsb	r1, [r11, #-13]
	cmp	r0, r1
	bge	.LBB21_8
@ %bb.2:                                @   in Loop: Header=BB21_1 Depth=1
	movw	r0, #0
	strb	r0, [sp, #11]
.LBB21_3:                               @   Parent Loop BB21_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrsb	r0, [sp, #11]
	ldrsb	r1, [sp, #10]
	cmp	r0, r1
	bgt	.LBB21_6
@ %bb.4:                                @   in Loop: Header=BB21_3 Depth=2
	ldr	r0, [r11, #-8]
	ldrsb	r3, [sp, #11]
	ldr	r0, [r0, r3, lsl #2]
	ldr	r1, [r11, #-12]
	ldrsb	r2, [sp, #10]
	sub	r2, r2, r3
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	add	r2, sp, #20
	add	r3, sp, #16
	add	r12, sp, #12
	str	r12, [sp]
	bl	muladd
@ %bb.5:                                @   in Loop: Header=BB21_3 Depth=2
	ldrb	r0, [sp, #11]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #11]
	b	.LBB21_3
.LBB21_6:                               @   in Loop: Header=BB21_1 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #10]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
	ldr	r0, [sp, #16]
	str	r0, [sp, #20]
	ldr	r0, [sp, #12]
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
@ %bb.7:                                @   in Loop: Header=BB21_1 Depth=1
	ldrb	r0, [sp, #10]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #10]
	b	.LBB21_1
.LBB21_8:
	ldrb	r0, [r11, #-13]
	strb	r0, [sp, #10]
.LBB21_9:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB21_11 Depth 2
	ldrsb	r0, [sp, #10]
	ldrsb	r1, [r11, #-13]
	lsl	r1, r1, #1
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB21_16
@ %bb.10:                               @   in Loop: Header=BB21_9 Depth=1
	ldrsb	r0, [sp, #10]
	add	r0, r0, #1
	ldrsb	r1, [r11, #-13]
	sub	r0, r0, r1
	strb	r0, [sp, #11]
.LBB21_11:                              @   Parent Loop BB21_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrsb	r0, [sp, #11]
	ldrsb	r1, [r11, #-13]
	cmp	r0, r1
	bge	.LBB21_14
@ %bb.12:                               @   in Loop: Header=BB21_11 Depth=2
	ldr	r0, [r11, #-8]
	ldrsb	r3, [sp, #11]
	ldr	r0, [r0, r3, lsl #2]
	ldr	r1, [r11, #-12]
	ldrsb	r2, [sp, #10]
	sub	r2, r2, r3
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	add	r2, sp, #20
	add	r3, sp, #16
	add	r12, sp, #12
	str	r12, [sp]
	bl	muladd
@ %bb.13:                               @   in Loop: Header=BB21_11 Depth=2
	ldrb	r0, [sp, #11]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #11]
	b	.LBB21_11
.LBB21_14:                              @   in Loop: Header=BB21_9 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #10]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
	ldr	r0, [sp, #16]
	str	r0, [sp, #20]
	ldr	r0, [sp, #12]
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
@ %bb.15:                               @   in Loop: Header=BB21_9 Depth=1
	ldrb	r0, [sp, #10]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #10]
	b	.LBB21_9
.LBB21_16:
	ldr	r0, [sp, #20]
	ldr	r1, [r11, #-4]
	ldrsb	r3, [r11, #-13]
	mvn	r2, #0
	add	r2, r2, r3, lsl #1
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end21:
	.size	uECC_vli_mult, .Lfunc_end21-uECC_vli_mult
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#80
	sub	sp, sp, #80
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	mov	r0, sp
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	ldrsb	r3, [r3]
	bl	uECC_vli_mult
	ldr	r0, [r11, #-16]
	ldr	r2, [r0, #172]
	ldr	r0, [r11, #-4]
	mov	r1, sp
	blx	r2
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end22:
	.size	uECC_vli_modMult_fast, .Lfunc_end22-uECC_vli_modMult_fast
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#152
	sub	sp, sp, #152
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	strb	r3, [r11, #-13]
	ldr	r0, [r11, #-8]
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB23_2
@ %bb.1:
	ldr	r0, [r11, #-4]
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_clear
	b	.LBB23_19
.LBB23_2:
	sub	r0, r11, #48
	ldr	r1, [r11, #-8]
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_set
	add	r0, sp, #72
	ldr	r1, [r11, #-12]
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_set
	add	r0, sp, #40
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_clear
	movw	r0, #1
	str	r0, [sp, #40]
	add	r0, sp, #8
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_clear
.LBB23_3:                               @ =>This Inner Loop Header: Depth=1
	sub	r0, r11, #48
	add	r1, sp, #72
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_cmp_unsafe
	strb	r0, [sp, #7]
	sxtb	r0, r0
	cmp	r0, #0
	beq	.LBB23_18
@ %bb.4:                                @   in Loop: Header=BB23_3 Depth=1
	ldr	r0, [r11, #-48]
	and	r0, r0, #1
	cmp	r0, #0
	bne	.LBB23_6
@ %bb.5:                                @   in Loop: Header=BB23_3 Depth=1
	sub	r0, r11, #48
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_rshift1
	add	r0, sp, #40
	ldr	r1, [r11, #-12]
	ldrsb	r2, [r11, #-13]
	bl	vli_modInv_update
	b	.LBB23_17
.LBB23_6:                               @   in Loop: Header=BB23_3 Depth=1
	ldr	r0, [sp, #72]
	and	r0, r0, #1
	cmp	r0, #0
	bne	.LBB23_8
@ %bb.7:                                @   in Loop: Header=BB23_3 Depth=1
	add	r0, sp, #72
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_rshift1
	add	r0, sp, #8
	ldr	r1, [r11, #-12]
	ldrsb	r2, [r11, #-13]
	bl	vli_modInv_update
	b	.LBB23_16
.LBB23_8:                               @   in Loop: Header=BB23_3 Depth=1
	ldrsb	r0, [sp, #7]
	cmp	r0, #0
	ble	.LBB23_12
@ %bb.9:                                @   in Loop: Header=BB23_3 Depth=1
	sub	r0, r11, #48
	sub	r1, r11, #48
	add	r2, sp, #72
	ldrsb	r3, [r11, #-13]
	bl	uECC_vli_sub
	sub	r0, r11, #48
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_rshift1
	add	r0, sp, #40
	add	r1, sp, #8
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #0
	bge	.LBB23_11
@ %bb.10:                               @   in Loop: Header=BB23_3 Depth=1
	add	r0, sp, #40
	add	r1, sp, #40
	ldr	r2, [r11, #-12]
	ldrsb	r3, [r11, #-13]
	bl	uECC_vli_add
.LBB23_11:                              @   in Loop: Header=BB23_3 Depth=1
	add	r0, sp, #40
	add	r1, sp, #40
	add	r2, sp, #8
	ldrsb	r3, [r11, #-13]
	bl	uECC_vli_sub
	add	r0, sp, #40
	ldr	r1, [r11, #-12]
	ldrsb	r2, [r11, #-13]
	bl	vli_modInv_update
	b	.LBB23_15
.LBB23_12:                              @   in Loop: Header=BB23_3 Depth=1
	add	r0, sp, #72
	add	r1, sp, #72
	sub	r2, r11, #48
	ldrsb	r3, [r11, #-13]
	bl	uECC_vli_sub
	add	r0, sp, #72
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_rshift1
	add	r0, sp, #8
	add	r1, sp, #40
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #0
	bge	.LBB23_14
@ %bb.13:                               @   in Loop: Header=BB23_3 Depth=1
	add	r0, sp, #8
	add	r1, sp, #8
	ldr	r2, [r11, #-12]
	ldrsb	r3, [r11, #-13]
	bl	uECC_vli_add
.LBB23_14:                              @   in Loop: Header=BB23_3 Depth=1
	add	r0, sp, #8
	add	r1, sp, #8
	add	r2, sp, #40
	ldrsb	r3, [r11, #-13]
	bl	uECC_vli_sub
	add	r0, sp, #8
	ldr	r1, [r11, #-12]
	ldrsb	r2, [r11, #-13]
	bl	vli_modInv_update
.LBB23_15:                              @   in Loop: Header=BB23_3 Depth=1
	b	.LBB23_16
.LBB23_16:                              @   in Loop: Header=BB23_3 Depth=1
	b	.LBB23_17
.LBB23_17:                              @   in Loop: Header=BB23_3 Depth=1
	b	.LBB23_3
.LBB23_18:
	ldr	r0, [r11, #-4]
	add	r1, sp, #40
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_set
.LBB23_19:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end23:
	.size	uECC_vli_modInv, .Lfunc_end23-uECC_vli_modInv
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function vli_modInv_update
	.type	vli_modInv_update,%function
	.code	32                              @ @vli_modInv_update
vli_modInv_update:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	strb	r2, [sp, #7]
	movw	r0, #0
	str	r0, [sp]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	and	r0, r0, #1
	cmp	r0, #0
	beq	.LBB24_2
@ %bb.1:
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	ldrsb	r3, [sp, #7]
	bl	uECC_vli_add
	str	r0, [sp]
.LBB24_2:
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #7]
	bl	uECC_vli_rshift1
	ldr	r0, [sp]
	cmp	r0, #0
	beq	.LBB24_4
@ %bb.3:
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #7]
	sub	r1, r1, #1
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1]
	orr	r0, r0, #-2147483648
	str	r0, [r1]
.LBB24_4:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end24:
	.size	vli_modInv_update, .Lfunc_end24-vli_modInv_update
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#96
	sub	sp, sp, #96
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0]
	strb	r0, [sp, #15]
	ldr	r0, [r11, #-12]
	ldrsb	r1, [sp, #15]
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB25_2
@ %bb.1:
	b	.LBB25_6
.LBB25_2:
	add	r0, sp, #48
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-16]
	bl	uECC_vli_modSquare_fast
	add	r0, sp, #16
	ldr	r1, [r11, #-4]
	add	r2, sp, #48
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	add	r0, sp, #48
	add	r1, sp, #48
	ldr	r2, [r11, #-16]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-16]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	ldr	r0, [r11, #-4]
	movw	r1, #0
	sxth	r1, r1
	bl	uECC_vli_testBit
	cmp	r0, #0
	beq	.LBB25_4
@ %bb.3:
	ldr	r1, [r11, #-4]
	ldr	r0, [r11, #-16]
	add	r2, r0, #4
	ldrsb	r3, [sp, #15]
	mov	r0, r1
	bl	uECC_vli_add
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #15]
	bl	uECC_vli_rshift1
	ldr	r0, [sp, #8]
	lsl	r2, r0, #31
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #15]
	sub	r1, r1, #1
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1]
	orr	r0, r0, r2
	str	r0, [r1]
	b	.LBB25_5
.LBB25_4:
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #15]
	bl	uECC_vli_rshift1
.LBB25_5:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-16]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	add	r2, sp, #16
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	add	r2, sp, #16
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #16
	add	r1, sp, #16
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #16
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	add	r0, sp, #48
	ldr	r1, [r11, #-4]
	add	r2, sp, #48
	ldr	r3, [r11, #-16]
	add	r3, r3, #4
	ldrsb	r12, [sp, #15]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-12]
	ldrsb	r2, [sp, #15]
	bl	uECC_vli_set
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #15]
	bl	uECC_vli_set
	ldr	r0, [r11, #-8]
	add	r1, sp, #48
	ldrsb	r2, [sp, #15]
	bl	uECC_vli_set
.LBB25_6:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end25:
	.size	double_jacobian_default, .Lfunc_end25-double_jacobian_default
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast,%function
	.code	32                              @ @uECC_vli_modSquare_fast
uECC_vli_modSquare_fast:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	bl	uECC_vli_modMult_fast
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end26:
	.size	uECC_vli_modSquare_fast, .Lfunc_end26-uECC_vli_modSquare_fast
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#56
	sub	sp, sp, #56
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	add	r0, sp, #12
	ldr	r1, .LCPI27_0
.LPC27_0:
	add	r1, pc, r1
	movw	r2, #32
	bl	memcpy
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0]
	strb	r0, [sp, #11]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #12
	ldr	r3, [r11, #-12]
	add	r3, r3, #4
	ldrsb	r12, [sp, #11]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-12]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	add	r2, r2, #132
	ldr	r3, [r11, #-12]
	add	r3, r3, #4
	ldrsb	r12, [sp, #11]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI27_0:
	.long	.L__const.x_side_default._3-(.LPC27_0+8)
.Lfunc_end27:
	.size	x_side_default, .Lfunc_end27-x_side_default
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
	ldr	r0, .LCPI28_0
.LPC28_0:
	add	r0, pc, r0
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI28_0:
	.long	curve_secp256r1-(.LPC28_0+8)
.Lfunc_end28:
	.size	uECC_secp256r1, .Lfunc_end28-uECC_secp256r1
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#48
	sub	sp, sp, #48
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	movw	r2, #8
	sxtb	r2, r2
	bl	uECC_vli_set
	movw	r0, #0
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #44]
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #28]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #36]
	add	r0, sp, #8
	add	r1, sp, #8
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	mov	r1, r0
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #28]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #32]
	movw	r0, #0
	str	r0, [sp, #36]
	add	r0, sp, #8
	add	r1, sp, #8
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	mov	r1, r0
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	mov	r1, r0
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #32]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #36]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #40]
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #28]
	movw	r0, #0
	str	r0, [sp, #24]
	movw	r0, #0
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	mov	r1, r0
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #36]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #40]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #44]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #28]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #32]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	mov	r1, r0
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #44]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #28]
	movw	r0, #0
	str	r0, [sp, #24]
	movw	r0, #0
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #32]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #40]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_sub
	mov	r1, r0
	ldr	r0, [sp, #4]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #20]
	movw	r0, #0
	str	r0, [sp, #28]
	movw	r0, #0
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #36]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #44]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_sub
	mov	r1, r0
	ldr	r0, [sp, #4]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #32]
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #36]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #40]
	str	r0, [sp, #28]
	movw	r0, #0
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #48]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_sub
	mov	r1, r0
	ldr	r0, [sp, #4]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #56]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #60]
	str	r0, [sp, #12]
	movw	r0, #0
	str	r0, [sp, #16]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #36]
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #40]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #44]
	str	r0, [sp, #28]
	movw	r0, #0
	str	r0, [sp, #32]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #52]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_sub
	mov	r1, r0
	ldr	r0, [sp, #4]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bge	.LBB29_5
@ %bb.1:
	b	.LBB29_2
.LBB29_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, .LCPI29_2
.LPC29_2:
	add	r2, pc, r2
	add	r2, r2, #4
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_add
	mov	r1, r0
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp, #4]
@ %bb.3:                                @   in Loop: Header=BB29_2 Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #0
	blt	.LBB29_2
@ %bb.4:
	b	.LBB29_11
.LBB29_5:
	b	.LBB29_6
.LBB29_6:                               @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #4]
	movw	r0, #1
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	bne	.LBB29_8
@ %bb.7:                                @   in Loop: Header=BB29_6 Depth=1
	ldr	r1, [r11, #-4]
	ldr	r0, .LCPI29_0
.LPC29_0:
	add	r0, pc, r0
	add	r0, r0, #4
	movw	r2, #8
	sxtb	r2, r2
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
.LBB29_8:                               @   in Loop: Header=BB29_6 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB29_10
@ %bb.9:                                @   in Loop: Header=BB29_6 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r2, .LCPI29_1
.LPC29_1:
	add	r2, pc, r2
	add	r2, r2, #4
	movw	r3, #8
	sxtb	r3, r3
	bl	uECC_vli_sub
	mov	r1, r0
	ldr	r0, [sp, #4]
	sub	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB29_6
.LBB29_10:
	b	.LBB29_11
.LBB29_11:
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.12:
.LCPI29_0:
	.long	curve_secp256r1-(.LPC29_0+8)
.LCPI29_1:
	.long	curve_secp256r1-(.LPC29_1+8)
.LCPI29_2:
	.long	curve_secp256r1-(.LPC29_2+8)
.Lfunc_end29:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end29-vli_mmod_fast_secp256r1
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	ldrsb	r1, [r1]
	lsl	r1, r1, #1
	sxtb	r1, r1
	bl	uECC_vli_isZero
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end30:
	.size	EccPoint_isZero, .Lfunc_end30-EccPoint_isZero
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#48
	sub	sp, sp, #48
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	mov	r0, sp
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-16]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	mov	r2, sp
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	mov	r0, sp
	mov	r1, sp
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-8]
	mov	r2, sp
	ldr	r3, [r11, #-16]
	bl	uECC_vli_modMult_fast
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end31:
	.size	apply_z, .Lfunc_end31-apply_z
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#56
	sub	sp, sp, #56
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #8]
	ldrb	r0, [r0]
	strb	r0, [sp, #7]
	add	r0, sp, #8
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #8
	add	r1, sp, #8
	ldr	r2, [r11, #8]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	add	r2, sp, #8
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #8
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #8]
	bl	uECC_vli_modSquare_fast
	add	r0, sp, #8
	add	r1, sp, #8
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #8
	add	r1, sp, #8
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	add	r2, sp, #8
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-12]
	add	r1, sp, #8
	ldrsb	r2, [sp, #7]
	bl	uECC_vli_set
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end32:
	.size	XYcZ_add, .Lfunc_end32-XYcZ_add
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#224
	sub	sp, sp, #224
	mov	r12, r0
	ldr	r0, [r11, #12]
	ldr	r0, [r11, #8]
	str	r12, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	strh	r0, [r11, #-18]
	ldr	r0, [r11, #12]
	ldrb	r0, [r0]
	strb	r0, [sp, #35]
	sub	r0, r11, #84
	add	r0, r0, #32
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #35]
	bl	uECC_vli_set
	add	r0, sp, #76
	add	r0, r0, #32
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #35]
	add	r1, r1, r2, lsl #2
	ldrsb	r2, [sp, #35]
	bl	uECC_vli_set
	sub	r0, r11, #84
	add	r0, r0, #32
	add	r1, sp, #76
	add	r1, r1, #32
	sub	r2, r11, #84
	add	r3, sp, #76
	ldr	lr, [r11, #-16]
	ldr	r12, [r11, #12]
	str	lr, [sp]
	str	r12, [sp, #4]
	bl	XYcZ_initial_double
	ldrsh	r0, [r11, #-18]
	sub	r0, r0, #2
	strh	r0, [sp, #42]
.LBB33_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsh	r0, [sp, #42]
	cmp	r0, #0
	ble	.LBB33_4
@ %bb.2:                                @   in Loop: Header=BB33_1 Depth=1
	ldr	r0, [r11, #-12]
	ldrsh	r1, [sp, #42]
	bl	uECC_vli_testBit
	clz	r0, r0
	lsr	r0, r0, #5
	str	r0, [sp, #36]
	ldr	r12, [sp, #36]
	rsb	r1, r12, #1
	sub	r2, r11, #84
	str	r2, [sp, #24]                   @ 4-byte Spill
	add	r0, r2, r1, lsl #5
	add	r3, sp, #76
	str	r3, [sp, #28]                   @ 4-byte Spill
	add	r1, r3, r1, lsl #5
	add	r2, r2, r12, lsl #5
	add	r3, r3, r12, lsl #5
	ldr	r12, [r11, #12]
	mov	lr, sp
	str	r12, [lr]
	bl	XYcZ_addC
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	ldr	r12, [sp, #36]
	add	r0, r2, r12, lsl #5
	add	r1, r3, r12, lsl #5
	rsb	r12, r12, #1
	add	r2, r2, r12, lsl #5
	add	r3, r3, r12, lsl #5
	ldr	r12, [r11, #12]
	str	r12, [sp]
	bl	XYcZ_add
@ %bb.3:                                @   in Loop: Header=BB33_1 Depth=1
	ldrh	r0, [sp, #42]
	movw	r1, #65535
	add	r0, r0, r1
	strh	r0, [sp, #42]
	b	.LBB33_1
.LBB33_4:
	ldr	r0, [r11, #-12]
	mov	r1, #0
	bl	uECC_vli_testBit
	clz	r0, r0
	lsr	r0, r0, #5
	str	r0, [sp, #36]
	ldr	r12, [sp, #36]
	rsb	r1, r12, #1
	sub	r2, r11, #84
	str	r2, [sp, #20]                   @ 4-byte Spill
	add	r0, r2, r1, lsl #5
	add	r3, sp, #76
	str	r3, [sp, #12]                   @ 4-byte Spill
	add	r1, r3, r1, lsl #5
	add	r2, r2, r12, lsl #5
	add	r3, r3, r12, lsl #5
	ldr	r12, [r11, #12]
	mov	lr, sp
	str	r12, [lr]
	bl	XYcZ_addC
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	add	r1, r2, #32
	ldr	r0, [r11, #12]
	add	r3, r0, #4
	ldrsb	r0, [sp, #35]
	mov	r12, sp
	str	r0, [r12]
	add	r0, sp, #44
	str	r0, [sp, #16]                   @ 4-byte Spill
	bl	uECC_vli_modSub
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #36]
	rsb	r2, r2, #1
	add	r2, r0, r2, lsl #5
	ldr	r3, [r11, #12]
	mov	r0, r1
	bl	uECC_vli_modMult_fast
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #12]
	mov	r0, r1
	bl	uECC_vli_modMult_fast
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [r11, #12]
	add	r2, r0, #4
	ldrsb	r3, [sp, #35]
	mov	r0, r1
	bl	uECC_vli_modInv
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldrsb	r2, [sp, #35]
	add	r2, r0, r2, lsl #2
	ldr	r3, [r11, #12]
	mov	r0, r1
	bl	uECC_vli_modMult_fast
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #36]
	rsb	r2, r2, #1
	add	r2, r0, r2, lsl #5
	ldr	r3, [r11, #12]
	mov	r0, r1
	bl	uECC_vli_modMult_fast
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r12, [sp, #36]
	add	r0, r2, r12, lsl #5
	add	r1, r3, r12, lsl #5
	rsb	r12, r12, #1
	add	r2, r2, r12, lsl #5
	add	r3, r3, r12, lsl #5
	ldr	r12, [r11, #12]
	mov	lr, sp
	str	r12, [lr]
	bl	XYcZ_add
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r3, [r11, #12]
	bl	apply_z
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [r11, #-4]
	ldrsb	r2, [sp, #35]
	bl	uECC_vli_set
	ldr	r0, [r11, #-4]
	ldrsb	r1, [sp, #35]
	add	r0, r0, r1, lsl #2
	add	r1, sp, #76
	ldrsb	r2, [sp, #35]
	bl	uECC_vli_set
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end33:
	.size	EccPoint_mult, .Lfunc_end33-EccPoint_mult
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function XYcZ_initial_double
	.type	XYcZ_initial_double,%function
	.code	32                              @ @XYcZ_initial_double
XYcZ_initial_double:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#56
	sub	sp, sp, #56
	ldr	r12, [r11, #12]
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #12]
	ldrb	r0, [r0]
	strb	r0, [sp, #7]
	ldr	r0, [r11, #8]
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB34_2
@ %bb.1:
	add	r0, sp, #8
	ldr	r1, [r11, #8]
	ldrsb	r2, [sp, #7]
	bl	uECC_vli_set
	b	.LBB34_3
.LBB34_2:
	add	r0, sp, #8
	ldrsb	r1, [sp, #7]
	bl	uECC_vli_clear
	movw	r0, #1
	str	r0, [sp, #8]
.LBB34_3:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	ldrsb	r2, [sp, #7]
	bl	uECC_vli_set
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #7]
	bl	uECC_vli_set
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	add	r2, sp, #8
	ldr	r3, [r11, #12]
	bl	apply_z
	ldr	r0, [r11, #12]
	ldr	r12, [r0, #164]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	add	r2, sp, #8
	ldr	r3, [r11, #12]
	blx	r12
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	add	r2, sp, #8
	ldr	r3, [r11, #12]
	bl	apply_z
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end34:
	.size	XYcZ_initial_double, .Lfunc_end34-XYcZ_initial_double
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function XYcZ_addC
	.type	XYcZ_addC,%function
	.code	32                              @ @XYcZ_addC
XYcZ_addC:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#120
	sub	sp, sp, #120
	ldr	r12, [r11, #8]
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #8]
	ldrb	r0, [r0]
	strb	r0, [sp, #7]
	sub	r0, r11, #48
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	sub	r0, r11, #48
	sub	r1, r11, #48
	ldr	r2, [r11, #8]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	sub	r2, r11, #48
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	sub	r2, r11, #48
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	sub	r0, r11, #48
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #40
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-8]
	add	r2, sp, #40
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	add	r0, sp, #40
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modAdd
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #8]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-12]
	add	r2, sp, #40
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #8
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-12]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-16]
	add	r2, sp, #8
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #8
	sub	r1, r11, #48
	ldr	r2, [r11, #8]
	bl	uECC_vli_modSquare_fast
	add	r0, sp, #8
	add	r1, sp, #8
	add	r2, sp, #40
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #40
	add	r1, sp, #8
	ldr	r2, [r11, #-4]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	add	r0, sp, #40
	add	r1, sp, #40
	sub	r2, r11, #48
	ldr	r3, [r11, #8]
	bl	uECC_vli_modMult_fast
	ldr	r0, [r11, #-8]
	add	r1, sp, #40
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #8]
	add	r3, r3, #4
	ldrsb	r12, [sp, #7]
	str	r12, [sp]
	bl	uECC_vli_modSub
	ldr	r0, [r11, #-4]
	add	r1, sp, #8
	ldrsb	r2, [sp, #7]
	bl	uECC_vli_set
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end35:
	.size	XYcZ_addC, .Lfunc_end35-XYcZ_addC
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [sp, #16]
	ldr	r0, [sp, #16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	strb	r0, [sp, #15]
	ldr	r0, [sp, #16]
	ldrh	r0, [r0, #2]
	strh	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #16]
	add	r2, r2, #36
	ldrsb	r3, [sp, #15]
	bl	uECC_vli_add
	mov	r1, r0
	movw	r0, #1
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB36_4
@ %bb.1:
	ldrsh	r1, [sp, #12]
	ldrsb	r0, [sp, #15]
	lsl	r2, r0, #2
	lsl	r2, r0, #5
	movw	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bge	.LBB36_3
@ %bb.2:
	ldr	r0, [r11, #-8]
	ldrsh	r1, [sp, #12]
	bl	uECC_vli_testBit
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
.LBB36_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
.LBB36_4:
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #16]
	add	r2, r2, #36
	ldrsb	r3, [sp, #15]
	bl	uECC_vli_add
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end36:
	.size	regularize_k, .Lfunc_end36-regularize_k
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#104
	sub	sp, sp, #104
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	sub	r1, r11, #48
	str	r1, [sp, #16]
	add	r2, sp, #24
	str	r2, [sp, #20]
	ldr	r0, [r11, #-12]
	ldr	r3, [r11, #-16]
	bl	regularize_k
	str	r0, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	add	r1, r1, #68
	ldr	r2, [sp, #12]
	clz	r2, r2
	lsr	r3, r2, #5
	add	r2, sp, #16
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	ldr	r3, [r11, #-16]
	ldrsh	r3, [r3, #2]
	add	lr, r3, #1
	ldr	r12, [r11, #-16]
	movw	r3, #0
	sxth	lr, lr
	str	lr, [sp]
	str	r12, [sp, #4]
	bl	EccPoint_mult
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	bl	EccPoint_isZero
	cmp	r0, #0
	beq	.LBB37_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB37_3
.LBB37_2:
	movw	r0, #1
	str	r0, [r11, #-4]
.LBB37_3:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end37:
	.size	EccPoint_compute_public_key, .Lfunc_end37-EccPoint_compute_public_key
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
	.pad	#20
	sub	sp, sp, #20
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	movw	r0, #0
	strb	r0, [sp, #7]
.LBB38_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #7]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bge	.LBB38_4
@ %bb.2:                                @   in Loop: Header=BB38_1 Depth=1
	ldr	r1, [sp, #12]
	ldrsb	r0, [sp, #7]
	mvn	r0, r0
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	bic	r2, r1, #3
	ldr	r0, [r0, r2]
	and	r1, r1, #3
	lsl	r1, r1, #3
	lsr	r0, r0, r1
	ldr	r1, [sp, #16]
	ldrsb	r2, [sp, #7]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB38_1 Depth=1
	ldrb	r0, [sp, #7]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #7]
	b	.LBB38_1
.LBB38_4:
	add	sp, sp, #20
	bx	lr
.Lfunc_end38:
	.size	uECC_vli_nativeToBytes, .Lfunc_end38-uECC_vli_nativeToBytes
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #12]
	add	r0, r0, #3
	movw	r1, #4
	bl	__aeabi_idiv
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	sxtb	r1, r1
	bl	uECC_vli_clear
	movw	r0, #0
	strb	r0, [sp, #11]
.LBB39_1:                               @ =>This Inner Loop Header: Depth=1
	ldrsb	r0, [sp, #11]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bge	.LBB39_4
@ %bb.2:                                @   in Loop: Header=BB39_1 Depth=1
	ldr	r1, [sp, #12]
	ldrsb	r0, [sp, #11]
	mvn	r0, r0
	add	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	ldrsb	r1, [sp, #11]
	ldrb	r0, [r0, r1]
	ldr	r1, [sp, #4]
	and	r2, r1, #3
	lsl	r2, r2, #3
	lsl	r2, r0, r2
	ldr	r0, [r11, #-4]
	lsr	r3, r1, #2
	bic	r1, r1, #3
	add	r1, r0, r1
	ldr	r0, [r1]
	orr	r0, r0, r2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB39_1 Depth=1
	ldrb	r0, [sp, #11]
	movw	r1, #1
	add	r0, r0, r1
	strb	r0, [sp, #11]
	b	.LBB39_1
.LBB39_4:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end39:
	.size	uECC_vli_bytesToNative, .Lfunc_end39-uECC_vli_bytesToNative
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	strb	r2, [r11, #-13]
	mvn	r0, #0
	str	r0, [sp, #12]
	ldr	r0, [r11, #-12]
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_numBits
	strh	r0, [sp, #6]
	ldr	r0, .LCPI40_0
.LPC40_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB40_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB40_12
.LBB40_2:
	movw	r0, #0
	str	r0, [sp, #8]
.LBB40_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #64
	bhs	.LBB40_11
@ %bb.4:                                @   in Loop: Header=BB40_3 Depth=1
	ldr	r2, .LCPI40_1
.LPC40_1:
	ldr	r2, [pc, r2]
	ldr	r0, [r11, #-8]
	ldrsb	r1, [r11, #-13]
	lsl	r1, r1, #2
	blx	r2
	cmp	r0, #0
	bne	.LBB40_6
@ %bb.5:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB40_12
.LBB40_6:                               @   in Loop: Header=BB40_3 Depth=1
	ldr	r0, [sp, #12]
	ldrsb	r1, [r11, #-13]
	ldrh	r2, [sp, #6]
	rsb	r2, r2, r1, lsl #5
	sxth	r2, r2
	lsr	r2, r0, r2
	ldr	r0, [r11, #-8]
	sub	r1, r1, #1
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1]
	and	r0, r0, r2
	str	r0, [r1]
	ldr	r0, [r11, #-8]
	ldrsb	r1, [r11, #-13]
	bl	uECC_vli_isZero
	cmp	r0, #0
	bne	.LBB40_9
@ %bb.7:                                @   in Loop: Header=BB40_3 Depth=1
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-8]
	ldrsb	r2, [r11, #-13]
	bl	uECC_vli_cmp
	sxtb	r0, r0
	cmp	r0, #1
	bne	.LBB40_9
@ %bb.8:
	movw	r0, #1
	str	r0, [r11, #-4]
	b	.LBB40_12
.LBB40_9:                               @   in Loop: Header=BB40_3 Depth=1
	b	.LBB40_10
.LBB40_10:                              @   in Loop: Header=BB40_3 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB40_3
.LBB40_11:
	movw	r0, #0
	str	r0, [r11, #-4]
.LBB40_12:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.13:
.LCPI40_0:
	.long	g_rng_function-(.LPC40_0+8)
.LCPI40_1:
	.long	g_rng_function-(.LPC40_1+8)
.Lfunc_end40:
	.size	uECC_generate_random_int, .Lfunc_end40-uECC_generate_random_int
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#80
	sub	sp, sp, #80
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0]
	strb	r0, [sp, #3]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-12]
	bl	EccPoint_isZero
	cmp	r0, #0
	beq	.LBB41_2
@ %bb.1:
	mvn	r0, #0
	str	r0, [r11, #-4]
	b	.LBB41_8
.LBB41_2:
	ldr	r0, [r11, #-12]
	add	r0, r0, #4
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #3]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	bne	.LBB41_4
@ %bb.3:
	ldr	r0, [r11, #-12]
	add	r0, r0, #4
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #3]
	add	r1, r1, r2, lsl #2
	ldrsb	r2, [sp, #3]
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB41_5
.LBB41_4:
	mvn	r0, #1
	str	r0, [r11, #-4]
	b	.LBB41_8
.LBB41_5:
	add	r0, sp, #36
	ldr	r1, [r11, #-8]
	ldrsb	r2, [sp, #3]
	add	r1, r1, r2, lsl #2
	ldr	r2, [r11, #-12]
	bl	uECC_vli_modSquare_fast
	ldr	r0, [r11, #-12]
	ldr	r3, [r0, #168]
	add	r0, sp, #4
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	blx	r3
	add	r0, sp, #36
	add	r1, sp, #4
	ldrsb	r2, [sp, #3]
	bl	uECC_vli_equal
	cmp	r0, #0
	beq	.LBB41_7
@ %bb.6:
	mvn	r0, #2
	str	r0, [r11, #-4]
	b	.LBB41_8
.LBB41_7:
	movw	r0, #0
	str	r0, [r11, #-4]
.LBB41_8:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end41:
	.size	uECC_valid_point, .Lfunc_end41-uECC_valid_point
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#80
	sub	sp, sp, #80
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-12]
	ldrsb	r2, [r0, #1]
	add	r0, sp, #4
	str	r0, [sp]                        @ 4-byte Spill
	bl	uECC_vli_bytesToNative
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-12]
	ldrsb	r1, [r1]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	ldrsb	r2, [r2, #1]
	add	r1, r1, r2
	ldr	r2, [r11, #-12]
	ldrsb	r2, [r2, #1]
	bl	uECC_vli_bytesToNative
	add	r0, sp, #4
	ldr	r1, [r11, #-12]
	add	r1, r1, #68
	movw	r2, #16
	sxtb	r2, r2
	bl	uECC_vli_cmp_unsafe
	sxtb	r0, r0
	cmp	r0, #0
	bne	.LBB42_2
@ %bb.1:
	mvn	r0, #3
	str	r0, [r11, #-4]
	b	.LBB42_3
.LBB42_2:
	add	r0, sp, #4
	ldr	r1, [r11, #-12]
	bl	uECC_valid_point
	str	r0, [r11, #-4]
.LBB42_3:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end42:
	.size	uECC_valid_public_key, .Lfunc_end42-uECC_valid_public_key
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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#136
	sub	sp, sp, #136
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	sub	r0, r11, #48
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [r11, #-8]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #7
	movw	r1, #8
	bl	__aeabi_idiv
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	bl	uECC_vli_bytesToNative
	sub	r0, r11, #48
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	mov	r1, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	sxtb	r1, r1
	bl	uECC_vli_isZero
	cmp	r0, #0
	beq	.LBB43_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB43_7
.LBB43_2:
	ldr	r0, [r11, #-16]
	add	r0, r0, #36
	str	r0, [sp, #8]                    @ 4-byte Spill
	sub	r0, r11, #48
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r11, #-16]
	ldrsh	r0, [r0, #2]
	add	r0, r0, #31
	movw	r1, #32
	bl	__aeabi_idiv
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	sxtb	r2, r2
	bl	uECC_vli_cmp
	sxtb	r0, r0
	cmp	r0, #1
	beq	.LBB43_4
@ %bb.3:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB43_7
.LBB43_4:
	add	r0, sp, #24
	sub	r1, r11, #48
	ldr	r2, [r11, #-16]
	bl	EccPoint_compute_public_key
	cmp	r0, #0
	bne	.LBB43_6
@ %bb.5:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB43_7
.LBB43_6:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	ldrsb	r1, [r1, #1]
	add	r2, sp, #24
	str	r2, [sp]                        @ 4-byte Spill
	bl	uECC_vli_nativeToBytes
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [r11, #-12]
	ldr	r3, [r11, #-16]
	ldrsb	r1, [r3, #1]
	add	r0, r0, r1
	ldrsb	r3, [r3]
	add	r2, r2, r3, lsl #2
	bl	uECC_vli_nativeToBytes
	movw	r0, #1
	str	r0, [r11, #-4]
.LBB43_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end43:
	.size	uECC_compute_public_key, .Lfunc_end43-uECC_compute_public_key
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function muladd
	.type	muladd,%function
	.code	32                              @ @muladd
muladd:
	.fnstart
@ %bb.0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#32
	sub	sp, sp, #32
	ldr	r12, [r11, #8]
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	umull	r0, r1, r0, r1
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #16]
	ldr	r1, [r0]
	ldr	r0, [sp, #20]
	ldr	r0, [r0]
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	adds	r1, r1, r3
	adc	r0, r0, r2
	str	r1, [sp]
	str	r0, [sp, #4]
	ldr	lr, [sp]
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #8]
	ldr	r12, [sp, #12]
	ldr	r1, [r11, #8]
	ldr	r0, [r1]
	add	r2, r0, #1
	subs	lr, lr, r4
	sbcs	r3, r3, r12
	movlo	r0, r2
	str	r0, [r1]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #16]
	str	r0, [r1]
	ldr	r0, [sp]
	ldr	r1, [sp, #20]
	str	r0, [r1]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end44:
	.size	muladd, .Lfunc_end44-muladd
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
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym vli_numDigits
	.addrsig_sym uECC_vli_set
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_equal
	.addrsig_sym cond_set
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_add
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_rshift1
	.addrsig_sym uECC_vli_mult
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym vli_modInv_update
	.addrsig_sym double_jacobian_default
	.addrsig_sym uECC_vli_modSquare_fast
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym EccPoint_isZero
	.addrsig_sym apply_z
	.addrsig_sym XYcZ_add
	.addrsig_sym EccPoint_mult
	.addrsig_sym XYcZ_initial_double
	.addrsig_sym XYcZ_addC
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_valid_point
	.addrsig_sym default_CSPRNG
	.addrsig_sym muladd
	.addrsig_sym g_rng_function
	.addrsig_sym curve_secp256r1
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
