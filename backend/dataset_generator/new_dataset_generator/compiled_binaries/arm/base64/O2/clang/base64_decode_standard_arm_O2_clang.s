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
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               @ -- Begin function base64_char_value
	.p2align	2
	.type	base64_char_value,%function
	.code	32                              @ @base64_char_value
base64_char_value:
	.fnstart
@ %bb.0:
	mov	r1, r0
	sub	r0, r0, #65
	cmp	r0, #25
	bxls	lr
.LBB0_1:
	sub	r0, r1, #97
	cmp	r0, #25
	subls	r0, r1, #71
	bxls	lr
.LBB0_2:
	sub	r0, r1, #48
	cmp	r0, #9
	addls	r0, r1, #4
	bxls	lr
.LBB0_3:
	mvn	r0, #0
	cmp	r1, #47
	movweq	r0, #63
	cmp	r1, #43
	movweq	r0, #62
	bx	lr
.Lfunc_end0:
	.size	base64_char_value, .Lfunc_end0-base64_char_value
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	base64_decode_standard          @ -- Begin function base64_decode_standard
	.p2align	2
	.type	base64_decode_standard,%function
	.code	32                              @ @base64_decode_standard
base64_decode_standard:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	add	lr, r0, #1
	mov	r3, #0
	str	r3, [r2]
	b	.LBB1_26
.LBB1_1:                                @   in Loop: Header=BB1_26 Depth=1
	sub	r12, r0, #65
	cmp	r12, #26
	blo	.LBB1_7
@ %bb.2:                                @   in Loop: Header=BB1_26 Depth=1
	sub	r3, r0, #97
	cmp	r3, #25
	bhi	.LBB1_4
@ %bb.3:                                @   in Loop: Header=BB1_26 Depth=1
	sub	r12, r0, #71
	b	.LBB1_7
.LBB1_4:                                @   in Loop: Header=BB1_26 Depth=1
	sub	r3, r0, #48
	cmp	r3, #9
	bhi	.LBB1_6
@ %bb.5:                                @   in Loop: Header=BB1_26 Depth=1
	add	r12, r0, #4
	b	.LBB1_7
.LBB1_6:                                @   in Loop: Header=BB1_26 Depth=1
	cmp	r0, #47
	mvn	r12, #0
	movweq	r12, #63
	cmp	r0, #43
	movweq	r12, #62
.LBB1_7:                                @   in Loop: Header=BB1_26 Depth=1
	ldrb	r0, [lr]
	sub	r3, r0, #65
	cmp	r3, #26
	blo	.LBB1_13
@ %bb.8:                                @   in Loop: Header=BB1_26 Depth=1
	sub	r3, r0, #97
	cmp	r3, #26
	bhs	.LBB1_10
@ %bb.9:                                @   in Loop: Header=BB1_26 Depth=1
	sub	r3, r0, #71
	b	.LBB1_13
.LBB1_10:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r3, r0, #48
	cmp	r3, #10
	bhs	.LBB1_12
@ %bb.11:                               @   in Loop: Header=BB1_26 Depth=1
	add	r3, r0, #4
	b	.LBB1_13
.LBB1_12:                               @   in Loop: Header=BB1_26 Depth=1
	cmp	r0, #47
	mvn	r3, #0
	movweq	r3, #63
	cmp	r0, #43
	movweq	r3, #62
.LBB1_13:                               @   in Loop: Header=BB1_26 Depth=1
	ldrb	r4, [lr, #1]
	sub	r0, r4, #65
	cmp	r0, #26
	blo	.LBB1_19
@ %bb.14:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r0, r4, #97
	cmp	r0, #26
	bhs	.LBB1_16
@ %bb.15:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r0, r4, #71
	b	.LBB1_19
.LBB1_16:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r0, r4, #48
	cmp	r0, #10
	bhs	.LBB1_18
@ %bb.17:                               @   in Loop: Header=BB1_26 Depth=1
	add	r0, r4, #4
	b	.LBB1_19
.LBB1_18:                               @   in Loop: Header=BB1_26 Depth=1
	cmp	r4, #47
	mvn	r0, #0
	movweq	r0, #63
	cmp	r4, #43
	movweq	r0, #62
.LBB1_19:                               @   in Loop: Header=BB1_26 Depth=1
	ldrb	r5, [lr, #2]
	sub	r4, r5, #65
	cmp	r4, #26
	blo	.LBB1_25
@ %bb.20:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r4, r5, #97
	cmp	r4, #26
	bhs	.LBB1_22
@ %bb.21:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r4, r5, #71
	b	.LBB1_25
.LBB1_22:                               @   in Loop: Header=BB1_26 Depth=1
	sub	r4, r5, #48
	cmp	r4, #10
	bhs	.LBB1_24
@ %bb.23:                               @   in Loop: Header=BB1_26 Depth=1
	add	r4, r5, #4
	b	.LBB1_25
.LBB1_24:                               @   in Loop: Header=BB1_26 Depth=1
	cmp	r5, #47
	mvn	r4, #0
	movweq	r4, #63
	cmp	r5, #43
	movweq	r4, #62
.LBB1_25:                               @   in Loop: Header=BB1_26 Depth=1
	lsl	r5, r12, #12
	orr	r3, r5, r3, lsl #6
	orr	r0, r0, r3
	ldr	r3, [r2]
	add	lr, lr, #4
	lsl	r0, r0, #6
	add	r5, r3, #1
	orr	r0, r4, r0
	str	r5, [r2]
	lsr	r5, r0, #16
	strb	r5, [r1, r3]
	ldr	r3, [r2]
	add	r5, r3, #1
	str	r5, [r2]
	lsr	r5, r0, #8
	strb	r5, [r1, r3]
	ldr	r3, [r2]
	add	r5, r3, #1
	str	r5, [r2]
	strb	r0, [r1, r3]
.LBB1_26:                               @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [lr, #-1]
	cmp	r0, #0
	cmpne	r0, #61
	bne	.LBB1_1
@ %bb.27:
	pop	{r4, r5, r11, pc}
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
