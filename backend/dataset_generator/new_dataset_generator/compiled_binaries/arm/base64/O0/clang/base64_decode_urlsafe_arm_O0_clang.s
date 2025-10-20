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
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           @ -- Begin function base64_url_char_value
	.p2align	2
	.type	base64_url_char_value,%function
	.code	32                              @ @base64_url_char_value
base64_url_char_value:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	strb	r0, [sp, #3]
	ldrb	r0, [sp, #3]
	cmp	r0, #65
	blt	.LBB0_3
@ %bb.1:
	ldrb	r0, [sp, #3]
	cmp	r0, #90
	bgt	.LBB0_3
@ %bb.2:
	ldrb	r0, [sp, #3]
	sub	r0, r0, #65
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_3:
	ldrb	r0, [sp, #3]
	cmp	r0, #97
	blt	.LBB0_6
@ %bb.4:
	ldrb	r0, [sp, #3]
	cmp	r0, #122
	bgt	.LBB0_6
@ %bb.5:
	ldrb	r0, [sp, #3]
	sub	r0, r0, #97
	add	r0, r0, #26
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_6:
	ldrb	r0, [sp, #3]
	cmp	r0, #48
	blt	.LBB0_9
@ %bb.7:
	ldrb	r0, [sp, #3]
	cmp	r0, #57
	bgt	.LBB0_9
@ %bb.8:
	ldrb	r0, [sp, #3]
	sub	r0, r0, #48
	add	r0, r0, #52
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_9:
	ldrb	r0, [sp, #3]
	cmp	r0, #45
	bne	.LBB0_11
@ %bb.10:
	movw	r0, #62
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_11:
	ldrb	r0, [sp, #3]
	cmp	r0, #95
	bne	.LBB0_13
@ %bb.12:
	movw	r0, #63
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_13:
	mvn	r0, #0
	str	r0, [sp, #4]
.LBB0_14:
	ldr	r0, [sp, #4]
	add	sp, sp, #8
	bx	lr
.Lfunc_end0:
	.size	base64_url_char_value, .Lfunc_end0-base64_url_char_value
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	base64_decode_urlsafe           @ -- Begin function base64_decode_urlsafe
	.p2align	2
	.type	base64_decode_urlsafe,%function
	.code	32                              @ @base64_decode_urlsafe
base64_decode_urlsafe:
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
	movw	r0, #0
	str	r0, [sp, #4]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	ldrsb	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_4
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	ldrb	r0, [r0]
	bl	base64_url_char_value
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB1_1
.LBB1_4:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym base64_url_char_value
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
