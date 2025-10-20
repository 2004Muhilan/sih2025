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
	.file	"des3_triple.c"
	.globl	des3_encrypt                    @ -- Begin function des3_encrypt
	.p2align	2
	.type	des3_encrypt,%function
	.code	32                              @ @des3_encrypt
des3_encrypt:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#32
	sub	sp, sp, #32
	mov	lr, r3
	mov	r12, r2
	mov	r4, r1
	mov	r5, r0
	ldr	r1, [r11, #20]
	ldr	r0, [r11, #16]
	ldr	r3, [r11, #12]
	ldr	r2, [r11, #8]
	str	r5, [r11, #-16]
	str	r4, [r11, #-12]
	str	lr, [sp, #20]
	str	r12, [sp, #16]
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	eor	r0, r0, r3
	eor	r1, r1, r2
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	eor	r0, r0, r3
	eor	r1, r1, r2
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	eor	r0, r0, r3
	eor	r1, r1, r2
	str	r1, [r11, #-12]
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	des3_encrypt, .Lfunc_end0-des3_encrypt
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
