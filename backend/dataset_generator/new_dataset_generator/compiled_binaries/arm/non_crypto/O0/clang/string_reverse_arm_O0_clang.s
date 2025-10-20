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
	.file	"string_reverse.c"
	.globl	string_reverse                  @ -- Begin function string_reverse
	.p2align	2
	.type	string_reverse,%function
	.code	32                              @ @string_reverse
string_reverse:
	.fnstart
@ %bb.0:
	.pad	#20
	sub	sp, sp, #20
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	movw	r0, #0
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	sub	r0, r0, #1
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bhs	.LBB0_3
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #3]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
	ldrb	r0, [sp, #3]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #4]
	mvn	r1, #0
	add	r0, r0, r1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_3:
	add	sp, sp, #20
	bx	lr
.Lfunc_end0:
	.size	string_reverse, .Lfunc_end0-string_reverse
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
