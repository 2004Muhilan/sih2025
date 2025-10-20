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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	ldr	r1, [r11, #-4]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	movw	r3, #32557
	movt	r3, #19605
	umull	r2, lr, r0, r3
	movw	r12, #62509
	movt	r12, #22609
	mla	r0, r0, r12, lr
	mul	r1, r1, r3
	adds	r2, r2, #1
	adc	r0, r0, r1
	ldr	r1, [r11, #-4]
	str	r2, [r1]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	lsr	r0, r0, #27
	orr	r0, r0, r1, lsl #5
	eor	r0, r0, r1, lsr #13
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	lsr	r0, r0, #27
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	lsr	r0, r0, r1
	ldr	r1, [sp, #4]
	ldr	r3, [sp]
	movw	r2, #0
	sub	r2, r2, r3
	and	r2, r2, #31
	lsl	r1, r1, r2
	orr	r0, r0, r1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
