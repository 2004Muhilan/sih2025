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
	.file	"linked_list_insert.c"
	.globl	linked_list_insert              @ -- Begin function linked_list_insert
	.p2align	2
	.type	linked_list_insert,%function
	.code	32                              @ @linked_list_insert
linked_list_insert:
	.fnstart
@ %bb.0:
	.pad	#12
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r0, [sp]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB0_2
@ %bb.1:
	b	.LBB0_5
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB0_5
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	str	r0, [sp]
	b	.LBB0_3
.LBB0_5:
	add	sp, sp, #12
	bx	lr
.Lfunc_end0:
	.size	linked_list_insert, .Lfunc_end0-linked_list_insert
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
