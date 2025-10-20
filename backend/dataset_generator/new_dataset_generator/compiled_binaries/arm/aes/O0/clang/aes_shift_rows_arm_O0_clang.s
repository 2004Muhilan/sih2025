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
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  @ -- Begin function aes_shift_rows
	.p2align	2
	.type	aes_shift_rows,%function
	.code	32                              @ @aes_shift_rows
aes_shift_rows:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #1]
	strb	r0, [sp, #3]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #5]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #1]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #9]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #5]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #13]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #9]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #13]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #2]
	strb	r0, [sp, #3]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #10]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #2]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #10]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #6]
	strb	r0, [sp, #3]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #14]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #6]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #14]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #15]
	strb	r0, [sp, #3]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #11]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #15]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #7]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #11]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #3]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #7]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #4]
	strb	r0, [r1, #3]
	add	sp, sp, #8
	bx	lr
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
