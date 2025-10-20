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
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 @ -- Begin function ecc_ecdh_shared
	.p2align	2
	.type	ecc_ecdh_shared,%function
	.code	32                              @ @ecc_ecdh_shared
ecc_ecdh_shared:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	mov	r12, r1
	mov	lr, r0
	ldr	r1, [r11, #12]
	ldr	r0, [r11, #8]
	str	lr, [sp, #8]
	str	r12, [sp, #12]
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	ldr	r12, [sp, #4]
	umull	r0, lr, r3, r2
	mla	r3, r3, r12, lr
	mla	r1, r1, r2, r3
	adds	r0, r0, r1
	adc	r1, r0, #0
	mvn	r0, #0
	subs	r0, r1, r0
	movne	r0, r1
	mov	r1, #0
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	ecc_ecdh_shared, .Lfunc_end0-ecc_ecdh_shared
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
