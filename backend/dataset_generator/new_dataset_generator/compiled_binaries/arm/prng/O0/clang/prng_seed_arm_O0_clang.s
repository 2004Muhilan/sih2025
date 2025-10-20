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
	.file	"prng_seed.c"
	.globl	prng_seed                       @ -- Begin function prng_seed
	.p2align	2
	.type	prng_seed,%function
	.code	32                              @ @prng_seed
prng_seed:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r0, [r1]
	ldr	r0, [sp]
	ldr	r1, .LCPI0_2
	eor	r0, r0, r1
	ldr	r1, [sp, #4]
	str	r0, [r1, #4]
	ldr	r0, [sp]
	ldr	r1, .LCPI0_1
	eor	r0, r0, r1
	ldr	r1, [sp, #4]
	str	r0, [r1, #8]
	ldr	r0, [sp]
	ldr	r1, .LCPI0_0
	eor	r0, r0, r1
	ldr	r1, [sp, #4]
	str	r0, [r1, #12]
	add	sp, sp, #8
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	1597334677                      @ 0x5f356495
.LCPI0_1:
	.long	821329296                       @ 0x30f47d90
.LCPI0_2:
	.long	1812433253                      @ 0x6c078965
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
