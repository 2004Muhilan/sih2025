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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#12
	sub	sp, sp, #12
	str	r0, [r11, #-4]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #624
	bge	.LBB0_6
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r2, [r11, #-4]
	ldr	r0, [sp, #4]
	ldr	r1, [r2, r0, lsl #2]
	add	lr, r0, #1
	movw	r0, #8403
	movt	r0, #53773
	smmla	r12, lr, r0, lr
	asr	r3, r12, #9
	add	r12, r3, r12, lsr #31
	mov	r3, #624
	mls	r12, r12, r3, lr
	ldr	r2, [r2, r12, lsl #2]
	bfi	r1, r2, #0, #31
	str	r1, [sp]
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #4]
	movw	r12, #397
	add	r12, r2, r12
	smmla	lr, r12, r0, r12
	asr	r0, lr, #9
	add	r0, r0, lr, lsr #31
	mls	r0, r0, r3, r12
	ldr	r0, [r1, r0, lsl #2]
	ldr	r3, [sp]
	eor	r0, r0, r3, lsr #1
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
	ldr	r0, [sp]
	and	r0, r0, #1
	cmp	r0, #0
	beq	.LBB0_4
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #4]
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1]
	ldr	r2, .LCPI0_0
	eor	r0, r0, r2
	str	r0, [r1]
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	ldr	r1, [r11, #-4]
	movw	r0, #0
	str	r0, [r1, #2496]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.7:
.LCPI0_0:
	.long	2567483615                      @ 0x9908b0df
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
