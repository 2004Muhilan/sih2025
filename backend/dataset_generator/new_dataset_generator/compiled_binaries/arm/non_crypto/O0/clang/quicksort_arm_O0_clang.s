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
	.file	"quicksort.c"
	.globl	swap                            @ -- Begin function swap
	.p2align	2
	.type	swap,%function
	.code	32                              @ @swap
swap:
	.fnstart
@ %bb.0:
	.pad	#12
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	ldr	r1, [sp, #8]
	str	r0, [r1]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	str	r0, [r1]
	add	sp, sp, #12
	bx	lr
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	partition                       @ -- Begin function partition
	.p2align	2
	.type	partition,%function
	.code	32                              @ @partition
partition:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#24
	sub	sp, sp, #24
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #12]
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	sub	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-8]
	str	r0, [sp]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bge	.LBB1_6
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [sp]
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bge	.LBB1_4
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	ldr	r1, [r11, #-4]
	ldr	r0, [sp, #4]
	add	r0, r1, r0, lsl #2
	ldr	r2, [sp]
	add	r1, r1, r2, lsl #2
	bl	swap
.LBB1_4:                                @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_5
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB1_1
.LBB1_6:
	ldr	r1, [r11, #-4]
	ldr	r0, [sp, #4]
	add	r0, r1, r0, lsl #2
	add	r0, r0, #4
	ldr	r2, [sp, #12]
	add	r1, r1, r2, lsl #2
	bl	swap
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	partition, .Lfunc_end1-partition
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	quicksort                       @ -- Begin function quicksort
	.p2align	2
	.type	quicksort,%function
	.code	32                              @ @quicksort
quicksort:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	.LBB2_2
@ %bb.1:
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	bl	partition
	str	r0, [sp]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, [sp]
	sub	r2, r2, #1
	bl	quicksort
	ldr	r0, [r11, #-4]
	ldr	r1, [sp]
	add	r1, r1, #1
	ldr	r2, [sp, #4]
	bl	quicksort
.LBB2_2:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym swap
	.addrsig_sym partition
	.addrsig_sym quicksort
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
