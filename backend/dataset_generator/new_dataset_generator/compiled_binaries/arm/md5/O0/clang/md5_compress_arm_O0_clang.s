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
	.pad	#36
	sub	sp, sp, #36
	str	r0, [sp, #32]
	str	r1, [sp, #28]
	ldr	r0, [sp, #32]
	ldr	r0, [r0]
	str	r0, [sp, #24]
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #4]
	str	r0, [sp, #20]
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #8]
	str	r0, [sp, #16]
	ldr	r0, [sp, #32]
	ldr	r0, [r0, #12]
	str	r0, [sp, #12]
	movw	r0, #0
	str	r0, [sp, #8]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #16]
	and	r0, r2, r0
	ldr	r1, [sp, #12]
	bic	r1, r1, r2
	orr	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	str	r0, [sp]
	ldr	r0, [sp, #16]
	str	r0, [sp, #12]
	ldr	r0, [sp, #20]
	str	r0, [sp, #16]
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #4]
	add	r1, r1, r2
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #8]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	add	r1, r1, r2
	lsl	r1, r1, #7
	add	r0, r0, r1
	str	r0, [sp, #20]
	ldr	r0, [sp]
	str	r0, [sp, #24]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #32]
	ldr	r0, [r1]
	add	r0, r0, r2
	str	r0, [r1]
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #32]
	ldr	r0, [r1, #4]
	add	r0, r0, r2
	str	r0, [r1, #4]
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #32]
	ldr	r0, [r1, #8]
	add	r0, r0, r2
	str	r0, [r1, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #32]
	ldr	r0, [r1, #12]
	add	r0, r0, r2
	str	r0, [r1, #12]
	add	sp, sp, #36
	bx	lr
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
