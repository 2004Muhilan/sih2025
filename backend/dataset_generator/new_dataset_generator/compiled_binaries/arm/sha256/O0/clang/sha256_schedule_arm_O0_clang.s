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
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         @ -- Begin function sha256_message_schedule
	.p2align	2
	.type	sha256_message_schedule,%function
	.code	32                              @ @sha256_message_schedule
sha256_message_schedule:
	.fnstart
@ %bb.0:
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #12]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #16]
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #16
	str	r0, [sp, #8]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #64
	bge	.LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #8]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r0, #-60]
	ror	r0, r1, #7
	eor	r0, r0, r1, ror #18
	eor	r0, r0, r1, lsr #3
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #8]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r0, #-8]
	ror	r0, r1, #17
	eor	r0, r0, r1, ror #19
	eor	r0, r0, r1, lsr #10
	str	r0, [sp]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #4]
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1, #-64]
	ldr	r2, [r1, #-28]
	add	r0, r0, r3
	add	r0, r0, r2
	ldr	r2, [sp]
	add	r0, r0, r2
	str	r0, [r1]
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_5
.LBB0_8:
	add	sp, sp, #24
	bx	lr
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
