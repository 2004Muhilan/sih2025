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
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   @ -- Begin function ecc_point_add
	.p2align	2
	.type	ecc_point_add,%function
	.code	32                              @ @ecc_point_add
ecc_point_add:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r3
	mov	r6, r2
	mov	r10, r0
	ldr	r11, [sp, #48]
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #40]
	ldr	r0, [sp, #56]
	subs	r1, r11, r6
	sbc	r2, r2, r5
	subs	r3, r0, r3
	umull	r0, r7, r3, r1
	mla	r2, r3, r2, r7
	ldr	r7, [sp, #44]
	ldr	r3, [sp, #60]
	sbc	r3, r3, r7
	mla	r1, r3, r1, r2
	ldr	r9, [sp, #64]
	ldr	r8, [sp, #68]
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r7, r2
	mov	r4, r3
	umull	r0, r1, r2, r2
	mla	r1, r2, r3, r1
	mla	r1, r2, r3, r1
	adds	r2, r11, r6
	ldr	r3, [sp, #52]
	adc	r3, r3, r5
	subs	r0, r0, r2
	sbc	r1, r1, r3
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r0, r2
	mov	r1, r3
	subs	r2, r6, r2
	umull	r3, r6, r2, r7
	mla	r2, r2, r4, r6
	sbc	r6, r5, r1
	mla	r2, r6, r7, r2
	strd	r0, r1, [r10]
	ldr	r0, [sp, #40]
	subs	r0, r3, r0
	ldr	r1, [sp, #44]
	sbc	r1, r2, r1
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r0, r2
	mov	r1, r3
	strd	r0, r1, [r10, #8]
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
