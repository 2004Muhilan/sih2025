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
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, #0
	mov	r4, r2
	mov	r9, r1
	mov	r8, r0
	mov	r6, r0
	str	r10, [r2]
	b	.LBB1_4
.LBB1_1:                                @   in Loop: Header=BB1_4 Depth=1
	mov	r7, #0
	mov	r5, #0
.LBB1_2:                                @   Parent Loop BB1_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r6, r7]
	bl	base64_char_value
	add	r7, r7, #1
	orr	r5, r0, r5, lsl #6
	cmp	r7, #4
	bne	.LBB1_2
@ %bb.3:                                @   in Loop: Header=BB1_4 Depth=1
	ldr	r0, [r4]
	add	r6, r6, #4
	add	r10, r10, #4
	add	r1, r0, #1
	str	r1, [r4]
	lsr	r1, r5, #16
	strb	r1, [r9, r0]
	ldr	r0, [r4]
	add	r1, r0, #1
	str	r1, [r4]
	lsr	r1, r5, #8
	strb	r1, [r9, r0]
	ldr	r0, [r4]
	add	r1, r0, #1
	str	r1, [r4]
	strb	r5, [r9, r0]
.LBB1_4:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_2 Depth 2
	ldrb	r0, [r8, r10]
	cmp	r0, #0
	cmpne	r0, #61
	bne	.LBB1_1
@ %bb.5:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
