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
	.file	"sha1_round3.c"
	.globl	sha1_round3                     @ -- Begin function sha1_round3
	.p2align	2
	.type	sha1_round3,%function
	.code	32                              @ @sha1_round3
sha1_round3:
	.fnstart
@ %bb.0:
	.save	{r4, lr}
	push	{r4, lr}
	ldr	lr, [sp, #8]
	and	r4, r3, r2
	orr	r2, r3, r2
	ldr	r12, [sp, #12]
	and	r1, r2, r1
	add	r0, lr, r0, ror #27
	orr	r1, r1, r4
	add	r0, r0, r12
	add	r0, r0, r1
	movw	r1, #48348
	movt	r1, #36635
	add	r0, r0, r1
	pop	{r4, pc}
.Lfunc_end0:
	.size	sha1_round3, .Lfunc_end0-sha1_round3
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
