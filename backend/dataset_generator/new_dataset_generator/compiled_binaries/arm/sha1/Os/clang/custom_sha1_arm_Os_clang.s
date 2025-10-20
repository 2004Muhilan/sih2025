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
	.file	"custom_sha1.c"
	.globl	sha1_transform                  @ -- Begin function sha1_transform
	.p2align	2
	.type	sha1_transform,%function
	.code	32                              @ @sha1_transform
sha1_transform:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#336
	sub	sp, sp, #336
	ldr	r9, [r0, #12]
	add	r11, sp, #16
	ldr	r10, [r0, #16]
	mov	r2, #0
	ldm	r0, {r4, r12, lr}
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [r1, r2]
	rev	r3, r3
	str	r3, [r11, r2]
	add	r2, r2, #4
	cmp	r2, #64
	bne	.LBB0_1
@ %bb.2:
	mov	r1, #0
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	add	r2, r11, r1
	ldr	r5, [r11, r1]
	add	r1, r1, #4
	ldr	r7, [r2, #32]
	cmp	r1, #256
	ldr	r6, [r2, #52]
	ldr	r3, [r2, #8]
	eor	r7, r7, r6
	eor	r3, r7, r3
	eor	r3, r3, r5
	ror	r3, r3, #31
	str	r3, [r2, #64]
	bne	.LBB0_3
@ %bb.4:
	mov	r1, #0
	mov	r2, r10
	mov	r3, r9
	mov	r7, lr
	mov	r5, r12
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	lr, [sp, #4]                    @ 4-byte Spill
	str	r12, [sp, #8]                   @ 4-byte Spill
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	mov	r6, r5
	mov	lr, r7
	mov	r8, r3
	mov	r5, r4
	cmp	r1, #19
	bhi	.LBB0_7
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	movw	r12, #31129
	and	r3, lr, r6
	bic	r7, r8, r6
	movt	r12, #23170
	orr	r4, r7, r3
	b	.LBB0_12
.LBB0_7:                                @   in Loop: Header=BB0_5 Depth=1
	cmp	r1, #39
	bhi	.LBB0_9
@ %bb.8:                                @   in Loop: Header=BB0_5 Depth=1
	movw	r12, #60321
	eor	r3, lr, r6
	eor	r4, r3, r8
	movt	r12, #28377
	b	.LBB0_12
.LBB0_9:                                @   in Loop: Header=BB0_5 Depth=1
	cmp	r1, #59
	bhi	.LBB0_11
@ %bb.10:                               @   in Loop: Header=BB0_5 Depth=1
	orr	r7, r8, lr
	movw	r12, #48348
	and	r3, r8, lr
	and	r7, r7, r6
	orr	r4, r7, r3
	movt	r12, #36635
	b	.LBB0_12
.LBB0_11:                               @   in Loop: Header=BB0_5 Depth=1
	eor	r3, lr, r6
	movw	r12, #49622
	eor	r4, r3, r8
	movt	r12, #51810
.LBB0_12:                               @   in Loop: Header=BB0_5 Depth=1
	add	r2, r2, r5, ror #27
	ldr	r3, [r11, r1, lsl #2]
	add	r2, r2, r4
	add	r2, r2, r12
	add	r1, r1, #1
	add	r4, r2, r3
	ror	r7, r6, #2
	cmp	r1, #80
	mov	r2, r8
	mov	r3, lr
	bne	.LBB0_5
@ %bb.13:
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	add	r1, r8, r10
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	add	r2, lr, r9
	add	r3, r7, r3
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	add	r6, r4, r6
	str	r3, [r0, #8]
	add	r7, r5, r7
	stm	r0, {r6, r7}
	str	r2, [r0, #12]
	str	r1, [r0, #16]
	add	sp, sp, #336
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	sha1_init                       @ -- Begin function sha1_init
	.p2align	2
	.type	sha1_init,%function
	.code	32                              @ @sha1_init
sha1_init:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	movw	r12, #57840
	movw	r1, #43913
	movw	r2, #8961
	movw	lr, #21622
	movw	r3, #56574
	movt	r12, #50130
	movt	r2, #26437
	movt	r1, #61389
	movt	lr, #4146
	movt	r3, #39098
	str	r2, [r0]
	stmib	r0, {r1, r3, lr}
	str	r12, [r0, #16]
	pop	{r11, pc}
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
