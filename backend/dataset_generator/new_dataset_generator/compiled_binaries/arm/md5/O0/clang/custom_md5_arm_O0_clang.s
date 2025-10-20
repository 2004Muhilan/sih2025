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
	.file	"custom_md5.c"
	.globl	md5_transform                   @ -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,%function
	.code	32                              @ @md5_transform
md5_transform:
	.fnstart
@ %bb.0:
	.pad	#108
	sub	sp, sp, #108
	str	r0, [sp, #104]
	str	r1, [sp, #100]
	ldr	r0, [sp, #104]
	ldr	r0, [r0]
	str	r0, [sp, #96]
	ldr	r0, [sp, #104]
	ldr	r0, [r0, #4]
	str	r0, [sp, #92]
	ldr	r0, [sp, #104]
	ldr	r0, [r0, #8]
	str	r0, [sp, #88]
	ldr	r0, [sp, #104]
	ldr	r0, [r0, #12]
	str	r0, [sp, #84]
	movw	r0, #0
	str	r0, [sp, #16]
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #100]
	ldr	r1, [sp, #12]
	ldr	r0, [r0, r1]
	ldr	r2, [sp, #16]
	add	r1, sp, #20
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	ldr	r0, [sp, #12]
	add	r0, r0, #4
	str	r0, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #0
	str	r0, [sp, #8]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #16
	bge	.LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r2, [sp, #92]
	ldr	r0, [sp, #88]
	and	r0, r2, r0
	ldr	r1, [sp, #84]
	bic	r1, r1, r2
	orr	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #84]
	str	r0, [sp]
	ldr	r0, [sp, #88]
	str	r0, [sp, #84]
	ldr	r0, [sp, #92]
	str	r0, [sp, #88]
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #4]
	add	r2, r1, r2
	ldr	r12, [sp, #8]
	add	r1, sp, #20
	add	r3, r1, r12, lsl #2
	ldr	r1, [r1, r12, lsl #2]
	add	r1, r2, r1
	lsl	r1, r1, #7
	ldr	r3, [r3]
	add	r2, r2, r3
	lsr	r2, r2, #25
	orr	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #92]
	ldr	r0, [sp]
	str	r0, [sp, #96]
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_5
.LBB0_8:
	ldr	r2, [sp, #96]
	ldr	r1, [sp, #104]
	ldr	r0, [r1]
	add	r0, r0, r2
	str	r0, [r1]
	ldr	r2, [sp, #92]
	ldr	r1, [sp, #104]
	ldr	r0, [r1, #4]
	add	r0, r0, r2
	str	r0, [r1, #4]
	ldr	r2, [sp, #88]
	ldr	r1, [sp, #104]
	ldr	r0, [r1, #8]
	add	r0, r0, r2
	str	r0, [r1, #8]
	ldr	r2, [sp, #84]
	ldr	r1, [sp, #104]
	ldr	r0, [r1, #12]
	add	r0, r0, r2
	str	r0, [r1, #12]
	add	sp, sp, #108
	bx	lr
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	md5_init                        @ -- Begin function md5_init
	.p2align	2
	.type	md5_init,%function
	.code	32                              @ @md5_init
md5_init:
	.fnstart
@ %bb.0:
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_3
	str	r0, [r1]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_2
	str	r0, [r1, #4]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_1
	str	r0, [r1, #8]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_0
	str	r0, [r1, #12]
	add	sp, sp, #4
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	271733878                       @ 0x10325476
.LCPI1_1:
	.long	2562383102                      @ 0x98badcfe
.LCPI1_2:
	.long	4023233417                      @ 0xefcdab89
.LCPI1_3:
	.long	1732584193                      @ 0x67452301
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
