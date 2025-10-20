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
	.file	"custom_md5.c"
	.globl	md5_transform                   @ -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,%function
	.code	32                              @ @md5_transform
md5_transform:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr	r10, [r0, #4]
	ldr	r8, [r0, #8]
	ldr	r12, [r0, #12]
	ldr	lr, [r0]
	and	r5, r10, r8
	bic	r4, r12, r10
	ldr	r6, [r1, #4]
	orr	r4, r5, r4
	ldr	r5, [r1]
	add	r4, r4, lr
	ldr	r7, [r1, #8]
	add	r4, r4, r5
	ldr	r9, [r1, #12]
	ldr	r11, [r1, #56]
	add	r4, r10, r4, ror #25
	bic	r5, r8, r4
	and	r3, r4, r10
	orr	r3, r3, r5
	add	r3, r3, r12
	add	r3, r3, r6
	add	r3, r4, r3, ror #25
	bic	r5, r10, r3
	and	r6, r3, r4
	orr	r5, r6, r5
	add	r5, r5, r8
	add	r5, r5, r7
	add	r5, r3, r5, ror #25
	bic	r6, r4, r5
	and	r7, r5, r3
	orr	r6, r7, r6
	add	r6, r6, r10
	add	r6, r6, r9
	ldr	r9, [r1, #60]
	add	r6, r5, r6, ror #25
	bic	r7, r3, r6
	and	r2, r6, r5
	orr	r2, r2, r7
	add	r2, r2, r4
	ldr	r4, [r1, #16]
	add	r2, r2, r4
	add	r2, r6, r2, ror #25
	bic	r4, r5, r2
	and	r7, r2, r6
	orr	r4, r7, r4
	add	r3, r4, r3
	ldr	r4, [r1, #20]
	add	r3, r3, r4
	add	r3, r2, r3, ror #25
	bic	r4, r6, r3
	and	r7, r3, r2
	orr	r4, r7, r4
	add	r4, r4, r5
	ldr	r5, [r1, #24]
	add	r4, r4, r5
	add	r4, r3, r4, ror #25
	bic	r5, r2, r4
	and	r7, r4, r3
	orr	r5, r7, r5
	add	r5, r5, r6
	ldr	r6, [r1, #28]
	add	r5, r5, r6
	add	r7, r4, r5, ror #25
	bic	r5, r3, r7
	and	r6, r7, r4
	orr	r5, r6, r5
	add	r2, r5, r2
	ldr	r5, [r1, #32]
	add	r2, r2, r5
	add	r2, r7, r2, ror #25
	bic	r5, r4, r2
	and	r6, r2, r7
	orr	r5, r6, r5
	add	r3, r5, r3
	ldr	r5, [r1, #36]
	add	r3, r3, r5
	add	r6, r2, r3, ror #25
	bic	r3, r7, r6
	and	r5, r6, r2
	orr	r3, r5, r3
	add	r3, r3, r4
	ldr	r4, [r1, #40]
	add	r3, r3, r4
	add	r5, r6, r3, ror #25
	bic	r3, r2, r5
	and	r4, r5, r6
	orr	r3, r4, r3
	ldr	r4, [r1, #44]
	add	r3, r3, r7
	add	r3, r3, r4
	add	r4, r5, r3, ror #25
	bic	r3, r6, r4
	and	r7, r4, r5
	orr	r3, r7, r3
	add	r2, r3, r2
	ldr	r3, [r1, #48]
	ldr	r1, [r1, #52]
	add	r2, r2, r3
	add	r2, r4, r2, ror #25
	add	r3, r2, lr
	str	r3, [r0]
	bic	r3, r5, r2
	and	r7, r2, r4
	orr	r3, r7, r3
	add	r3, r3, r6
	add	r1, r3, r1
	add	r1, r2, r1, ror #25
	add	r3, r1, r12
	str	r3, [r0, #12]
	bic	r3, r4, r1
	and	r7, r1, r2
	orr	r3, r7, r3
	add	r3, r3, r5
	add	r3, r3, r11
	add	r3, r1, r3, ror #25
	bic	r2, r2, r3
	and	r1, r3, r1
	orr	r1, r1, r2
	add	r7, r3, r8
	add	r1, r1, r4
	str	r7, [r0, #8]
	add	r1, r1, r9
	add	r1, r3, r1, ror #25
	add	r1, r1, r10
	str	r1, [r0, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	md5_init                        @ -- Begin function md5_init
	.p2align	2
	.type	md5_init,%function
	.code	32                              @ @md5_init
md5_init:
	.fnstart
@ %bb.0:
	movw	r12, #21622
	movw	r2, #56574
	movw	r1, #8961
	movw	r3, #43913
	movt	r12, #4146
	movt	r2, #39098
	movt	r1, #26437
	movt	r3, #61389
	stm	r0, {r1, r3}
	str	r2, [r0, #8]
	str	r12, [r0, #12]
	bx	lr
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
