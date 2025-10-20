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
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r2
	orrs	r2, r2, r3
	beq	.LBB0_5
@ %bb.1:
	mov	r4, r3
	ldr	r8, [sp, #44]
	ldr	r9, [sp, #40]
	mov	r10, #0
	mov	r11, #1
	b	.LBB0_3
.LBB0_2:                                @   in Loop: Header=BB0_3 Depth=1
	umull	r0, r1, r6, r6
	mla	r1, r6, r7, r1
	mla	r1, r6, r7, r1
	lsrs	r4, r4, #1
	rrx	r5, r5
	orrs	r2, r5, r4
	beq	.LBB0_6
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r6, r2
	mov	r7, r3
	tst	r5, #1
	beq	.LBB0_2
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=1
	umull	r0, r1, r6, r11
	mla	r1, r6, r10, r1
	mla	r1, r7, r11, r1
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_uldivmod
	mov	r11, r2
	mov	r10, r3
	b	.LBB0_2
.LBB0_5:
	mov	r10, #0
	mov	r11, #1
.LBB0_6:
	mov	r0, r11
	mov	r1, r10
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
