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
	.file	"custom_sha1.c"
	.globl	sha1_transform                  @ -- Begin function sha1_transform
	.p2align	2
	.type	sha1_transform,%function
	.code	32                              @ @sha1_transform
sha1_transform:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#372
	sub	sp, sp, #372
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0]
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #8]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #12]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #16]
	str	r0, [r11, #-36]
	movw	r0, #0
	str	r0, [sp, #20]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #16
	bge	.LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r2, [sp, #20]
	ldr	r0, [r0, r2, lsl #2]
	rev	r0, r0
	add	r1, sp, #24
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #16
	str	r0, [sp, #16]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	cmp	r0, #80
	bge	.LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [sp, #16]
	add	r0, sp, #24
	add	r1, r0, r1, lsl #2
	ldr	r2, [r1, #-64]
	ldr	r3, [r1, #-56]
	ldr	r12, [r1, #-32]
	ldr	r0, [r1, #-12]
	eor	r0, r0, r12
	eor	r0, r0, r3
	eor	r0, r0, r2
	ror	r0, r0, #31
	str	r0, [r1]
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
	b	.LBB0_5
.LBB0_8:
	movw	r0, #0
	str	r0, [sp, #12]
.LBB0_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #80
	bge	.LBB0_21
@ %bb.10:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #20
	bge	.LBB0_12
@ %bb.11:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-28]
	and	r0, r0, r1
	ldr	r1, [r11, #-24]
	mvn	r2, #0
	eor	r1, r1, r2
	ldr	r2, [r11, #-32]
	and	r1, r1, r2
	orr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_3
	str	r0, [sp, #4]
	b	.LBB0_19
.LBB0_12:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #40
	bge	.LBB0_14
@ %bb.13:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-28]
	eor	r0, r0, r1
	ldr	r1, [r11, #-32]
	eor	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_2
	str	r0, [sp, #4]
	b	.LBB0_18
.LBB0_14:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #60
	bge	.LBB0_16
@ %bb.15:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-28]
	and	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-32]
	and	r1, r1, r2
	orr	r0, r0, r1
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-32]
	and	r1, r1, r2
	orr	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_1
	str	r0, [sp, #4]
	b	.LBB0_17
.LBB0_16:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-28]
	eor	r0, r0, r1
	ldr	r1, [r11, #-32]
	eor	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_0
	str	r0, [sp, #4]
.LBB0_17:                               @   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_18
.LBB0_18:                               @   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_19
.LBB0_19:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r1, [r11, #-20]
	ldr	r0, [sp, #8]
	add	r0, r0, r1, ror #27
	ldr	r1, [r11, #-36]
	add	r0, r0, r1
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	ldr	r2, [sp, #12]
	add	r1, sp, #24
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [r11, #-32]
	str	r0, [r11, #-36]
	ldr	r0, [r11, #-28]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-24]
	lsl	r0, r0, #30
	ldr	r1, [r11, #-24]
	lsr	r1, r1, #2
	orr	r0, r0, r1
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-20]
	str	r0, [r11, #-24]
	ldr	r0, [sp]
	str	r0, [r11, #-20]
@ %bb.20:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_9
.LBB0_21:
	ldr	r2, [r11, #-20]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1]
	add	r0, r0, r2
	str	r0, [r1]
	ldr	r2, [r11, #-24]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #4]
	add	r0, r0, r2
	str	r0, [r1, #4]
	ldr	r2, [r11, #-28]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #8]
	add	r0, r0, r2
	str	r0, [r1, #8]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #12]
	add	r0, r0, r2
	str	r0, [r1, #12]
	ldr	r2, [r11, #-36]
	ldr	r1, [r11, #-12]
	ldr	r0, [r1, #16]
	add	r0, r0, r2
	str	r0, [r1, #16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	2
@ %bb.22:
.LCPI0_0:
	.long	3395469782                      @ 0xca62c1d6
.LCPI0_1:
	.long	2400959708                      @ 0x8f1bbcdc
.LCPI0_2:
	.long	1859775393                      @ 0x6ed9eba1
.LCPI0_3:
	.long	1518500249                      @ 0x5a827999
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	sha1_init                       @ -- Begin function sha1_init
	.p2align	2
	.type	sha1_init,%function
	.code	32                              @ @sha1_init
sha1_init:
	.fnstart
@ %bb.0:
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_4
	str	r0, [r1]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_3
	str	r0, [r1, #4]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_2
	str	r0, [r1, #8]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_1
	str	r0, [r1, #12]
	ldr	r1, [sp]
	ldr	r0, .LCPI1_0
	str	r0, [r1, #16]
	add	sp, sp, #4
	bx	lr
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	3285377520                      @ 0xc3d2e1f0
.LCPI1_1:
	.long	271733878                       @ 0x10325476
.LCPI1_2:
	.long	2562383102                      @ 0x98badcfe
.LCPI1_3:
	.long	4023233417                      @ 0xefcdab89
.LCPI1_4:
	.long	1732584193                      @ 0x67452301
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
