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
	ldr	r2, [r1]
	add	r11, sp, #16
	ldr	r3, [r1, #4]
	rev	r2, r2
	ldr	r7, [r1, #8]
	str	r2, [sp, #16]
	rev	r2, r3
	ldr	r6, [r1, #12]
	str	r2, [sp, #20]
	rev	r2, r7
	ldr	r3, [r1, #16]
	str	r2, [sp, #24]
	rev	r2, r6
	str	r2, [sp, #28]
	rev	r2, r3
	ldr	r3, [r1, #20]
	str	r2, [sp, #32]
	rev	r2, r3
	ldr	r3, [r1, #24]
	str	r2, [sp, #36]
	rev	r2, r3
	ldr	r3, [r1, #28]
	str	r2, [sp, #40]
	rev	r2, r3
	ldr	r3, [r1, #32]
	str	r2, [sp, #44]
	rev	r2, r3
	str	r2, [sp, #48]
	ldr	r2, [r1, #36]
	ldr	r3, [r1, #40]
	rev	r2, r2
	ldr	r7, [r1, #44]
	str	r2, [sp, #52]
	rev	r2, r3
	ldr	r6, [r1, #48]
	str	r2, [sp, #56]
	rev	r2, r7
	str	r2, [sp, #60]
	rev	r2, r6
	str	r2, [sp, #64]
	ldr	r3, [r1, #56]
	ldr	r2, [r1, #60]
	ldr	r1, [r1, #52]
	ldr	r8, [r0, #12]
	rev	r1, r1
	str	r1, [sp, #68]
	rev	r1, r3
	ldr	r9, [r0, #16]
	str	r1, [sp, #72]
	rev	r1, r2
	ldm	r0, {r4, r12, lr}
	str	r1, [sp, #76]
	mov	r1, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
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
	bne	.LBB0_1
@ %bb.2:
	mov	r5, #0
	str	r9, [sp, #4]                    @ 4-byte Spill
	mov	r2, r9
	mov	r3, r8
	mov	r9, lr
	mov	r7, lr
	mov	r10, r12
	mov	r1, r12
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	r8, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_5
.LBB0_3:                                @   in Loop: Header=BB0_5 Depth=1
	movw	r12, #31129
	and	r3, lr, r6
	bic	r7, r8, r6
	movt	r12, #23170
	orr	r4, r7, r3
.LBB0_4:                                @   in Loop: Header=BB0_5 Depth=1
	add	r2, r2, r1, ror #27
	ldr	r3, [r11, r5, lsl #2]
	add	r2, r2, r4
	add	r2, r2, r12
	add	r5, r5, #1
	add	r4, r2, r3
	ror	r7, r6, #2
	cmp	r5, #80
	mov	r2, r8
	mov	r3, lr
	beq	.LBB0_11
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	mov	r6, r1
	mov	lr, r7
	mov	r8, r3
	mov	r1, r4
	cmp	r5, #19
	bls	.LBB0_3
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	cmp	r5, #39
	bhi	.LBB0_8
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	movw	r12, #60321
	eor	r3, lr, r6
	eor	r4, r3, r8
	movt	r12, #28377
	b	.LBB0_4
.LBB0_8:                                @   in Loop: Header=BB0_5 Depth=1
	cmp	r5, #59
	bhi	.LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_5 Depth=1
	orr	r7, r8, lr
	movw	r12, #48348
	and	r3, r8, lr
	and	r7, r7, r6
	orr	r4, r7, r3
	movt	r12, #36635
	b	.LBB0_4
.LBB0_10:                               @   in Loop: Header=BB0_5 Depth=1
	eor	r3, lr, r6
	movw	r12, #49622
	eor	r4, r3, r8
	movt	r12, #51810
	b	.LBB0_4
.LBB0_11:
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	add	r1, r1, r10
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	add	r7, r7, r9
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	add	r2, r8, r2
	add	r3, lr, r3
	stmib	r0, {r1, r7}
	add	r6, r4, r6
	str	r6, [r0]
	str	r3, [r0, #12]
	str	r2, [r0, #16]
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
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
