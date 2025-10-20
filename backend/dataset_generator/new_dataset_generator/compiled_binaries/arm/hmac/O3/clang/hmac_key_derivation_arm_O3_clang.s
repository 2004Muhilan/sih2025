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
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 @ -- Begin function hmac_key_derive
	.p2align	2
	.type	hmac_key_derive,%function
	.code	32                              @ @hmac_key_derive
hmac_key_derive:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	r7, r1
	mov	r6, r0
	ldr	r8, [sp, #32]
	cmp	r7, #1
	ldrb	r0, [r0]
	mov	r9, r3
	ldrb	r1, [r2]
	mov	r4, r2
	eor	r0, r1, r0
	strb	r0, [r8]
	mov	r0, r6
	mov	r1, r2
	addne	r0, r0, #1
	cmp	r3, #1
	addne	r1, r1, #1
	ldrb	r0, [r0]
	ldrb	r1, [r1]
	eor	r0, r1, r0
	strb	r0, [r8, #1]
	mov	r0, #2
	mov	r1, r7
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #2
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #2]
	mov	r0, #3
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #3
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #3]
	mov	r0, #4
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #4
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #4]
	mov	r0, #5
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #5
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #5]
	mov	r0, #6
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #6
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #6]
	mov	r0, #7
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #7
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #7]
	mov	r0, #8
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #8
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #8]
	mov	r0, #9
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #9
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #9]
	mov	r0, #10
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #10
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #10]
	mov	r0, #11
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #11
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #11]
	mov	r0, #12
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #12
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #12]
	mov	r0, #13
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #13
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #13]
	mov	r0, #14
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #14
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #14]
	mov	r0, #15
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #15
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #15]
	mov	r0, #16
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #16
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #16]
	mov	r0, #17
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #17
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #17]
	mov	r0, #18
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #18
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #18]
	mov	r0, #19
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #19
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #19]
	mov	r0, #20
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #20
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #20]
	mov	r0, #21
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #21
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #21]
	mov	r0, #22
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #22
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #22]
	mov	r0, #23
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #23
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #23]
	mov	r0, #24
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #24
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #24]
	mov	r0, #25
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #25
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #25]
	mov	r0, #26
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #26
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #26]
	mov	r0, #27
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #27
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #27]
	mov	r0, #28
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #28
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #28]
	mov	r0, #29
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #29
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #29]
	mov	r0, #30
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #30
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	mov	r1, r7
	eor	r0, r0, r5
	strb	r0, [r8, #30]
	mov	r0, #31
	bl	__aeabi_uidivmod
	ldrb	r5, [r6, r1]
	mov	r0, #31
	mov	r1, r9
	bl	__aeabi_uidivmod
	ldrb	r0, [r4, r1]
	eor	r0, r0, r5
	strb	r0, [r8, #31]
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end0:
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
