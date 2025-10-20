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
	.file	"des_feistel_function.c"
	.globl	des_feistel                     @ -- Begin function des_feistel
	.p2align	2
	.type	des_feistel,%function
	.code	32                              @ @des_feistel
des_feistel:
	.fnstart
@ %bb.0:
	.pad	#32
	sub	sp, sp, #32
	str	r0, [sp, #28]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	mov	r0, #0
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #48
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r2, [sp, #28]
	ldr	r0, [sp, #4]
	rsb	r3, r0, #32
	mov	r1, #1
	and	r2, r1, r2, lsr r3
	rsb	r3, r0, #47
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	orr	r0, r0, r2, lsl r3
	str	r1, [sp, #12]
	str	r0, [sp, #8]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	eor	r0, r0, r3
	eor	r1, r1, r2
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	movw	r0, #0
	str	r0, [sp]
	ldr	r0, [sp]
	add	sp, sp, #32
	bx	lr
.Lfunc_end0:
	.size	des_feistel, .Lfunc_end0-des_feistel
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
