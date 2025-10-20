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
	.file	"rc4_ksa.c"
	.globl	rc4_ksa                         @ -- Begin function rc4_ksa
	.p2align	2
	.type	rc4_ksa,%function
	.code	32                              @ @rc4_ksa
rc4_ksa:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	r6, r0
	mov	r8, r2
	mov	r9, r1
	mov	r0, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r0, [r6, r0]
	add	r0, r0, #1
	cmp	r0, #256
	bne	.LBB0_1
@ %bb.2:
	mov	r7, #0
	mov	r4, #0
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r5, [r6, r7]
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_uidivmod
	ldrb	r0, [r9, r1]
	add	r1, r5, r4
	add	r4, r1, r0
	uxtb	r0, r4
	ldrb	r1, [r6, r0]
	strb	r1, [r6, r7]
	add	r7, r7, #1
	cmp	r7, #256
	strb	r5, [r6, r0]
	bne	.LBB0_3
@ %bb.4:
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end0:
	.size	rc4_ksa, .Lfunc_end0-rc4_ksa
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
