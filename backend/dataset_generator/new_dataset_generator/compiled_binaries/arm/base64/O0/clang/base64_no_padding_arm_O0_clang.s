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
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        @ -- Begin function base64_encode_no_padding
	.p2align	2
	.type	base64_encode_no_padding,%function
	.code	32                              @ @base64_encode_no_padding
base64_encode_no_padding:
	.fnstart
@ %bb.0:
	.pad	#24
	sub	sp, sp, #24
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	movw	r0, #0
	str	r0, [sp, #8]
	movw	r0, #0
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bhs	.LBB0_12
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	ldrb	r0, [r0]
	lsl	r0, r0, #16
	str	r0, [sp]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bhs	.LBB0_4
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #4]
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	lsl	r1, r0, #8
	ldr	r0, [sp]
	orr	r0, r0, r1
	str	r0, [sp]
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #2
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bhs	.LBB0_6
@ %bb.5:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #4]
	add	r1, r1, #2
	add	r0, r0, r1
	ldrb	r1, [r0]
	ldr	r0, [sp]
	orr	r0, r0, r1
	str	r0, [sp]
.LBB0_6:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	lsr	r0, r0, #18
	and	r1, r0, #63
	ldr	r0, .LCPI0_1
.LPC0_1:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	add	r3, r2, #1
	str	r3, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp]
	lsr	r0, r0, #12
	and	r1, r0, #63
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	add	r3, r2, #1
	str	r3, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bhs	.LBB0_8
@ %bb.7:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	lsr	r0, r0, #6
	and	r1, r0, #63
	ldr	r0, .LCPI0_2
.LPC0_2:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	add	r3, r2, #1
	str	r3, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #2
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bhs	.LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	and	r1, r0, #63
	ldr	r0, .LCPI0_3
.LPC0_3:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	add	r3, r2, #1
	str	r3, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #3
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_12:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	add	r1, r0, r1
	movw	r0, #0
	strb	r0, [r1]
	add	sp, sp, #24
	bx	lr
	.p2align	2
@ %bb.13:
.LCPI0_0:
	.long	b64-(.LPC0_0+8)
.LCPI0_1:
	.long	b64-(.LPC0_1+8)
.LCPI0_2:
	.long	b64-(.LPC0_2+8)
.LCPI0_3:
	.long	b64-(.LPC0_3+8)
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
	.cantunwind
	.fnend
                                        @ -- End function
	.type	b64,%object                     @ @b64
	.section	.rodata,"a",%progbits
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym b64
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
