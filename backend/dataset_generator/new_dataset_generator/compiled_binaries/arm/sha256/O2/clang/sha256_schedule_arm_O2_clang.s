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
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldr	r2, [r0]
	str	r2, [r1]
	ldr	r2, [r0, #4]
	str	r2, [r1, #4]
	ldr	r2, [r0, #8]
	str	r2, [r1, #8]
	ldr	r2, [r0, #12]
	str	r2, [r1, #12]
	ldr	r2, [r0, #16]
	str	r2, [r1, #16]
	ldr	r2, [r0, #20]
	str	r2, [r1, #20]
	ldr	r2, [r0, #24]
	str	r2, [r1, #24]
	ldr	r2, [r0, #28]
	str	r2, [r1, #28]
	ldr	r2, [r0, #32]
	str	r2, [r1, #32]
	ldr	r2, [r0, #36]
	str	r2, [r1, #36]
	ldr	r2, [r0, #40]
	str	r2, [r1, #40]
	ldr	r2, [r0, #44]
	str	r2, [r1, #44]
	ldr	r2, [r0, #48]
	str	r2, [r1, #48]
	ldr	r2, [r0, #52]
	str	r2, [r1, #52]
	ldr	r2, [r0, #56]
	str	r2, [r1, #56]
	ldr	r0, [r0, #60]
	str	r0, [r1, #60]
	mov	r0, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	mov	r2, r1
	ldr	r12, [r2, r0]!
	add	r0, r0, #4
	cmp	r0, #192
	ldr	r4, [r2, #56]
	ldr	r3, [r2, #4]
	ldr	lr, [r2, #36]
	ror	r5, r4, #17
	eor	r5, r5, r4, ror #19
	eor	r4, r5, r4, lsr #10
	ror	r5, r3, #7
	eor	r5, r5, r3, ror #18
	eor	r3, r5, r3, lsr #3
	add	r3, r3, r12
	add	r3, r3, lr
	add	r3, r3, r4
	str	r3, [r2, #64]
	bne	.LBB0_1
@ %bb.2:
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
