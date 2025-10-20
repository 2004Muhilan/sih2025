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
	.pad	#28
	sub	sp, sp, #28
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #16]
	movw	r0, #0
	cmp	r1, r2
	str	r0, [sp, #4]                    @ 4-byte Spill
	bhs	.LBB0_3
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
.LBB0_3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB0_5
@ %bb.4:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_1
.LBB0_5:
	movw	r0, #0
	str	r0, [sp, #8]
.LBB0_6:                                @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #16]
	sub	r2, r0, #1
	movw	r0, #0
	cmp	r1, r2
	str	r0, [sp]                        @ 4-byte Spill
	bhs	.LBB0_8
@ %bb.7:                                @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp]                        @ 4-byte Spill
.LBB0_8:                                @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	tst	r0, #1
	beq	.LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #12]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_6
.LBB0_10:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #12]
	add	r1, r0, r1
	movw	r0, #0
	strb	r0, [r1]
	add	sp, sp, #28
	bx	lr
.Lfunc_end0:
	.size	string_concat, .Lfunc_end0-string_concat
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
