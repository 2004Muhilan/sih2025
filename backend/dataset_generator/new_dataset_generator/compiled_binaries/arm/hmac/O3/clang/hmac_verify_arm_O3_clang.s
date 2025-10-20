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
	.file	"hmac_verify.c"
	.globl	hmac_verify                     @ -- Begin function hmac_verify
	.p2align	2
	.type	hmac_verify,%function
	.code	32                              @ @hmac_verify
hmac_verify:
	.fnstart
@ %bb.0:
	cmp	r2, #0
	moveq	r0, #1
	bxeq	lr
.LBB0_1:
	.save	{r11, lr}
	push	{r11, lr}
	mov	lr, #0
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r12, [r0], #1
	subs	r2, r2, #1
	ldrb	r3, [r1], #1
	eor	r3, r3, r12
	orr	lr, r3, lr
	bne	.LBB0_2
@ %bb.3:
	clz	r0, lr
	lsr	r0, r0, #5
	pop	{r11, pc}
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
