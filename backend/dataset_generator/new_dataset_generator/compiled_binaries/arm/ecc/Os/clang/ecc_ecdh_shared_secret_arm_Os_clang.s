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
	ldr	lr, [sp, #8]
	ldr	r12, [sp, #12]
	umull	r2, r3, r0, lr
	mla	r0, r0, r12, r3
	mov	r3, #0
	mla	r1, r1, lr, r0
	mov	r0, r2
	mvn	r2, #0
	bl	__aeabi_uldivmod
	mov	r0, r2
	mov	r1, r3
	pop	{r11, pc}
.Lfunc_end0:
	.size	ecc_ecdh_shared, .Lfunc_end0-ecc_ecdh_shared
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
