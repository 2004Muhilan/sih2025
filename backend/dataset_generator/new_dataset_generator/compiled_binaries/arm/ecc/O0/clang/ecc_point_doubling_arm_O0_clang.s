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
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#48
	sub	sp, sp, #48
	mov	r4, r3
	mov	r5, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [r11, #28]
	ldr	r0, [r11, #24]
	ldr	r3, [r11, #20]
	ldr	r2, [r11, #16]
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	str	r5, [r11, #-24]
	str	r4, [r11, #-20]
	str	lr, [r11, #-16]
	str	r12, [r11, #-12]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	ldr	r1, [r11, #-24]
	ldr	r12, [r11, #-20]
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-12]
	umull	r0, lr, r1, r1
	mla	lr, r1, r12, lr
	mla	r12, r1, r12, lr
	mov	r1, #3
	umull	r0, r1, r0, r1
	add	r12, r12, r12, lsl #1
	add	r1, r1, r12
	ldr	lr, [sp, #24]
	ldr	r12, [sp, #28]
	adds	r0, r0, lr
	adc	r1, r1, r12
	lsl	r3, r3, #1
	orr	r3, r3, r2, lsr #31
	lsl	r2, r2, #1
	bl	__aeabi_uldivmod
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	bl	__aeabi_uldivmod
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #12]
	umull	r0, r3, r1, r1
	mla	r3, r1, r2, r3
	mla	r1, r1, r2, r3
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-20]
	lsl	r2, r2, #1
	orr	r2, r2, r3, lsr #31
	subs	r0, r0, r3, lsl #1
	sbc	r1, r1, r2
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	bl	__aeabi_uldivmod
                                        @ kill: def $r12 killed $r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r3, [r0, #4]
	str	r2, [r0]
	ldr	lr, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r5, [r0]
	ldr	r4, [r0, #4]
	ldr	r12, [r11, #-24]
	ldr	r0, [r11, #-20]
	ldr	r3, [r11, #-16]
	ldr	r2, [r11, #-12]
	subs	r12, r12, r5
	sbc	r4, r0, r4
	umull	r0, r5, lr, r12
	mla	lr, lr, r4, r5
	mla	r1, r1, r12, lr
	subs	r0, r0, r3
	sbc	r1, r1, r2
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	bl	__aeabi_uldivmod
                                        @ kill: def $r12 killed $r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r3, [r0, #12]
	str	r2, [r0, #8]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
