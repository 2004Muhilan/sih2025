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
	.file	"rc4_prga.c"
	.globl	rc4_prga                        @ -- Begin function rc4_prga
	.p2align	2
	.type	rc4_prga,%function
	.code	32                              @ @rc4_prga
rc4_prga:
	.fnstart
@ %bb.0:
	.pad	#16
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldrb	r0, [r1]
	add	r0, r0, #1
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	ldrb	r0, [r1]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]
	ldrb	r2, [r2, r3]
	add	r0, r0, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	ldrb	r0, [r0, r1]
	strb	r0, [sp, #3]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	ldrb	r0, [r1, r0]
	ldr	r2, [sp, #8]
	ldrb	r2, [r2]
	strb	r0, [r1, r2]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldrb	r2, [r2]
	strb	r0, [r1, r2]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1]
	ldrb	r1, [r0, r1]
	ldr	r2, [sp, #4]
	ldrb	r2, [r2]
	ldrb	r2, [r0, r2]
	add	r1, r1, r2
	uxtb	r1, r1
	add	r0, r0, r1
	ldrb	r0, [r0]
	add	sp, sp, #16
	bx	lr
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
