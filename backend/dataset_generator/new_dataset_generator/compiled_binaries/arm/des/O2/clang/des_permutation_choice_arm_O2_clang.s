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
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         @ -- Begin function des_pc1
	.p2align	2
	.type	des_pc1,%function
	.code	32                              @ @des_pc1
des_pc1:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	mov	r12, r0
	mov	r0, #0
	mov	r2, #55
	mov	lr, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	add	r3, r2, #9
	rsb	r4, r2, #23
	lsr	r3, r12, r3
	orr	r3, r3, r1, lsl r4
	subs	r4, r2, #23
	lsrpl	r3, r1, r4
	rsb	r4, r2, #32
	and	r3, r3, #1
	subs	r5, r2, #32
	lsr	r4, r3, r4
	lslpl	r4, r3, r5
	lsl	r3, r3, r2
	movwpl	r3, #0
	sub	r2, r2, #1
	orr	lr, r4, lr
	orr	r0, r3, r0
	cmn	r2, #1
	bne	.LBB0_1
@ %bb.2:
	mov	r1, lr
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
