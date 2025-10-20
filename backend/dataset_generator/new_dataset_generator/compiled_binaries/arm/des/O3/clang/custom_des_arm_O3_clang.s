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
	.file	"custom_des.c"
	.globl	des_encrypt                     @ -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,%function
	.code	32                              @ @des_encrypt
des_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr	r9, [r0]
	ldrb	r11, [r0, #7]
	ldrb	r3, [r0, #6]
	ldrb	r6, [r0, #5]
	ldrb	r0, [r0, #4]
	ldrb	r10, [r1, #6]
	ldrb	r12, [r1, #7]
	ldrb	r4, [r1, #5]
	ldrb	lr, [r1, #4]
	ldrb	r5, [r1]
	ldrb	r8, [r1, #1]
	ldrb	r7, [r1, #2]
	ldrb	r1, [r1, #3]
	strb	r0, [r2]
	lsl	r0, r0, #24
	strb	r3, [r2, #2]
	orr	r0, r0, r6, lsl #16
	orr	r3, r11, r3, lsl #8
	strb	r6, [r2, #1]
	orr	r0, r3, r0
	rev	r3, r9
	eor	r3, r3, r0
	eor	r0, r0, r8
	eor	r0, r0, r7
	eor	r0, r0, lr
	lsr	r6, r3, #8
	eor	r0, r0, r4
	strb	r6, [r2, #6]
	eor	r0, r0, r12
	lsr	r6, r3, #16
	eor	r0, r0, r5
	strb	r6, [r2, #5]
	eor	r0, r0, r7
	lsr	r6, r3, #24
	eor	r0, r0, r1
	strb	r6, [r2, #4]
	eor	r0, r0, r4
	eor	r0, r0, r10
	strb	r0, [r2, #3]
	eor	r0, r3, r5
	eor	r0, r0, r7
	eor	r0, r0, r1
	eor	r0, r0, r4
	eor	r0, r0, r10
	eor	r0, r0, r5
	eor	r0, r0, r8
	eor	r0, r0, r1
	eor	r0, r0, lr
	eor	r0, r0, r10
	eor	r0, r0, r12
	strb	r0, [r2, #7]
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
