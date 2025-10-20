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
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#40
	sub	sp, sp, #40
	str	r0, [r11, #-4]
	movw	r0, #0
	str	r0, [r11, #-8]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-8]
	cmp	r0, #4
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	lsl	r1, r1, #2
	add	r0, r0, r1
	str	r0, [r11, #-12]
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0]
	strb	r0, [r11, #-13]
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0, #1]
	strb	r0, [r11, #-14]
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0, #2]
	strb	r0, [r11, #-15]
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0, #3]
	strb	r0, [r11, #-16]
	movw	r1, #2
	ldrb	r0, [r11, #-13]
	and	r1, r1, #255
	bl	gf_mul
	and	r0, r0, #255
	str	r0, [sp]                        @ 4-byte Spill
	movw	r1, #3
	ldrb	r0, [r11, #-14]
	and	r1, r1, #255
	bl	gf_mul
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldrb	r1, [r11, #-15]
	eor	r0, r0, r1
	ldrb	r1, [r11, #-16]
	eor	r0, r0, r1
	ldr	r1, [r11, #-12]
	strb	r0, [r1]
	ldrb	r0, [r11, #-13]
	str	r0, [sp, #4]                    @ 4-byte Spill
	movw	r1, #2
	ldrb	r0, [r11, #-14]
	and	r1, r1, #255
	bl	gf_mul
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	movw	r1, #3
	ldrb	r0, [r11, #-15]
	and	r1, r1, #255
	bl	gf_mul
	mov	r1, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldrb	r1, [r11, #-16]
	eor	r0, r0, r1
	ldr	r1, [r11, #-12]
	strb	r0, [r1, #1]
	ldrb	r0, [r11, #-13]
	ldrb	r1, [r11, #-14]
	eor	r0, r0, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	movw	r1, #2
	ldrb	r0, [r11, #-15]
	and	r1, r1, #255
	bl	gf_mul
	mov	r1, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	movw	r1, #3
	ldrb	r0, [r11, #-16]
	and	r1, r1, #255
	bl	gf_mul
	mov	r1, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldr	r1, [r11, #-12]
	strb	r0, [r1, #2]
	movw	r1, #3
	ldrb	r0, [r11, #-13]
	and	r1, r1, #255
	bl	gf_mul
	and	r0, r0, #255
	ldrb	r1, [r11, #-14]
	eor	r0, r0, r1
	ldrb	r1, [r11, #-15]
	eor	r0, r0, r1
	str	r0, [sp, #20]                   @ 4-byte Spill
	movw	r1, #2
	ldrb	r0, [r11, #-16]
	and	r1, r1, #255
	bl	gf_mul
	mov	r1, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	and	r1, r1, #255
	eor	r0, r0, r1
	ldr	r1, [r11, #-12]
	strb	r0, [r1, #3]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB0_1
.LBB0_4:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	2                               @ -- Begin function gf_mul
	.type	gf_mul,%function
	.code	32                              @ @gf_mul
gf_mul:
	.fnstart
@ %bb.0:
	.pad	#12
	sub	sp, sp, #12
	strb	r0, [sp, #11]
	strb	r1, [sp, #10]
	movw	r0, #0
	strb	r0, [sp, #9]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #8
	bge	.LBB1_8
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldrb	r0, [sp, #10]
	and	r0, r0, #1
	cmp	r0, #0
	beq	.LBB1_4
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldrb	r1, [sp, #11]
	ldrb	r0, [sp, #9]
	eor	r0, r0, r1
	strb	r0, [sp, #9]
.LBB1_4:                                @   in Loop: Header=BB1_1 Depth=1
	ldrb	r0, [sp, #11]
	and	r0, r0, #128
	strb	r0, [sp, #3]
	ldrb	r0, [sp, #11]
	lsl	r0, r0, #1
	strb	r0, [sp, #11]
	ldrsb	r0, [sp, #3]
	cmp	r0, #0
	beq	.LBB1_6
@ %bb.5:                                @   in Loop: Header=BB1_1 Depth=1
	ldrb	r0, [sp, #11]
	eor	r0, r0, #27
	strb	r0, [sp, #11]
.LBB1_6:                                @   in Loop: Header=BB1_1 Depth=1
	ldrb	r0, [sp, #10]
	asr	r0, r0, #1
	strb	r0, [sp, #10]
@ %bb.7:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB1_1
.LBB1_8:
	ldrb	r0, [sp, #9]
	add	sp, sp, #12
	bx	lr
.Lfunc_end1:
	.size	gf_mul, .Lfunc_end1-gf_mul
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym gf_mul
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
