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
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 @ -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,%function
	.code	32                              @ @aes_mix_columns
aes_mix_columns:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#8
	sub	sp, sp, #8
	mov	r8, #0
	mov	r10, #27
	str	r0, [sp]                        @ 4-byte Spill
.LBB0_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_2 Depth 2
                                        @     Child Loop BB0_4 Depth 2
                                        @     Child Loop BB0_6 Depth 2
                                        @     Child Loop BB0_8 Depth 2
                                        @     Child Loop BB0_10 Depth 2
                                        @     Child Loop BB0_12 Depth 2
                                        @     Child Loop BB0_14 Depth 2
                                        @     Child Loop BB0_16 Depth 2
	ldr	r9, [sp]                        @ 4-byte Reload
	mov	r7, #2
	mov	r6, #0
	ldrb	r5, [r9, r8, lsl #2]!
	ldrb	r0, [r9, #1]
	ldrb	r11, [r9, #3]
	mov	r3, r5
	ldrb	r1, [r9, #2]
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r1, #8
.LBB0_2:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r4, r3
	lsl	r2, r3, #1
	cmp	r4, #0
	eormi	r2, r10, r3, lsl #1
	tst	r7, #1
	eorne	r6, r6, r3
	subs	r1, r1, #1
	lsr	r7, r7, #1
	mov	r3, r2
	bne	.LBB0_2
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	mov	r1, #3
	mov	r7, #0
	mov	r3, #8
	mov	lr, r0
	mov	r2, r0
.LBB0_4:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r12, r2
	lsl	r4, r2, #1
	cmp	r12, #0
	eormi	r4, r10, r2, lsl #1
	tst	r1, #1
	eorne	r7, r7, r2
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r2, r4
	bne	.LBB0_4
@ %bb.5:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	r3, #8
	mov	r12, lr
	mov	r2, lr
	eor	r1, r11, r0
	eor	r1, r1, r6
	mov	r6, #0
	eor	r1, r1, r7
	strb	r1, [r9]
	mov	r1, #2
.LBB0_6:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r4, r2
	lsl	r7, r2, #1
	cmp	r4, #0
	eormi	r7, r10, r2, lsl #1
	tst	r1, #1
	eorne	r6, r6, r2
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r2, r7
	bne	.LBB0_6
@ %bb.7:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	lr, [sp, #4]                    @ 4-byte Reload
	mov	r1, #3
	mov	r7, #0
	mov	r3, #8
	mov	r2, lr
.LBB0_8:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r0, r2
	lsl	r4, r2, #1
	cmp	r0, #0
	eormi	r4, r10, r2, lsl #1
	tst	r1, #1
	eorne	r7, r7, r2
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r2, r4
	bne	.LBB0_8
@ %bb.9:                                @   in Loop: Header=BB0_1 Depth=1
	eor	r0, r11, r5
	mov	r1, #2
	eor	r0, r0, r6
	mov	r6, #0
	mov	r3, #8
	mov	r2, lr
	eor	r0, r0, r7
	strb	r0, [r9, #1]
.LBB0_10:                               @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r7, r2
	lsl	r0, r2, #1
	cmp	r7, #0
	eormi	r0, r10, r2, lsl #1
	tst	r1, #1
	eorne	r6, r6, r2
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r2, r0
	bne	.LBB0_10
@ %bb.11:                               @   in Loop: Header=BB0_1 Depth=1
	mov	r1, #3
	mov	r7, #0
	mov	r3, #8
	mov	r2, r11
.LBB0_12:                               @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r4, r2
	lsl	r0, r2, #1
	cmp	r4, #0
	eormi	r0, r10, r2, lsl #1
	tst	r1, #1
	eorne	r7, r7, r2
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r2, r0
	bne	.LBB0_12
@ %bb.13:                               @   in Loop: Header=BB0_1 Depth=1
	eor	r0, r12, r5
	mov	r1, #3
	eor	r0, r0, r6
	mov	r6, #0
	mov	r3, #8
	eor	r0, r0, r7
	strb	r0, [r9, #2]
.LBB0_14:                               @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r2, r5
	lsl	r0, r5, #1
	cmp	r2, #0
	eormi	r0, r10, r5, lsl #1
	tst	r1, #1
	eorne	r6, r6, r5
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r5, r0
	bne	.LBB0_14
@ %bb.15:                               @   in Loop: Header=BB0_1 Depth=1
	mov	r1, #2
	mov	r5, #0
	mov	r3, #8
.LBB0_16:                               @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	sxtb	r2, r11
	lsl	r0, r11, #1
	cmp	r2, #0
	eormi	r0, r10, r11, lsl #1
	tst	r1, #1
	eorne	r5, r5, r11
	subs	r3, r3, #1
	lsr	r1, r1, #1
	mov	r11, r0
	bne	.LBB0_16
@ %bb.17:                               @   in Loop: Header=BB0_1 Depth=1
	eor	r0, lr, r12
	add	r8, r8, #1
	eor	r0, r0, r6
	cmp	r8, #4
	eor	r0, r0, r5
	strb	r0, [r9, #3]
	bne	.LBB0_1
@ %bb.18:
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
