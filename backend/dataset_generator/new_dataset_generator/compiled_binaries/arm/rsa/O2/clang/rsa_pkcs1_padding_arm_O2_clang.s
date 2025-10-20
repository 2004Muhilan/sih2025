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
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   @ -- Begin function rsa_pkcs1_pad
	.p2align	2
	.type	rsa_pkcs1_pad,%function
	.code	32                              @ @rsa_pkcs1_pad
rsa_pkcs1_pad:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r0, #512
	strh	r0, [r2]
	mvn	r0, r1
	add	r5, r0, r3
	mov	r6, r3
	mov	r7, r2
	mov	r4, r1
	cmp	r5, #3
	blo	.LBB0_2
@ %bb.1:
	sub	r0, r6, r4
	mov	r1, #255
	sub	r2, r0, #3
	add	r0, r7, #2
	bl	memset
.LBB0_2:
	mov	r0, #0
	mov	r1, r8
	strb	r0, [r7, r5]
	add	r0, r7, r6
	sub	r0, r0, r4
	mov	r2, r4
	pop	{r4, r5, r6, r7, r8, lr}
	b	memcpy
.Lfunc_end0:
	.size	rsa_pkcs1_pad, .Lfunc_end0-rsa_pkcs1_pad
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
