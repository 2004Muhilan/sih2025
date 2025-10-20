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
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      @ -- Begin function rc4_stream
	.p2align	2
	.type	rc4_stream,%function
	.code	32                              @ @rc4_stream
rc4_stream:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#288
	sub	sp, sp, #288
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	str	r3, [r11, #-24]
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #256
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #12]
	add	r1, sp, #16
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #0
	strb	r0, [sp, #11]
	movw	r0, #0
	strb	r0, [sp, #10]
	movw	r0, #0
	strb	r0, [sp, #9]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bhs	.LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldrb	r0, [sp, #10]
	add	r0, r0, #1
	strb	r0, [sp, #10]
	ldrb	r0, [sp, #9]
	ldrb	r2, [sp, #10]
	add	r1, sp, #16
	ldrb	r2, [r1, r2]
	add	r0, r0, r2
	strb	r0, [sp, #9]
	ldrb	r0, [sp, #10]
	ldrb	r0, [r1, r0]
	strb	r0, [sp, #3]
	ldrb	r0, [sp, #9]
	ldrb	r0, [r1, r0]
	ldrb	r2, [sp, #10]
	strb	r0, [r1, r2]
	ldrb	r0, [sp, #3]
	ldrb	r2, [sp, #9]
	strb	r0, [r1, r2]
	ldrb	r0, [sp, #10]
	ldrb	r0, [r1, r0]
	ldrb	r2, [sp, #9]
	ldrb	r1, [r1, r2]
	add	r0, r0, r1
	uxtb	r1, r0
	add	r0, sp, #16
	add	r0, r0, r1
	ldrb	r2, [r0]
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #4]
	add	r1, r0, r1
	ldrb	r0, [r1]
	eor	r0, r0, r2
	strb	r0, [r1]
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_8:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	rc4_stream, .Lfunc_end0-rc4_stream
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
