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
	.file	"base64_encode_urlsafe.c"
	.globl	base64_encode_urlsafe           @ -- Begin function base64_encode_urlsafe
	.p2align	2
	.type	base64_encode_urlsafe,%function
	.code	32                              @ @base64_encode_urlsafe
base64_encode_urlsafe:
	.fnstart
@ %bb.0:
	cmp	r1, #0
	bxeq	lr
.LBB0_1:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	ldr	r12, .LCPI0_0
	add	r2, r2, #1
	mov	r7, #0
.LPC0_0:
	add	r12, pc, r12
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	add	r4, r7, #1
	cmp	r4, r1
	bhs	.LBB0_4
@ %bb.3:                                @   in Loop: Header=BB0_2 Depth=1
	ldrb	lr, [r0, r4]
	add	r4, r7, #2
	b	.LBB0_5
.LBB0_4:                                @   in Loop: Header=BB0_2 Depth=1
	mov	lr, #0
.LBB0_5:                                @   in Loop: Header=BB0_2 Depth=1
	ldrb	r5, [r0, r7]
	mov	r6, #0
	cmp	r4, r1
	bhs	.LBB0_7
@ %bb.6:                                @   in Loop: Header=BB0_2 Depth=1
	ldrb	r6, [r0, r4]
	add	r7, r4, #1
	b	.LBB0_8
.LBB0_7:                                @   in Loop: Header=BB0_2 Depth=1
	mov	r7, r4
.LBB0_8:                                @   in Loop: Header=BB0_2 Depth=1
	lsl	r3, lr, #8
	orr	r4, r6, lr, lsl #8
	and	r6, r6, #63
	orr	r3, r3, r5, lsl #16
	ldrb	r5, [r12, r5, lsr #2]
	cmp	r7, r1
	ldrb	r6, [r12, r6]
	ubfx	r3, r3, #12, #6
	ldrb	r3, [r12, r3]
	ubfx	r4, r4, #6, #6
	ldrb	r4, [r12, r4]
	strb	r6, [r2, #2]
	strb	r5, [r2, #-1]
	strb	r4, [r2, #1]
	strb	r3, [r2]
	add	r2, r2, #4
	blo	.LBB0_2
@ %bb.9:
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
	.p2align	2
@ %bb.10:
.LCPI0_0:
	.long	b64url-(.LPC0_0+8)
.Lfunc_end0:
	.size	base64_encode_urlsafe, .Lfunc_end0-base64_encode_urlsafe
	.cantunwind
	.fnend
                                        @ -- End function
	.type	b64url,%object                  @ @b64url
	.section	.rodata.str1.1,"aMS",%progbits,1
b64url:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	b64url, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 3	@ Tag_ABI_optimization_goals
