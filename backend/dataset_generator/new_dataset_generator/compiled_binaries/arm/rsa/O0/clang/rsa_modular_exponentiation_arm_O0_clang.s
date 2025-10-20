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
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     @ -- Begin function rsa_mod_exp
	.p2align	2
	.type	rsa_mod_exp,%function
	.code	32                              @ @rsa_mod_exp
rsa_mod_exp:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#32
	sub	sp, sp, #32
	mov	r12, r1
	mov	lr, r0
	ldr	r1, [r11, #12]
	ldr	r0, [r11, #8]
	str	lr, [r11, #-8]
	str	r12, [r11, #-4]
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #1
	str	r0, [sp]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	bl	__aeabi_uldivmod
	str	r3, [r11, #-4]
	str	r2, [r11, #-8]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	orr	r0, r0, r1
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                @   in Loop: Header=BB0_1 Depth=1
	ldrb	r0, [sp, #16]
	tst	r0, #1
	beq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
	ldr	r2, [r11, #-8]
	ldr	r12, [r11, #-4]
	umull	r0, lr, r3, r2
	mla	r3, r3, r12, lr
	mla	r1, r1, r2, r3
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	bl	__aeabi_uldivmod
	str	r3, [sp, #4]
	str	r2, [sp]
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-4]
	umull	r0, r3, r1, r1
	mla	r3, r1, r2, r3
	mla	r1, r1, r2, r3
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	bl	__aeabi_uldivmod
	str	r3, [r11, #-4]
	str	r2, [r11, #-8]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	lsrs	r1, r1, #1
	rrx	r0, r0
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	b	.LBB0_1
.LBB0_5:
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
