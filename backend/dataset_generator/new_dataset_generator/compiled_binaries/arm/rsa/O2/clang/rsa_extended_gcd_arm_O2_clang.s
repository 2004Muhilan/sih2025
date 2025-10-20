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
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                @ -- Begin function rsa_extended_gcd
	.p2align	2
	.type	rsa_extended_gcd,%function
	.code	32                              @ @rsa_extended_gcd
rsa_extended_gcd:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#28
	sub	sp, sp, #28
	ldr	r10, [sp, #68]
	mov	r7, r0
	ldr	r11, [sp, #64]
	mov	r8, r3
	mov	r5, r2
	orrs	r0, r0, r1
	beq	.LBB0_2
@ %bb.1:
	mov	r6, r1
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	mov	r3, r6
	bl	__aeabi_ldivmod
	mov	r4, r0
	umull	r0, r2, r0, r7
	mov	r9, r1
	add	r1, sp, #8
	mla	r2, r4, r6, r2
	add	r3, sp, #16
	str	r3, [sp]
	subs	r0, r5, r0
	str	r1, [sp, #4]
	mla	r2, r9, r7, r2
	mov	r3, r6
	sbc	r1, r8, r2
	mov	r2, r7
	bl	rsa_extended_gcd
	mov	r5, r0
	ldr	r0, [sp, #16]
	mov	r8, r1
	ldr	r1, [sp, #20]
	ldr	r7, [sp, #8]
	umull	r2, r3, r0, r4
	ldr	r6, [sp, #12]
	mla	r3, r0, r9, r3
	subs	r2, r7, r2
	mla	r3, r1, r4, r3
	sbc	r3, r6, r3
	b	.LBB0_3
.LBB0_2:
	mov	r2, #0
	mov	r0, #1
	mov	r3, #0
	mov	r1, #0
.LBB0_3:
	strd	r2, r3, [r11]
	strd	r0, r1, [r10]
	mov	r0, r5
	mov	r1, r8
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
