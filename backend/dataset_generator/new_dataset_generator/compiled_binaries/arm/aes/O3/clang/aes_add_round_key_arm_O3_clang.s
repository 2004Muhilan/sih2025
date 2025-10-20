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
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               @ -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,%function
	.code	32                              @ @aes_add_round_key
aes_add_round_key:
	.fnstart
@ %bb.0:
	.save	{r4, lr}
	push	{r4, lr}
	ldrb	r2, [r0]
	ldrb	r4, [r1]
	ldrb	r3, [r0, #1]
	eor	r2, r2, r4
	strb	r2, [r0]
	ldrb	r2, [r1, #1]
	ldrb	r12, [r0, #2]
	eor	r2, r3, r2
	strb	r2, [r0, #1]
	ldrb	r2, [r1, #2]
	ldrb	lr, [r0, #3]
	eor	r2, r12, r2
	strb	r2, [r0, #2]
	ldrb	r2, [r1, #3]
	ldrb	r3, [r0, #4]
	eor	r2, lr, r2
	strb	r2, [r0, #3]
	ldrb	r2, [r1, #4]
	eor	r2, r3, r2
	strb	r2, [r0, #4]
	ldrb	r2, [r1, #5]
	ldrb	r3, [r0, #5]
	eor	r2, r3, r2
	strb	r2, [r0, #5]
	ldrb	r2, [r1, #6]
	ldrb	r3, [r0, #6]
	eor	r2, r3, r2
	strb	r2, [r0, #6]
	ldrb	r2, [r1, #7]
	ldrb	r3, [r0, #7]
	eor	r2, r3, r2
	strb	r2, [r0, #7]
	ldrb	r2, [r1, #8]
	ldrb	r3, [r0, #8]
	eor	r2, r3, r2
	strb	r2, [r0, #8]
	ldrb	r2, [r1, #9]
	ldrb	r3, [r0, #9]
	eor	r2, r3, r2
	strb	r2, [r0, #9]
	ldrb	r2, [r1, #10]
	ldrb	r3, [r0, #10]
	eor	r2, r3, r2
	strb	r2, [r0, #10]
	ldrb	r2, [r1, #11]
	ldrb	r3, [r0, #11]
	eor	r2, r3, r2
	strb	r2, [r0, #11]
	ldrb	r2, [r1, #12]
	ldrb	r3, [r0, #12]
	eor	r2, r3, r2
	strb	r2, [r0, #12]
	ldrb	r2, [r1, #13]
	ldrb	r3, [r0, #13]
	eor	r2, r3, r2
	strb	r2, [r0, #13]
	ldrb	r2, [r1, #14]
	ldrb	r3, [r0, #14]
	eor	r2, r3, r2
	strb	r2, [r0, #14]
	ldrb	r1, [r1, #15]
	ldrb	r2, [r0, #15]
	eor	r1, r2, r1
	strb	r1, [r0, #15]
	pop	{r4, pc}
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
