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
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             @ -- Begin function prng_mersenne_twist
	.p2align	2
	.type	prng_mersenne_twist,%function
	.code	32                              @ @prng_mersenne_twist
prng_mersenne_twist:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	movw	lr, #45279
	mov	r2, #0
	movw	r12, #623
	movt	lr, #39176
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	add	r3, r2, #1
	subs	r4, r2, r12
	mvn	r5, #226
	ldr	r1, [r0, r2, lsl #2]
	movne	r4, r3
	cmp	r2, #227
	ldr	r4, [r0, r4, lsl #2]
	movwlo	r5, #397
	add	r5, r5, r2
	and	r1, r1, #-2147483648
	bic	r6, r4, #-2147483647
	tst	r4, #1
	ldr	r5, [r0, r5, lsl #2]
	orr	r1, r6, r1
	eor	r1, r5, r1, lsr #1
	eorne	r1, r1, lr
	str	r1, [r0, r2, lsl #2]
	cmp	r3, #624
	mov	r2, r3
	bne	.LBB0_1
@ %bb.2:
	mov	r1, #0
	str	r1, [r0, #2496]
	pop	{r4, r5, r6, pc}
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
