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
	.file	"sha1_compress.c"
	.globl	sha1_compress                   @ -- Begin function sha1_compress
	.p2align	2
	.type	sha1_compress,%function
	.code	32                              @ @sha1_compress
sha1_compress:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#340
	sub	sp, sp, #340
	add	r11, sp, #16
	mov	r2, r11
	ldm	r1!, {r3, r4, r5, r6, r7}
	stm	r2!, {r3, r4, r5, r6, r7}
	ldm	r1!, {r3, r4, r5, r6, r7}
	stm	r2!, {r3, r4, r5, r6, r7}
	ldm	r1, {r3, r4, r5, r6, r7, r12}
	stm	r2, {r3, r4, r5, r6, r7, r12}
	mov	r1, #0
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	add	r2, r11, r1
	ldr	r3, [r2, #8]
	ldr	r7, [r2, #32]
	ldr	r6, [r2, #52]
	ldr	r5, [r11, r1]
	eor	r7, r7, r6
	eor	r3, r7, r3
	eor	r3, r3, r5
	ror	r3, r3, #31
	str	r3, [r2, #64]
	add	r1, r1, #4
	cmp	r1, #256
	bne	.LBB0_1
@ %bb.2:
	ldm	r0, {r4, r6}
	add	r10, r0, #8
	ldm	r10, {r2, r9, r10}
	mov	r5, #0
	mov	r1, r10
	mov	r7, r9
	stmib	sp, {r2, r6}                    @ 8-byte Folded Spill
	str	r4, [sp, #12]                   @ 4-byte Spill
	b	.LBB0_5
.LBB0_3:                                @   in Loop: Header=BB0_5 Depth=1
	and	r2, r8, r6
	bic	r7, r3, r6
	orr	r2, r7, r2
	movw	r12, #31129
	movt	r12, #23170
.LBB0_4:                                @   in Loop: Header=BB0_5 Depth=1
	add	r1, r1, lr, ror #27
	ldr	r4, [r11, r5, lsl #2]
	add	r1, r1, r2
	add	r1, r1, r12
	add	r4, r1, r4
	add	r5, r5, #1
	ror	r2, r6, #2
	cmp	r5, #80
	mov	r1, r3
	mov	r7, r8
	mov	r6, lr
	beq	.LBB0_11
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	mov	lr, r4
	mov	r8, r2
	mov	r3, r7
	cmp	r5, #19
	bls	.LBB0_3
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	cmp	r5, #39
	bhi	.LBB0_8
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	eor	r2, r8, r6
	eor	r2, r2, r3
	movw	r12, #60321
	movt	r12, #28377
	b	.LBB0_4
.LBB0_8:                                @   in Loop: Header=BB0_5 Depth=1
	cmp	r5, #59
	bhi	.LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_5 Depth=1
	and	r2, r3, r8
	orr	r7, r3, r8
	and	r7, r7, r6
	orr	r2, r7, r2
	movw	r12, #48348
	movt	r12, #36635
	b	.LBB0_4
.LBB0_10:                               @   in Loop: Header=BB0_5 Depth=1
	eor	r2, r8, r6
	eor	r2, r2, r3
	movw	r12, #49622
	movt	r12, #51810
	b	.LBB0_4
.LBB0_11:
	add	r1, r3, r10
	add	r3, r8, r9
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	add	r2, r2, r7
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	add	r7, lr, r7
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	add	r6, r4, r6
	stm	r0, {r6, r7}
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	str	r1, [r0, #16]
	add	sp, sp, #340
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	sha1_compress, .Lfunc_end0-sha1_compress
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
