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
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         @ -- Begin function des_pc1
	.p2align	2
	.type	des_pc1,%function
	.code	32                              @ @des_pc1
des_pc1:
	.fnstart
@ %bb.0:
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #56
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #4]
	rsb	r3, r0, #64
	lsr	r1, r1, r3
	rsb	r3, r3, #32
	orr	r1, r1, r2, lsl r3
	rsb	r3, r0, #32
	cmp	r3, #0
	lsrpl	r1, r2, r3
	and	r1, r1, #1
	rsb	r2, r0, #55
	rsb	r3, r2, #32
	lsr	r3, r1, r3
	rsb	r0, r0, #23
	cmp	r0, #0
	lslpl	r3, r1, r0
	lsl	r2, r1, r2
	cmp	r0, #0
	movwpl	r2, #0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	orr	r1, r1, r3
	orr	r0, r0, r2
	str	r1, [sp, #12]
	str	r0, [sp, #8]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	add	sp, sp, #24
	bx	lr
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
