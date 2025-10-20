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
	.file	"ecc_scalar_multiplication.c"
	.globl	ecc_scalar_mult                 @ -- Begin function ecc_scalar_mult
	.p2align	2
	.type	ecc_scalar_mult,%function
	.code	32                              @ @ecc_scalar_mult
ecc_scalar_mult:
	.fnstart
@ %bb.0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#48
	sub	sp, sp, #48
	mov	r5, r3
	mov	r6, r2
	ldr	r2, [r11, #28]
	ldr	r1, [r11, #24]
	ldr	r12, [r11, #20]
	ldr	r3, [r11, #16]
	ldr	lr, [r11, #12]
	ldr	r4, [r11, #8]
	str	r6, [sp, #32]
	str	r5, [sp, #36]
	str	r4, [sp, #40]
	str	lr, [sp, #44]
	str	r12, [sp, #28]
	str	r3, [sp, #24]
	str	r2, [sp, #20]
	str	r1, [sp, #16]
	movw	r1, #0
	movw	r2, #16
	and	r1, r1, #255
	bl	memset
	ldr	r0, [sp, #32]
	str	r0, [sp]
	ldr	r0, [sp, #36]
	str	r0, [sp, #4]
	ldr	r0, [sp, #40]
	str	r0, [sp, #8]
	ldr	r0, [sp, #44]
	str	r0, [sp, #12]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	orr	r0, r0, r1
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                @   in Loop: Header=BB0_1 Depth=1
	ldrb	r0, [sp, #24]
	tst	r0, #1
	beq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_4
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	lsrs	r1, r1, #1
	rrx	r0, r0
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	b	.LBB0_1
.LBB0_5:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end0:
	.size	ecc_scalar_mult, .Lfunc_end0-ecc_scalar_mult
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
