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
	.file	"string_concat.c"
	.globl	string_concat                   @ -- Begin function string_concat
	.p2align	2
	.type	string_concat,%function
	.code	32                              @ @string_concat
string_concat:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	mov	lr, #0
	cmp	r2, #0
	beq	.LBB0_4
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r0, lr]
	cmp	r3, #0
	beq	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	add	lr, lr, #1
	cmp	r2, lr
	bne	.LBB0_1
@ %bb.3:
	mov	lr, r2
.LBB0_4:
	sub	r12, r2, #1
	cmp	lr, r12
	bhs	.LBB0_6
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r1], #1
	cmp	r2, #0
	strbne	r2, [r0, lr]
	addne	lr, lr, #1
	cmpne	r12, lr
	bne	.LBB0_5
.LBB0_6:
	mov	r1, #0
	strb	r1, [r0, lr]
	pop	{r11, pc}
.Lfunc_end0:
	.size	string_concat, .Lfunc_end0-string_concat
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
