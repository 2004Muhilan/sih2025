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
	.file	"array_max.c"
	.globl	array_max                       @ -- Begin function array_max
	.p2align	2
	.type	array_max,%function
	.code	32                              @ @array_max
array_max:
	.fnstart
@ %bb.0:
	cmp	r1, #0
	beq	.LBB0_5
@ %bb.1:
	mov	r2, r0
	ldr	r0, [r0]
	subs	r1, r1, #1
	bxeq	lr
.LBB0_2:
	add	r2, r2, #4
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r2], #4
	cmp	r3, r0
	movgt	r0, r3
	subs	r1, r1, #1
	bne	.LBB0_3
@ %bb.4:
	bx	lr
.LBB0_5:
	mov	r0, #0
	bx	lr
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
