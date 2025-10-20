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
	.file	"factorial.c"
	.globl	factorial                       @ -- Begin function factorial
	.p2align	2
	.type	factorial,%function
	.code	32                              @ @factorial
factorial:
	.fnstart
@ %bb.0:
	.pad	#32
	sub	sp, sp, #32
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.LBB0_2
@ %bb.1:
	ldr	r0, [sp, #20]
	cmp	r0, #1
	bne	.LBB0_3
.LBB0_2:
	mov	r0, #0
	str	r0, [sp, #28]
	mov	r0, #1
	str	r0, [sp, #24]
	b	.LBB0_8
.LBB0_3:
	mov	r0, #0
	str	r0, [sp, #12]
	mov	r0, #1
	str	r0, [sp, #8]
	movw	r0, #2
	str	r0, [sp, #4]
.LBB0_4:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #20]
	cmp	r0, r1
	bhi	.LBB0_7
@ %bb.5:                                @   in Loop: Header=BB0_4 Depth=1
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	umull	r1, r3, r1, r2
	mla	r0, r0, r2, r3
	str	r1, [sp, #8]
	str	r0, [sp, #12]
@ %bb.6:                                @   in Loop: Header=BB0_4 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_4
.LBB0_7:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	str	r1, [sp, #28]
	str	r0, [sp, #24]
.LBB0_8:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	add	sp, sp, #32
	bx	lr
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
