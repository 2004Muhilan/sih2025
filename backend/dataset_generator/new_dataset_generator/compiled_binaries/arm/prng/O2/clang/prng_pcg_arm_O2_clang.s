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
	.file	"prng_pcg.c"
	.globl	prng_pcg                        @ -- Begin function prng_pcg
	.p2align	2
	.type	prng_pcg,%function
	.code	32                              @ @prng_pcg
prng_pcg:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldrd	r2, r3, [r0]
	movw	r12, #32557
	movt	r12, #19605
	movw	r4, #62509
	movt	r4, #22609
	umull	lr, r1, r2, r12
	mla	r1, r2, r4, r1
	mul	r12, r3, r12
	adds	r4, lr, #1
	adc	r5, r1, r12
	lsr	r1, r3, #27
	strd	r4, r5, [r0]
	lsr	r0, r2, #27
	orr	r0, r0, r3, lsl #5
	eor	r0, r0, r3, lsr #13
	ror	r0, r0, r1
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
