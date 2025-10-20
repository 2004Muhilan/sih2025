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
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r12, #0
	cmp	r1, #0
	mov	r8, #0
	beq	.LBB0_7
@ %bb.1:
	ldr	lr, .LCPI0_0
	mov	r3, #0
.LPC0_0:
	add	lr, pc, lr
	b	.LBB0_3
.LBB0_2:                                @   in Loop: Header=BB0_3 Depth=1
	and	r5, r5, #63
	add	r8, r4, #1
	ldrb	r5, [lr, r5]
	strb	r5, [r2, r4]
	add	r3, r3, #3
	cmp	r3, r1
	bhs	.LBB0_7
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	ldrb	r4, [r0, r3]
	add	r9, r3, #1
	cmp	r9, r1
	add	r10, r3, #2
	mov	r7, r2
	lsl	r5, r4, #16
	addlo	r4, r0, r3
	ldrblo	r4, [r4, #1]
	orrlo	r5, r5, r4, lsl #8
	cmp	r10, r1
	addlo	r4, r0, r3
	ldrblo	r4, [r4, #2]
	orrlo	r5, r5, r4
	cmp	r9, r1
	ldrb	r4, [lr, r5, lsr #18]
	ubfx	r6, r5, #12, #6
	ldrb	r6, [lr, r6]
	strb	r4, [r7, r8]!
	add	r4, r8, #2
	strb	r6, [r7, #1]
	bhs	.LBB0_5
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=1
	ubfx	r6, r5, #6, #6
	ldrb	r6, [lr, r6]
	strb	r6, [r2, r4]
	add	r4, r8, #3
.LBB0_5:                                @   in Loop: Header=BB0_3 Depth=1
	cmp	r10, r1
	blo	.LBB0_2
@ %bb.6:                                @   in Loop: Header=BB0_3 Depth=1
	mov	r8, r4
	add	r3, r3, #3
	cmp	r3, r1
	blo	.LBB0_3
.LBB0_7:
	strb	r12, [r2, r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.p2align	2
@ %bb.8:
.LCPI0_0:
	.long	b64-(.LPC0_0+8)
.Lfunc_end0:
	.size	base64_encode_no_padding, .Lfunc_end0-base64_encode_no_padding
	.cantunwind
	.fnend
                                        @ -- End function
	.type	b64,%object                     @ @b64
	.section	.rodata.str1.1,"aMS",%progbits,1
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
