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
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#64
	sub	sp, sp, #64
	mov	lr, r3
	mov	r12, r2
	mov	r4, r1
	mov	r5, r0
	ldr	r1, [r11, #20]
	ldr	r0, [r11, #16]
	ldr	r3, [r11, #12]
	ldr	r2, [r11, #8]
	str	r5, [r11, #-24]
	str	r4, [r11, #-20]
	str	lr, [r11, #-28]
	str	r12, [r11, #-32]
	str	r3, [sp, #44]
	str	r2, [sp, #40]
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #44]
	subs	r2, r2, #1
	sbc	r3, r3, #0
	bl	__aeabi_uldivmod
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
	subs	r2, r2, #1
	sbc	r3, r3, #0
	bl	__aeabi_uldivmod
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #44]
	bl	__aeabi_uldivmod
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
	bl	__aeabi_uldivmod
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r12, [sp, #32]
	ldr	r4, [sp, #36]
	umull	r0, r3, r2, r12
	mla	r2, r2, r4, r3
	mla	r1, r1, r12, r2
	ldr	r6, [sp]
	ldr	r2, [sp, #4]
	ldr	lr, [sp, #40]
	ldr	r3, [sp, #44]
	umull	r5, r7, r6, lr
	mla	r6, r6, r3, r7
	mla	r2, r2, lr, r6
	adds	r0, r0, r5
	adc	r1, r1, r2
	umull	r2, r5, lr, r12
	mla	lr, lr, r4, r5
	mla	r3, r3, r12, lr
	bl	__aeabi_uldivmod
	mov	r0, r2
	mov	r1, r3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
