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
	.file	"fibonacci.c"
	.globl	fibonacci                       @ -- Begin function fibonacci
	.p2align	2
	.type	fibonacci,%function
	.code	32                              @ @fibonacci
fibonacci:
	.fnstart
@ %bb.0:
	cmp	r0, #2
	bxlo	lr
.LBB0_1:
	add	r0, r0, #1
	mov	r2, #0
	cmp	r0, #3
	movls	r0, #3
	sub	r1, r0, #2
	mov	r0, #1
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r3, r0
	add	r0, r0, r2
	subs	r1, r1, #1
	mov	r2, r3
	bne	.LBB0_2
@ %bb.3:
	bx	lr
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
