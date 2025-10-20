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
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              @ -- Begin function binary_tree_search
	.p2align	2
	.type	binary_tree_search,%function
	.code	32                              @ @binary_tree_search
binary_tree_search:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	movw	r1, #0
	cmp	r0, r1
	bne	.LBB0_2
@ %bb.1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bne	.LBB0_4
@ %bb.3:
	movw	r0, #1
	str	r0, [r11, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB0_6
@ %bb.5:
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #4]
	ldr	r1, [sp, #4]
	bl	binary_tree_search
	str	r0, [r11, #-4]
	b	.LBB0_7
.LBB0_6:
	ldr	r0, [sp, #8]
	ldr	r0, [r0, #8]
	ldr	r1, [sp, #4]
	bl	binary_tree_search
	str	r0, [r11, #-4]
.LBB0_7:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	binary_tree_search, .Lfunc_end0-binary_tree_search
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym binary_tree_search
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
