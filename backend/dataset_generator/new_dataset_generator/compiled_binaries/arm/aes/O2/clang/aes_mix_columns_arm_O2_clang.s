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
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 @ -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,%function
	.code	32                              @ @aes_mix_columns
aes_mix_columns:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	ldrsb	r3, [r0]
	mov	r2, #27
	ldrsb	r8, [r0, #1]
	mov	lr, #27
	ldrsb	r12, [r0, #2]
	cmp	r3, #0
	lsl	r7, r3, #1
	eor	r4, r8, r3
	eormi	r7, r2, r3, lsl #1
	eor	r1, r4, r12
	eor	r5, r1, r7
	ldrsb	r1, [r0, #3]
	eor	r3, r12, r3
	lsl	r9, r8, #1
	cmp	r1, #0
	eor	r4, r4, r1
	lsl	r6, r1, #1
	eor	r3, r3, r1
	eormi	r6, r2, r1, lsl #1
	cmp	r12, #0
	eor	r5, r5, r6
	strb	r5, [r0, #3]
	lsl	r5, r12, #1
	str	r7, [sp]                        @ 4-byte Spill
	eormi	r5, r2, r12, lsl #1
	cmp	r8, #0
	eormi	r9, r2, r8, lsl #1
	eor	r4, r4, r5
	eor	r3, r3, r9
	eor	r4, r4, r6
	ldrsb	r6, [r0, #5]
	eor	r3, r3, r5
	strb	r4, [r0, #2]
	strb	r3, [r0, #1]
	cmp	r6, #0
	ldrsb	r4, [r0, #4]
	lsl	r10, r6, #1
	ldrsb	r3, [r0, #6]
	eormi	r10, r2, r6, lsl #1
	ldrsb	r7, [r0, #7]
	eor	r5, r3, r4
	cmp	r3, #0
	eor	r5, r5, r7
	eor	r11, r5, r10
	lsl	r5, r3, #1
	eormi	r5, r2, r3, lsl #1
	cmp	r7, #0
	eor	r2, r11, r5
	eor	r11, r6, r4
	strb	r2, [r0, #5]
	eor	r2, r11, r7
	eor	r2, r2, r5
	lsl	r5, r7, #1
	eormi	r5, lr, r7, lsl #1
	cmp	r4, #0
	eor	r2, r2, r5
	strb	r2, [r0, #6]
	lsl	r2, r4, #1
	eormi	r2, lr, r4, lsl #1
	eor	r4, r11, r3
	eor	r4, r4, r2
	eor	r3, r3, r6
	eor	r4, r4, r5
	strb	r4, [r0, #7]
	ldr	r4, [sp]                        @ 4-byte Reload
	eor	r5, r12, r8
	eor	r3, r3, r2
	ldrsb	r2, [r0, #10]
	eor	r5, r5, r4
	eor	r3, r3, r7
	eor	r1, r5, r1
	ldrsb	r5, [r0, #9]
	eor	r1, r1, r9
	strb	r1, [r0]
	ldrsb	r1, [r0, #8]
	eor	r3, r3, r10
	strb	r3, [r0, #4]
	mov	r12, #27
	cmp	r1, #0
	eor	r7, r2, r5
	lsl	r3, r1, #1
	ldrsb	r6, [r0, #11]
	eormi	r3, r12, r1, lsl #1
	lsl	r4, r5, #1
	eor	r7, r7, r3
	cmp	r5, #0
	eormi	r4, r12, r5, lsl #1
	eor	r7, r7, r6
	eor	r7, r7, r4
	strb	r7, [r0, #8]
	eor	r7, r5, r1
	cmp	r6, #0
	eor	r5, r7, r2
	eor	r7, r7, r6
	eor	r3, r5, r3
	lsl	r5, r6, #1
	eormi	r5, r12, r6, lsl #1
	cmp	r2, #0
	eor	r3, r3, r5
	strb	r3, [r0, #11]
	lsl	r3, r2, #1
	eor	r1, r2, r1
	eormi	r3, r12, r2, lsl #1
	eor	r1, r1, r6
	eor	r7, r7, r3
	eor	r1, r1, r4
	eor	r7, r7, r5
	strb	r7, [r0, #10]
	ldrsb	r7, [r0, #12]
	eor	r1, r1, r3
	ldrsb	r2, [r0, #13]
	mov	r3, #27
	strb	r1, [r0, #9]
	cmp	r7, #0
	ldrsb	r1, [r0, #14]
	lsl	r8, r7, #1
	ldrsb	r4, [r0, #15]
	eor	lr, r2, r7
	eormi	r8, r3, r7, lsl #1
	eor	r5, lr, r1
	eor	r12, r5, r8
	cmp	r4, #0
	lsl	r5, r4, #1
	eor	r7, r1, r7
	eormi	r5, r3, r4, lsl #1
	cmp	r1, #0
	eor	r6, r12, r5
	strb	r6, [r0, #15]
	lsl	r6, r1, #1
	mov	r12, #27
	eormi	r6, r3, r1, lsl #1
	eor	r3, lr, r4
	eor	r3, r3, r6
	eor	r1, r1, r2
	eor	r3, r3, r5
	strb	r3, [r0, #14]
	lsl	r3, r2, #1
	cmp	r2, #0
	eor	r1, r1, r8
	eormi	r3, r12, r2, lsl #1
	eor	r7, r7, r4
	eor	r1, r1, r4
	eor	r7, r7, r3
	eor	r1, r1, r3
	eor	r7, r7, r6
	strb	r7, [r0, #13]
	strb	r1, [r0, #12]
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
