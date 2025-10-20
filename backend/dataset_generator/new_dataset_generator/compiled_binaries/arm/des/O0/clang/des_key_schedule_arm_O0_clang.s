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
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                @ -- Begin function des_key_schedule
	.p2align	2
	.type	des_key_schedule,%function
	.code	32                              @ @des_key_schedule
des_key_schedule:
	.fnstart
@ %bb.0:
	.pad	#16
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	movw	r0, #0
	str	r0, [sp]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r3, [sp]
	lsl	r12, r3, #2
	mov	r2, #32
	sub	r2, r2, r3, lsl #2
	lsr	r1, r1, r12
	orr	r2, r1, r0, lsl r2
	mvn	r1, #31
	add	r1, r1, r3, lsl #2
	cmp	r1, #0
	lsrpl	r2, r0, r1
	lsr	r0, r0, r12
	cmp	r1, #0
	movwpl	r0, #0
	uxth	r0, r0
	ldr	r1, [sp, #4]
	str	r2, [r1, r3, lsl #3]!
	str	r0, [r1, #4]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #16
	bx	lr
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
