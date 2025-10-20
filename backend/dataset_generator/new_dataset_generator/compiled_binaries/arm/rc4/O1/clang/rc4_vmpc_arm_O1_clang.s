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
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                @ -- Begin function rc4_vmpc_variant
	.p2align	2
	.type	rc4_vmpc_variant,%function
	.code	32                              @ @rc4_vmpc_variant
rc4_vmpc_variant:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.pad	#256
	sub	sp, sp, #256
	mov	r3, #0
	mov	r12, sp
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	strb	r3, [r12, r3]
	add	r3, r3, #1
	cmp	r3, #256
	bne	.LBB0_1
@ %bb.2:
	cmp	r1, #0
	beq	.LBB0_5
@ %bb.3:
	mov	r3, #0
.LBB0_4:                                @ =>This Inner Loop Header: Depth=1
	ldrb	lr, [r0]
	ldrb	r2, [r12, lr]
	add	r2, r2, r3
	uxtb	r2, r2
	ldrb	r3, [r12, r2]
	ldrb	r2, [r12, r3]
	ldrb	r2, [r12, r2]
	add	r2, r2, #1
	uxtb	r2, r2
	ldrb	r2, [r12, r2]
	eor	r2, r2, lr
	strb	r2, [r0], #1
	subs	r1, r1, #1
	bne	.LBB0_4
.LBB0_5:
	add	sp, sp, #256
	pop	{r11, pc}
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
