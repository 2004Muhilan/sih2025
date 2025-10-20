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
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	mov	r12, #0
	str	r12, [r2]
	mov	lr, r0
	b	.LBB1_10
.LBB1_1:                                @   in Loop: Header=BB1_10 Depth=1
	mov	r4, #0
	mov	r3, #0
	b	.LBB1_4
.LBB1_2:                                @   in Loop: Header=BB1_4 Depth=2
	sub	r5, r6, #71
.LBB1_3:                                @   in Loop: Header=BB1_4 Depth=2
	lsl	r3, r3, #6
	orr	r3, r5, r3
	add	r4, r4, #1
	cmp	r4, #4
	beq	.LBB1_9
.LBB1_4:                                @   Parent Loop BB1_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r6, [lr, r4]
	sub	r5, r6, #65
	cmp	r5, #25
	bls	.LBB1_3
@ %bb.5:                                @   in Loop: Header=BB1_4 Depth=2
	sub	r5, r6, #97
	cmp	r5, #25
	bls	.LBB1_2
@ %bb.6:                                @   in Loop: Header=BB1_4 Depth=2
	sub	r5, r6, #48
	cmp	r5, #9
	bhi	.LBB1_8
@ %bb.7:                                @   in Loop: Header=BB1_4 Depth=2
	add	r5, r6, #4
	b	.LBB1_3
.LBB1_8:                                @   in Loop: Header=BB1_4 Depth=2
	cmp	r6, #47
	mvn	r5, #0
	movweq	r5, #63
	cmp	r6, #43
	movweq	r5, #62
	b	.LBB1_3
.LBB1_9:                                @   in Loop: Header=BB1_10 Depth=1
	ldr	r4, [r2]
	add	r5, r4, #1
	str	r5, [r2]
	lsr	r5, r3, #16
	strb	r5, [r1, r4]
	ldr	r4, [r2]
	add	r5, r4, #1
	str	r5, [r2]
	lsr	r5, r3, #8
	strb	r5, [r1, r4]
	ldr	r4, [r2]
	add	r5, r4, #1
	str	r5, [r2]
	strb	r3, [r1, r4]
	add	lr, lr, #4
	add	r12, r12, #4
.LBB1_10:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_4 Depth 2
	ldrb	r3, [r0, r12]
	cmp	r3, #0
	cmpne	r3, #61
	bne	.LBB1_1
@ %bb.11:
	pop	{r4, r5, r6, pc}
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
