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
	.pad	#48
	sub	sp, sp, #48
	str	r0, [sp, #44]
	str	r1, [sp, #40]
	str	r2, [sp, #36]
	movw	r0, #0
	str	r0, [sp, #32]
	movw	r0, #0
	str	r0, [sp, #28]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	cmp	r0, r1
	bhs	.LBB0_12
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	cmp	r0, r1
	bhs	.LBB0_4
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #44]
	ldr	r1, [sp, #32]
	add	r2, r1, #1
	str	r2, [sp, #32]
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_5
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #24]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	cmp	r0, r1
	bhs	.LBB0_7
@ %bb.6:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #44]
	ldr	r1, [sp, #32]
	add	r2, r1, #1
	str	r2, [sp, #32]
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB0_8
.LBB0_7:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB0_8
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp, #20]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #40]
	cmp	r0, r1
	bhs	.LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #44]
	ldr	r1, [sp, #32]
	add	r2, r1, #1
	str	r2, [sp, #32]
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB0_11
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB0_11
.LBB0_11:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	lsl	r0, r0, #16
	ldr	r1, [sp, #20]
	lsl	r1, r1, #8
	add	r0, r0, r1
	ldr	r1, [sp, #16]
	add	r0, r0, r1
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	lsr	r0, r0, #18
	and	r1, r0, #63
	ldr	r0, .LCPI0_3
.LPC0_3:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	lsr	r0, r0, #12
	and	r1, r0, #63
	ldr	r0, .LCPI0_2
.LPC0_2:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	lsr	r0, r0, #6
	and	r1, r0, #63
	ldr	r0, .LCPI0_1
.LPC0_1:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	and	r1, r0, #63
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	add	r1, r1, r2
	strb	r0, [r1]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #48
	bx	lr
	.p2align	2
@ %bb.13:
.LCPI0_0:
	.long	b64url-(.LPC0_0+8)
.LCPI0_1:
	.long	b64url-(.LPC0_1+8)
.LCPI0_2:
	.long	b64url-(.LPC0_2+8)
.LCPI0_3:
	.long	b64url-(.LPC0_3+8)
.Lfunc_end0:
	.size	base64_encode_urlsafe, .Lfunc_end0-base64_encode_urlsafe
	.cantunwind
	.fnend
                                        @ -- End function
	.type	b64url,%object                  @ @b64url
	.section	.rodata,"a",%progbits
b64url:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	b64url, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym b64url
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
