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
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                @ -- Begin function ecc_point_double
	.p2align	2
	.type	ecc_point_double,%function
	.code	32                              @ @ecc_point_double
ecc_point_double:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	r8, r0
	umull	r0, r1, r2, r2
	mov	r6, r2
	mov	r5, r3
	mla	r1, r2, r3, r1
	ldr	r7, [sp, #44]
	ldr	r11, [sp, #40]
	mla	r1, r2, r3, r1
	mov	r2, #3
	ldr	r3, [sp, #48]
	umull	r0, r2, r0, r2
	add	r1, r1, r1, lsl #1
	add	r1, r2, r1
	ldr	r2, [sp, #52]
	adds	r0, r0, r3
	adc	r1, r1, r2
	lsl	r2, r7, #1
	orr	r3, r2, r11, lsr #31
	lsl	r2, r11, #1
	bl	__aeabi_uldivmod
	ldr	r10, [sp, #56]
	ldr	r9, [sp, #60]
	mov	r2, r10
	mov	r3, r9
	bl	__aeabi_uldivmod
	umull	r0, r1, r2, r2
	mov	r4, r2
	mov	r7, r3
	mla	r1, r2, r3, r1
	subs	r0, r0, r6, lsl #1
	mla	r1, r2, r3, r1
	lsl	r2, r5, #1
	orr	r2, r2, r6, lsr #31
	mov	r3, r9
	sbc	r1, r1, r2
	mov	r2, r10
	bl	__aeabi_uldivmod
	mov	r0, r2
	subs	r2, r6, r2
	mov	r1, r3
	umull	r3, r6, r2, r4
	strd	r0, r1, [r8]
	mla	r2, r2, r7, r6
	sbc	r7, r5, r1
	ldr	r1, [sp, #44]
	subs	r0, r3, r11
	mov	r3, r9
	mla	r2, r7, r4, r2
	sbc	r1, r2, r1
	mov	r2, r10
	bl	__aeabi_uldivmod
	mov	r0, r2
	mov	r1, r3
	strd	r0, r1, [r8, #8]
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
