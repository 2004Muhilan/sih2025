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
	.file	"md5_padding.c"
	.globl	md5_padding                     @ -- Begin function md5_padding
	.p2align	2
	.type	md5_padding,%function
	.code	32                              @ @md5_padding
md5_padding:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	ldr	r2, [r11, #-8]
	bl	memcpy
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-8]
	mov	r0, #128
	strb	r0, [r1, r2]
	ldr	r0, [r11, #-8]
	rsb	r0, r0, #55
	and	r0, r0, #63
	str	r0, [sp, #16]
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-8]
	add	r0, r0, r1
	add	r0, r0, #1
	ldr	r2, [sp, #16]
	mov	r1, #0
	str	r1, [sp, #4]                    @ 4-byte Spill
	bl	memset
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [r11, #-8]
	lsl	r0, r0, #3
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-8]
	add	r0, r0, r1
	add	r0, r0, #1
	ldr	r1, [sp, #16]
	add	r1, r0, r1
	ldrb	r0, [sp, #8]
	strb	r0, [r1]
	ldrb	r0, [sp, #9]
	strb	r0, [r1, #1]
	ldrb	r0, [sp, #10]
	strb	r0, [r1, #2]
	ldrb	r0, [sp, #11]
	strb	r0, [r1, #3]
	ldrb	r0, [sp, #12]
	strb	r0, [r1, #4]
	ldrb	r0, [sp, #13]
	strb	r0, [r1, #5]
	ldrb	r0, [sp, #14]
	strb	r0, [r1, #6]
	ldrb	r0, [sp, #15]
	strb	r0, [r1, #7]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	md5_padding, .Lfunc_end0-md5_padding
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
