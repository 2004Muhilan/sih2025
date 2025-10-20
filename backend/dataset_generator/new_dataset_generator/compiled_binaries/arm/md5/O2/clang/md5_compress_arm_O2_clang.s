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
	.file	"md5_compress.c"
	.globl	md5_compress                    @ -- Begin function md5_compress
	.p2align	2
	.type	md5_compress,%function
	.code	32                              @ @md5_compress
md5_compress:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldmib	r0, {r2, r8, r12}
	ldr	lr, [r0]
	bic	r4, r12, r2
	and	r5, r2, r8
	ldr	r9, [r1, #12]
	orr	r4, r5, r4
	ldm	r1, {r5, r6, r10}
	add	r4, r4, lr
	add	r4, r4, r5
	ldr	r11, [r1, #52]
	add	r5, r2, r4, lsl #7
	bic	r3, r8, r5
	and	r7, r5, r2
	orr	r3, r7, r3
	add	r3, r3, r12
	add	r3, r3, r6
	add	r3, r4, r3
	add	r4, r2, r3, lsl #7
	bic	r6, r2, r4
	and	r7, r4, r5
	orr	r6, r7, r6
	add	r6, r6, r8
	add	r6, r6, r10
	add	r3, r3, r6
	add	r6, r2, r3, lsl #7
	bic	r10, r5, r6
	and	r7, r6, r4
	orr	r7, r7, r10
	add	r7, r7, r2
	add	r7, r7, r9
	add	r10, r3, r7
	add	r7, r2, r10, lsl #7
	bic	r9, r4, r7
	and	r3, r7, r6
	orr	r3, r3, r9
	add	r3, r3, r5
	ldr	r5, [r1, #16]
	add	r3, r3, r5
	add	r10, r10, r3
	add	r5, r2, r10, lsl #7
	bic	r9, r6, r5
	and	r3, r5, r7
	orr	r3, r3, r9
	add	r3, r3, r4
	ldr	r4, [r1, #20]
	add	r3, r3, r4
	add	r10, r10, r3
	add	r4, r2, r10, lsl #7
	bic	r9, r7, r4
	and	r3, r4, r5
	orr	r3, r3, r9
	add	r3, r3, r6
	ldr	r6, [r1, #24]
	add	r3, r3, r6
	add	r10, r10, r3
	add	r3, r2, r10, lsl #7
	bic	r9, r5, r3
	and	r6, r3, r4
	orr	r6, r6, r9
	add	r6, r6, r7
	ldr	r7, [r1, #28]
	add	r6, r6, r7
	add	r10, r10, r6
	add	r7, r2, r10, lsl #7
	bic	r9, r4, r7
	and	r6, r7, r3
	orr	r6, r6, r9
	add	r5, r6, r5
	ldr	r6, [r1, #32]
	add	r5, r5, r6
	add	r10, r10, r5
	add	r5, r2, r10, lsl #7
	bic	r9, r3, r5
	and	r6, r5, r7
	orr	r6, r6, r9
	add	r4, r6, r4
	ldr	r6, [r1, #36]
	add	r4, r4, r6
	add	r10, r10, r4
	add	r6, r2, r10, lsl #7
	bic	r9, r7, r6
	and	r4, r6, r5
	orr	r4, r4, r9
	add	r3, r4, r3
	ldr	r4, [r1, #40]
	add	r3, r3, r4
	add	r10, r10, r3
	add	r3, r2, r10, lsl #7
	bic	r9, r5, r3
	and	r4, r3, r6
	orr	r4, r4, r9
	add	r4, r4, r7
	ldr	r7, [r1, #44]
	add	r4, r4, r7
	add	r10, r10, r4
	add	r4, r2, r10, lsl #7
	bic	r9, r6, r4
	and	r7, r4, r3
	orr	r7, r7, r9
	ldr	r9, [r1, #60]
	add	r5, r7, r5
	ldr	r7, [r1, #48]
	add	r5, r5, r7
	add	r5, r10, r5
	ldr	r10, [r1, #56]
	add	r7, r2, r5, lsl #7
	add	r1, r7, lr
	str	r1, [r0]
	bic	lr, r3, r7
	and	r1, r7, r4
	orr	r1, r1, lr
	add	r1, r1, r6
	add	r1, r1, r11
	add	r1, r5, r1
	add	r6, r2, r1, lsl #7
	add	r5, r6, r12
	str	r5, [r0, #12]
	bic	r12, r4, r6
	and	r5, r6, r7
	orr	r5, r5, r12
	add	r3, r5, r3
	add	r3, r3, r10
	add	r1, r1, r3
	add	r3, r2, r1, lsl #7
	add	r5, r3, r8
	bic	r7, r7, r3
	and	r3, r3, r6
	str	r5, [r0, #8]
	orr	r3, r3, r7
	add	r3, r3, r4
	add	r3, r3, r9
	add	r1, r1, r3
	lsl	r1, r1, #7
	add	r1, r1, r2, lsl #1
	str	r1, [r0, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
