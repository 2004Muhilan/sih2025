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
	.save	{r4, lr}
	push	{r4, lr}
	mov	r3, #0
	str	r1, [r2, #64]
	str	r3, [r2, #124]
	lsr	r4, r1, #12
	str	r3, [r2, #116]
	lsr	r12, r1, #28
	str	r3, [r2, #108]
	lsr	lr, r1, #24
	str	r3, [r2, #100]
	str	r3, [r2, #92]
	str	r3, [r2, #84]
	str	r3, [r2, #76]
	str	r3, [r2, #68]
	lsr	r3, r0, #28
	orr	r3, r3, r1, lsl #4
	str	r3, [r2, #56]
	lsr	r3, r0, #24
	orr	r3, r3, r1, lsl #8
	str	r3, [r2, #48]
	lsr	r3, r0, #20
	orr	r3, r3, r1, lsl #12
	str	r3, [r2, #40]
	lsr	r3, r0, #16
	orr	r3, r3, r1, lsl #16
	str	r3, [r2, #32]
	ubfx	r3, r1, #12, #16
	str	r3, [r2, #28]
	lsr	r3, r0, #12
	orr	r3, r3, r1, lsl #20
	str	r3, [r2, #24]
	ubfx	r3, r1, #8, #16
	str	r3, [r2, #20]
	lsr	r3, r0, #8
	orr	r3, r3, r1, lsl #24
	str	r3, [r2, #16]
	ubfx	r3, r1, #4, #16
	str	r3, [r2, #12]
	lsr	r3, r0, #4
	str	r0, [r2]
	lsr	r0, r1, #20
	orr	r3, r3, r1, lsl #28
	str	r4, [r2, #88]
	lsr	r4, r1, #8
	str	r3, [r2, #8]
	lsr	r3, r1, #16
	str	r4, [r2, #80]
	lsr	r4, r1, #4
	str	r0, [r2, #104]
	str	r0, [r2, #44]
	uxth	r0, r1
	str	r12, [r2, #120]
	str	lr, [r2, #112]
	str	r3, [r2, #96]
	str	r4, [r2, #72]
	str	r12, [r2, #60]
	str	lr, [r2, #52]
	str	r3, [r2, #36]
	str	r0, [r2, #4]
	pop	{r4, pc}
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
