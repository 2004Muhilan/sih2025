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
	.file	"md5_round1.c"
	.globl	md5_round1                      @ -- Begin function md5_round1
	.p2align	2
	.type	md5_round1,%function
	.code	32                              @ @md5_round1
md5_round1:
	.fnstart
@ %bb.0:
	.pad	#16
	sub	sp, sp, #16
	ldr	r12, [sp, #24]
	ldr	r12, [sp, #20]
	ldr	r12, [sp, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r1, [r1]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	and	r2, r2, r3
	ldr	r3, [sp, #8]
	mvn	r12, #0
	eor	r3, r3, r12
	ldr	r12, [sp]
	and	r3, r3, r12
	orr	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #16]
	add	r1, r1, r2
	ldr	r2, [sp, #24]
	add	r1, r1, r2
	ldr	r2, [sp, #20]
	lsl	r1, r1, r2
	add	r0, r0, r1
	ldr	r1, [sp, #12]
	str	r0, [r1]
	add	sp, sp, #16
	bx	lr
.Lfunc_end0:
	.size	md5_round1, .Lfunc_end0-md5_round1
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
