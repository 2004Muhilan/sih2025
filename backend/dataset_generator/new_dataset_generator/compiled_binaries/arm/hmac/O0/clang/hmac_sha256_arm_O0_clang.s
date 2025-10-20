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
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     @ -- Begin function hmac_sha256
	.p2align	2
	.type	hmac_sha256,%function
	.code	32                              @ @hmac_sha256
hmac_sha256:
	.fnstart
@ %bb.0:
	.pad	#160
	sub	sp, sp, #160
	ldr	r12, [sp, #160]
	str	r0, [sp, #156]
	str	r1, [sp, #152]
	str	r2, [sp, #148]
	str	r3, [sp, #144]
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #64
	bhs	.LBB0_10
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #152]
	cmp	r0, r1
	bhs	.LBB0_4
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #156]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB0_5
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB0_5
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	eor	r0, r0, #54
	ldr	r2, [sp, #12]
	add	r1, sp, #80
	add	r1, r1, r2
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #152]
	cmp	r0, r1
	bhs	.LBB0_7
@ %bb.6:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #156]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB0_8
.LBB0_7:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB0_8
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]                        @ 4-byte Reload
	eor	r0, r0, #92
	ldr	r2, [sp, #12]
	add	r1, sp, #16
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.9:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_1
.LBB0_10:
	movw	r0, #0
	str	r0, [sp, #8]
.LBB0_11:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #32
	bge	.LBB0_14
@ %bb.12:                               @   in Loop: Header=BB0_11 Depth=1
	ldr	r1, [sp, #8]
	add	r0, sp, #80
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r2, [sp, #8]
	add	r1, sp, #16
	add	r1, r1, r2
	ldrb	r1, [r1]
	eor	r0, r0, r1
	ldr	r1, [sp, #160]
	ldr	r2, [sp, #8]
	add	r1, r1, r2
	strb	r0, [r1]
@ %bb.13:                               @   in Loop: Header=BB0_11 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_11
.LBB0_14:
	add	sp, sp, #160
	bx	lr
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
