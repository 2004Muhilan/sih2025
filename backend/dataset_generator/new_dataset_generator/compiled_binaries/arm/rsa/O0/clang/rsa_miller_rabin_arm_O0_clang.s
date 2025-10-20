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
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                @ -- Begin function rsa_miller_rabin
	.p2align	2
	.type	rsa_miller_rabin,%function
	.code	32                              @ @rsa_miller_rabin
rsa_miller_rabin:
	.fnstart
@ %bb.0:
	.pad	#32
	sub	sp, sp, #32
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	str	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	blo	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	movw	r0, #0
	and	r0, r0, #1
	strb	r0, [sp, #31]
	b	.LBB0_11
.LBB0_2:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	eor	r0, r0, #2
	orr	r0, r0, r1
	cmp	r0, #0
	beq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	eor	r0, r0, #3
	orr	r0, r0, r1
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	movw	r0, #1
	and	r0, r0, #1
	strb	r0, [sp, #31]
	b	.LBB0_11
.LBB0_5:
	ldrb	r0, [sp, #16]
	tst	r0, #1
	bne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	movw	r0, #0
	and	r0, r0, #1
	strb	r0, [sp, #31]
	b	.LBB0_11
.LBB0_7:
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	subs	r1, r1, #1
	sbc	r0, r0, #0
	str	r1, [sp]
	str	r0, [sp, #4]
.LBB0_8:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r0, [sp]
	tst	r0, #1
	bne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	lsrs	r1, r1, #1
	rrx	r0, r0
	str	r1, [sp, #4]
	str	r0, [sp]
	b	.LBB0_8
.LBB0_10:
	movw	r0, #1
	and	r0, r0, #1
	strb	r0, [sp, #31]
.LBB0_11:
	ldrb	r0, [sp, #31]
	and	r0, r0, #1
	add	sp, sp, #32
	bx	lr
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
