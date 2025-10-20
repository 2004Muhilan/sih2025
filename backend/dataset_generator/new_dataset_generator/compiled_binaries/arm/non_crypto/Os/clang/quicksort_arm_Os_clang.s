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
	ldr	r2, [r0]
	ldr	r3, [r1]
	str	r3, [r0]
	str	r2, [r1]
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
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldr	r12, [r0, r2, lsl #2]
	mov	lr, r1
	cmp	r2, r1
	ble	.LBB1_6
@ %bb.1:
	add	r3, r0, lr, lsl #2
	sub	r1, r2, lr
	sub	lr, lr, #1
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r3]
	cmp	r4, r12
	bge	.LBB1_4
@ %bb.3:                                @   in Loop: Header=BB1_2 Depth=1
	add	lr, lr, #1
	ldr	r5, [r0, lr, lsl #2]
	str	r4, [r0, lr, lsl #2]
	str	r5, [r3]
.LBB1_4:                                @   in Loop: Header=BB1_2 Depth=1
	add	r3, r3, #4
	subs	r1, r1, #1
	bne	.LBB1_2
@ %bb.5:
	ldr	r12, [r0, r2, lsl #2]
	add	lr, lr, #1
.LBB1_6:
	ldr	r1, [r0, lr, lsl #2]
	str	r12, [r0, lr, lsl #2]
	str	r1, [r0, r2, lsl #2]
	mov	r0, lr
	pop	{r4, r5, r11, pc}
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
	cmp	r1, r2
	bxge	lr
.LBB2_1:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	mov	r4, r2
	mov	r6, r1
	mov	r5, r0
.LBB2_2:                                @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	bl	partition
	sub	r2, r0, #1
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	bl	quicksort
	add	r6, r7, #1
	cmp	r6, r4
	blt	.LBB2_2
@ %bb.3:
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
