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
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               @ -- Begin function base64_char_value
	.p2align	2
	.type	base64_char_value,%function
	.code	32                              @ @base64_char_value
base64_char_value:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	strb	r0, [sp, #3]
	ldrb	r0, [sp, #3]
	cmp	r0, #65
	blt	.LBB0_3
@ %bb.1:
	ldrb	r0, [sp, #3]
	cmp	r0, #90
	bgt	.LBB0_3
@ %bb.2:
	ldrb	r0, [sp, #3]
	sub	r0, r0, #65
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_3:
	ldrb	r0, [sp, #3]
	cmp	r0, #97
	blt	.LBB0_6
@ %bb.4:
	ldrb	r0, [sp, #3]
	cmp	r0, #122
	bgt	.LBB0_6
@ %bb.5:
	ldrb	r0, [sp, #3]
	sub	r0, r0, #97
	add	r0, r0, #26
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_6:
	ldrb	r0, [sp, #3]
	cmp	r0, #48
	blt	.LBB0_9
@ %bb.7:
	ldrb	r0, [sp, #3]
	cmp	r0, #57
	bgt	.LBB0_9
@ %bb.8:
	ldrb	r0, [sp, #3]
	sub	r0, r0, #48
	add	r0, r0, #52
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_9:
	ldrb	r0, [sp, #3]
	cmp	r0, #43
	bne	.LBB0_11
@ %bb.10:
	movw	r0, #62
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_11:
	ldrb	r0, [sp, #3]
	cmp	r0, #47
	bne	.LBB0_13
@ %bb.12:
	movw	r0, #63
	str	r0, [sp, #4]
	b	.LBB0_14
.LBB0_13:
	mvn	r0, #0
	str	r0, [sp, #4]
.LBB0_14:
	ldr	r0, [sp, #4]
	add	sp, sp, #8
	bx	lr
.Lfunc_end0:
	.size	base64_char_value, .Lfunc_end0-base64_char_value
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	base64_decode_standard          @ -- Begin function base64_decode_standard
	.p2align	2
	.type	base64_decode_standard,%function
	.code	32                              @ @base64_decode_standard
base64_decode_standard:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	ldr	r1, [r11, #-12]
	movw	r0, #0
	str	r0, [r1]
	movw	r0, #0
	str	r0, [sp, #16]
.LBB1_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_5 Depth 2
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #16]
	add	r0, r0, r1
	ldrb	r1, [r0]
	movw	r0, #0
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB1_3
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #16]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #61
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
.LBB1_3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_10
@ %bb.4:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, #0
	str	r0, [sp, #8]
.LBB1_5:                                @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #8]
	cmp	r0, #4
	bge	.LBB1_8
@ %bb.6:                                @   in Loop: Header=BB1_5 Depth=2
	ldr	r0, [sp, #12]
	lsl	r0, r0, #6
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #8]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	bl	base64_char_value
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	orr	r0, r0, r1
	str	r0, [sp, #12]
@ %bb.7:                                @   in Loop: Header=BB1_5 Depth=2
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB1_5
.LBB1_8:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #12]
	lsr	r0, r0, #16
	and	r0, r0, #255
	ldr	r1, [r11, #-8]
	ldr	r12, [r11, #-12]
	ldr	r2, [r12]
	add	r3, r2, #1
	str	r3, [r12]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	lsr	r0, r0, #8
	and	r0, r0, #255
	ldr	r1, [r11, #-8]
	ldr	r12, [r11, #-12]
	ldr	r2, [r12]
	add	r3, r2, #1
	str	r3, [r12]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	and	r0, r0, #255
	ldr	r1, [r11, #-8]
	ldr	r12, [r11, #-12]
	ldr	r2, [r12]
	add	r3, r2, #1
	str	r3, [r12]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.9:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #4
	str	r0, [sp, #16]
	b	.LBB1_1
.LBB1_10:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	base64_decode_standard, .Lfunc_end1-base64_decode_standard
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym base64_char_value
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
