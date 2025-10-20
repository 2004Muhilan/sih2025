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
	cmp	r1, #95
	movweq	r0, #63
	cmp	r1, #45
	movweq	r0, #62
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
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	mov	r4, r1
	ldrb	r1, [r0]
	cmp	r1, #0
	beq	.LBB1_3
@ %bb.1:
	add	r5, r0, #1
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	uxtb	r0, r1
	bl	base64_url_char_value
	strb	r0, [r4], #1
	ldrb	r1, [r5], #1
	cmp	r1, #0
	bne	.LBB1_2
.LBB1_3:
	pop	{r4, r5, r11, pc}
.Lfunc_end1:
	.size	base64_decode_urlsafe, .Lfunc_end1-base64_decode_urlsafe
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
