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
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	cmp	r0, #1
	bhi	.LBB0_2
@ %bb.1:
	ldr	r0, [sp, #16]
	str	r0, [sp, #20]
	b	.LBB0_7
.LBB0_2:
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, #1
	str	r0, [sp, #8]
	movw	r0, #2
	str	r0, [sp, #4]
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bhi	.LBB0_6
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #8]
	str	r0, [sp, #12]
	ldr	r0, [sp]
	str	r0, [sp, #8]
@ %bb.5:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_3
.LBB0_6:
	ldr	r0, [sp, #8]
	str	r0, [sp, #20]
.LBB0_7:
	ldr	r0, [sp, #20]
	add	sp, sp, #24
	bx	lr
.Lfunc_end0:
	.size	fibonacci, .Lfunc_end0-fibonacci
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
