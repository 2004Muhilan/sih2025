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
	.file	"sha256_compress.c"
	.globl	sha256_compress                 @ -- Begin function sha256_compress
	.p2align	2
	.type	sha256_compress,%function
	.code	32                              @ @sha256_compress
sha256_compress:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#332
	sub	sp, sp, #332
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	movw	r0, #0
	str	r0, [sp, #64]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #64]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r2, [sp, #64]
	ldr	r0, [r0, r2, lsl #2]
	add	r1, sp, #68
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #64]
	add	r0, r0, #1
	str	r0, [sp, #64]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #16
	str	r0, [sp, #60]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	cmp	r0, #64
	bge	.LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [sp, #60]
	add	r0, sp, #68
	add	r1, r0, r1, lsl #2
	ldr	r2, [r1, #-60]
	ror	r1, r2, #7
	eor	r1, r1, r2, ror #18
	eor	r1, r1, r2, lsr #3
	str	r1, [sp, #56]
	ldr	r1, [sp, #60]
	add	r1, r0, r1, lsl #2
	ldr	r2, [r1, #-8]
	ror	r1, r2, #17
	eor	r1, r1, r2, ror #19
	eor	r1, r1, r2, lsr #10
	str	r1, [sp, #52]
	ldr	r1, [sp, #60]
	ldr	r3, [sp, #56]
	add	r1, r0, r1, lsl #2
	ldr	r0, [r1, #-64]
	ldr	r2, [r1, #-28]
	add	r0, r0, r3
	add	r0, r0, r2
	ldr	r2, [sp, #52]
	add	r0, r0, r2
	str	r0, [r1]
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB0_5
.LBB0_8:
	ldr	r0, [r11, #-12]
	ldr	r0, [r0]
	str	r0, [sp, #48]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #4]
	str	r0, [sp, #44]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #8]
	str	r0, [sp, #40]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #12]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #16]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #20]
	str	r0, [sp, #28]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #24]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #28]
	str	r0, [sp, #20]
	movw	r0, #0
	str	r0, [sp, #16]
.LBB0_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #64
	bge	.LBB0_12
@ %bb.10:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, [sp, #32]
	ror	r0, r1, #6
	eor	r0, r0, r1, ror #11
	eor	r0, r0, r1, ror #25
	str	r0, [sp, #12]
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #28]
	and	r1, r3, r1
	ldr	r2, [sp, #24]
	bic	r2, r2, r3
	orr	r1, r1, r2
	add	r0, r0, r1
	movw	r1, #12184
	movt	r1, #17034
	add	r0, r0, r1
	ldr	r2, [sp, #16]
	add	r1, sp, #68
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	add	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, [sp, #48]
	lsr	r0, r0, #2
	ldr	r1, [sp, #48]
	lsl	r1, r1, #30
	orr	r0, r0, r1
	ldr	r1, [sp, #48]
	lsr	r1, r1, #13
	ldr	r2, [sp, #48]
	lsl	r2, r2, #19
	orr	r1, r1, r2
	eor	r0, r0, r1
	ldr	r1, [sp, #48]
	lsr	r1, r1, #22
	ldr	r2, [sp, #48]
	lsl	r2, r2, #10
	orr	r1, r1, r2
	eor	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #44]
	and	r1, r1, r2
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #40]
	and	r2, r2, r3
	eor	r1, r1, r2
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #40]
	and	r2, r2, r3
	eor	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp, #24]
	str	r0, [sp, #20]
	ldr	r0, [sp, #28]
	str	r0, [sp, #24]
	ldr	r0, [sp, #32]
	str	r0, [sp, #28]
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	str	r0, [sp, #32]
	ldr	r0, [sp, #40]
	str	r0, [sp, #36]
	ldr	r0, [sp, #44]
	str	r0, [sp, #40]
	ldr	r0, [sp, #48]
	str	r0, [sp, #44]
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	add	r0, r0, r1
	str	r0, [sp, #48]
@ %bb.11:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB0_9
.LBB0_12:
	ldr	r2, [sp, #48]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1]
	add	r0, r0, r2
	str	r0, [r1]
	ldr	r2, [sp, #44]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #4]
	add	r0, r0, r2
	str	r0, [r1, #4]
	ldr	r2, [sp, #40]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #8]
	add	r0, r0, r2
	str	r0, [r1, #8]
	ldr	r2, [sp, #36]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #12]
	add	r0, r0, r2
	str	r0, [r1, #12]
	ldr	r2, [sp, #32]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #16]
	add	r0, r0, r2
	str	r0, [r1, #16]
	ldr	r2, [sp, #28]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #20]
	add	r0, r0, r2
	str	r0, [r1, #20]
	ldr	r2, [sp, #24]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #24]
	add	r0, r0, r2
	str	r0, [r1, #24]
	ldr	r2, [sp, #20]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #28]
	add	r0, r0, r2
	str	r0, [r1, #28]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
