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
	mov	r12, r1
	cmp	r2, r1
	ble	.LBB1_6
@ %bb.1:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	ldr	lr, [r0, r2, lsl #2]
	add	r1, r0, r12, lsl #2
	sub	r4, r2, r12
	sub	r12, r12, #1
	b	.LBB1_3
.LBB1_2:                                @   in Loop: Header=BB1_3 Depth=1
	add	r1, r1, #4
	subs	r4, r4, #1
	beq	.LBB1_5
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1]
	cmp	r3, lr
	bge	.LBB1_2
@ %bb.4:                                @   in Loop: Header=BB1_3 Depth=1
	add	r12, r12, #1
	ldr	r5, [r0, r12, lsl #2]
	str	r3, [r0, r12, lsl #2]
	str	r5, [r1]
	b	.LBB1_2
.LBB1_5:
	add	r12, r12, #1
	pop	{r4, r5, r11, lr}
.LBB1_6:
	ldr	r1, [r0, r2, lsl #2]
	ldr	r3, [r0, r12, lsl #2]
	str	r1, [r0, r12, lsl #2]
	str	r3, [r0, r2, lsl #2]
	mov	r0, r12
	bx	lr
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
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	mov	r7, r2
	mov	r5, r0
	b	.LBB2_2
.LBB2_1:                                @   in Loop: Header=BB2_2 Depth=1
	ldr	r0, [r5, r7, lsl #2]
	add	r2, r5, r6, lsl #2
	ldr	r3, [r2, #4]
	str	r0, [r2, #4]
	str	r3, [r5, r7, lsl #2]
	mov	r0, r5
	mov	r2, r6
	bl	quicksort
	add	r1, r6, #2
.LBB2_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_5 Depth 2
	cmp	r1, r7
	bge	.LBB2_7
@ %bb.3:                                @   in Loop: Header=BB2_2 Depth=1
	ldr	r0, [r5, r7, lsl #2]
	sub	r6, r1, #1
	mov	r2, r1
	b	.LBB2_5
.LBB2_4:                                @   in Loop: Header=BB2_5 Depth=2
	add	r2, r2, #1
	cmp	r7, r2
	beq	.LBB2_1
.LBB2_5:                                @   Parent Loop BB2_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r5, r2, lsl #2]
	cmp	r3, r0
	bge	.LBB2_4
@ %bb.6:                                @   in Loop: Header=BB2_5 Depth=2
	add	r6, r6, #1
	ldr	r4, [r5, r6, lsl #2]
	str	r3, [r5, r6, lsl #2]
	str	r4, [r5, r2, lsl #2]
	b	.LBB2_4
.LBB2_7:
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
