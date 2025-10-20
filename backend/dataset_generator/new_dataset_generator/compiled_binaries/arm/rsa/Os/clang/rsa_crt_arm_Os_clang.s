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
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 @ -- Begin function rsa_crt_decrypt
	.p2align	2
	.type	rsa_crt_decrypt,%function
	.code	32                              @ @rsa_crt_decrypt
rsa_crt_decrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	ldr	r4, [sp, #40]
	mov	r5, r1
	ldr	r8, [sp, #44]
	mov	r6, r0
	mov	r2, r4
	mov	r3, r8
	bl	__aeabi_uldivmod
	ldr	r7, [sp, #48]
	mov	r1, r5
	ldr	r9, [sp, #52]
	umull	r10, r0, r2, r7
	mla	r0, r2, r9, r0
	mov	r2, r7
	mla	r11, r3, r7, r0
	mov	r0, r6
	mov	r3, r9
	bl	__aeabi_uldivmod
	umull	r0, r1, r2, r4
	mla	r1, r2, r8, r1
	adds	r0, r0, r10
	mla	r1, r3, r4, r1
	umull	r2, r3, r7, r4
	mla	r3, r7, r8, r3
	adc	r1, r1, r11
	mla	r3, r9, r4, r3
	bl	__aeabi_uldivmod
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
