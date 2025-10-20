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
	.file	"bubblesort.c"
	.globl	bubblesort                      @ -- Begin function bubblesort
	.p2align	2
	.type	bubblesort,%function
	.code	32                              @ @bubblesort
bubblesort:
	.fnstart
@ %bb.0:
	subs	r12, r1, #1
	bxeq	lr
.LBB0_1:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	sub	lr, r1, #1
	mov	r3, #0
	mov	r2, r12
	b	.LBB0_3
.LBB0_2:                                @   in Loop: Header=BB0_3 Depth=1
	add	r3, r3, #1
	sub	r2, r2, #1
	cmp	r3, r12
	beq	.LBB0_8
.LBB0_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_6 Depth 2
	cmp	r3, lr
	beq	.LBB0_2
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r4, [r0]
	mov	r1, #0
	b	.LBB0_6
.LBB0_5:                                @   in Loop: Header=BB0_6 Depth=2
	str	r6, [r0, r1, lsl #2]
	str	r4, [r5, #4]
	add	r1, r1, #1
	cmp	r2, r1
	beq	.LBB0_2
.LBB0_6:                                @   Parent Loop BB0_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r5, r0, r1, lsl #2
	ldr	r6, [r5, #4]
	cmp	r4, r6
	bgt	.LBB0_5
@ %bb.7:                                @   in Loop: Header=BB0_6 Depth=2
	mov	r4, r6
	add	r1, r1, #1
	cmp	r2, r1
	bne	.LBB0_6
	b	.LBB0_2
.LBB0_8:
	pop	{r4, r5, r6, lr}
	bx	lr
.Lfunc_end0:
	.size	bubblesort, .Lfunc_end0-bubblesort
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
